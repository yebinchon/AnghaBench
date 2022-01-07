; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_iscsi_info* }
%struct.qed_iscsi_info = type { i32 (i32, i32, %union.event_ring_data*)*, i32 }
%union.event_ring_data = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"iSCSI async completion is not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32, %union.event_ring_data*, i32)* @qed_iscsi_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iscsi_async_event(%struct.qed_hwfn* %0, i32 %1, i32 %2, %union.event_ring_data* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.event_ring_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_iscsi_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.event_ring_data* %3, %union.event_ring_data** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load %struct.qed_iscsi_info*, %struct.qed_iscsi_info** %14, align 8
  %16 = getelementptr inbounds %struct.qed_iscsi_info, %struct.qed_iscsi_info* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, %union.event_ring_data*)*, i32 (i32, i32, %union.event_ring_data*)** %16, align 8
  %18 = icmp ne i32 (i32, i32, %union.event_ring_data*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load %struct.qed_iscsi_info*, %struct.qed_iscsi_info** %21, align 8
  store %struct.qed_iscsi_info* %22, %struct.qed_iscsi_info** %12, align 8
  %23 = load %struct.qed_iscsi_info*, %struct.qed_iscsi_info** %12, align 8
  %24 = getelementptr inbounds %struct.qed_iscsi_info, %struct.qed_iscsi_info* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, %union.event_ring_data*)*, i32 (i32, i32, %union.event_ring_data*)** %24, align 8
  %26 = load %struct.qed_iscsi_info*, %struct.qed_iscsi_info** %12, align 8
  %27 = getelementptr inbounds %struct.qed_iscsi_info, %struct.qed_iscsi_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %union.event_ring_data*, %union.event_ring_data** %10, align 8
  %31 = call i32 %25(i32 %28, i32 %29, %union.event_ring_data* %30)
  store i32 %31, i32* %6, align 4
  br label %37

32:                                               ; preds = %5
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %34 = call i32 @DP_NOTICE(%struct.qed_hwfn* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
