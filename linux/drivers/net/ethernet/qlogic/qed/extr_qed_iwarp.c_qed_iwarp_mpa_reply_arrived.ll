; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_mpa_reply_arrived.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_mpa_reply_arrived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_iwarp_ep = type { i64, i32, i32, i32 (i32, %struct.qed_iwarp_cm_event_params*)*, %struct.TYPE_2__, i32 }
%struct.qed_iwarp_cm_event_params = type opaque
%struct.TYPE_2__ = type { i32, i32 }
%struct.qed_iwarp_cm_event_params.0 = type { i64, %struct.qed_iwarp_ep*, %struct.TYPE_2__*, i32 }

@TCP_CONNECT_PASSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"MPA reply event not expected on passive side!\0A\00", align 1
@QED_IWARP_EVENT_ACTIVE_MPA_REPLY = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"MPA_NEGOTIATE (v%d): ORD: 0x%x IRD: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_iwarp_ep*)* @qed_iwarp_mpa_reply_arrived to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_mpa_reply_arrived(%struct.qed_hwfn* %0, %struct.qed_iwarp_ep* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_iwarp_ep*, align 8
  %5 = alloca %struct.qed_iwarp_cm_event_params.0, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_iwarp_ep* %1, %struct.qed_iwarp_ep** %4, align 8
  %6 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %7 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TCP_CONNECT_PASSIVE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = call i32 @DP_NOTICE(%struct.qed_hwfn* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* @QED_IWARP_EVENT_ACTIVE_MPA_REPLY, align 4
  %16 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %5, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %19 = call i32 @qed_iwarp_parse_private_data(%struct.qed_hwfn* %17, %struct.qed_iwarp_ep* %18)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = load i32, i32* @QED_MSG_RDMA, align 4
  %22 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %23 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %30 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %20, i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28, i32 %32)
  %34 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %35 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %5, i32 0, i32 2
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %38 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %5, i32 0, i32 1
  store %struct.qed_iwarp_ep* %37, %struct.qed_iwarp_ep** %38, align 8
  %39 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %5, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %41 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %43 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %42, i32 0, i32 3
  %44 = load i32 (i32, %struct.qed_iwarp_cm_event_params*)*, i32 (i32, %struct.qed_iwarp_cm_event_params*)** %43, align 8
  %45 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %46 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %struct.qed_iwarp_cm_event_params.0* %5 to %struct.qed_iwarp_cm_event_params*
  %49 = call i32 %44(i32 %47, %struct.qed_iwarp_cm_event_params* %48)
  br label %50

50:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_iwarp_parse_private_data(%struct.qed_hwfn*, %struct.qed_iwarp_ep*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
