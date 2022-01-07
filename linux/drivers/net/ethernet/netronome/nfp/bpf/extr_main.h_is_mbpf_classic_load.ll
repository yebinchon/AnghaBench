; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.h_is_mbpf_classic_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.h_is_mbpf_classic_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_insn_meta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BPF_LD = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i64 0, align 8
@BPF_IND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_insn_meta*)* @is_mbpf_classic_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mbpf_classic_load(%struct.nfp_insn_meta* %0) #0 {
  %2 = alloca %struct.nfp_insn_meta*, align 8
  %3 = alloca i32, align 4
  store %struct.nfp_insn_meta* %0, %struct.nfp_insn_meta** %2, align 8
  %4 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @BPF_CLASS(i32 %8)
  %10 = load i64, i64* @BPF_LD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @BPF_MODE(i32 %13)
  %15 = load i64, i64* @BPF_ABS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @BPF_MODE(i32 %18)
  %20 = load i64, i64* @BPF_IND, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ true, %12 ], [ %21, %17 ]
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i1 [ false, %1 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i64 @BPF_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
