; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sriov_eqe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sriov_eqe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%union.event_ring_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unknown sriov eqe event 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32, %union.event_ring_data*, i32)* @qed_sriov_eqe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sriov_eqe_event(%struct.qed_hwfn* %0, i32 %1, i32 %2, %union.event_ring_data* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.event_ring_data*, align 8
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.event_ring_data* %3, %union.event_ring_data** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %26 [
    i32 128, label %13
    i32 129, label %21
  ]

13:                                               ; preds = %5
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load %union.event_ring_data*, %union.event_ring_data** %10, align 8
  %18 = bitcast %union.event_ring_data* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @qed_sriov_vfpf_msg(%struct.qed_hwfn* %14, i32 %16, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %34

21:                                               ; preds = %5
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %23 = load %union.event_ring_data*, %union.event_ring_data** %10, align 8
  %24 = bitcast %union.event_ring_data* %23 to i32*
  %25 = call i32 @qed_sriov_vfpf_malicious(%struct.qed_hwfn* %22, i32* %24)
  store i32 0, i32* %6, align 4
  br label %34

26:                                               ; preds = %5
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @DP_INFO(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %21, %13
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @qed_sriov_vfpf_msg(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qed_sriov_vfpf_malicious(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @DP_INFO(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
