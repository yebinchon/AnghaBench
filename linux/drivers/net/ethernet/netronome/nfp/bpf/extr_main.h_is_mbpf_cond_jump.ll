; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.h_is_mbpf_cond_jump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.h_is_mbpf_cond_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_insn_meta = type { i32 }

@BPF_JA = common dso_local global i64 0, align 8
@BPF_EXIT = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_insn_meta*)* @is_mbpf_cond_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mbpf_cond_jump(%struct.nfp_insn_meta* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_insn_meta*, align 8
  %4 = alloca i64, align 8
  store %struct.nfp_insn_meta* %0, %struct.nfp_insn_meta** %3, align 8
  %5 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %6 = call i64 @is_mbpf_jmp32(%struct.nfp_insn_meta* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %11 = call i32 @is_mbpf_jmp64(%struct.nfp_insn_meta* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %9
  %15 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %16 = call i64 @mbpf_op(%struct.nfp_insn_meta* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BPF_JA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @BPF_EXIT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @BPF_CALL, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %14
  %29 = phi i1 [ false, %20 ], [ false, %14 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %13, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @is_mbpf_jmp32(%struct.nfp_insn_meta*) #1

declare dso_local i32 @is_mbpf_jmp64(%struct.nfp_insn_meta*) #1

declare dso_local i64 @mbpf_op(%struct.nfp_insn_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
