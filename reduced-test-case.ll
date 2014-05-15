target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386---elf"

define void @test() {
  %tmp = tail call i64 asm "movl %fs:${1:a}, ${0:k}", "=q,irm,~{dirflag},~{fpsr},~{flags}"(i64 0)
  unreachable
}
