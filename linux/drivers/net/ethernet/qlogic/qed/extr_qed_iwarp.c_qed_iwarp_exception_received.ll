; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_exception_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_exception_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_iwarp_ep = type { i32, i32 (i32, %struct.qed_iwarp_cm_event_params*)*, i32, i32 }
%struct.qed_iwarp_cm_event_params = type opaque
%struct.qed_iwarp_cm_event_params.0 = type { i32*, %struct.qed_iwarp_ep*, i8*, i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EP(0x%x) fw_ret_code=%d\0A\00", align 1
@QED_IWARP_EVENT_DISCONNECT = common dso_local global i8* null, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@QED_IWARP_EVENT_RQ_EMPTY = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_IRQ_FULL = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_LLP_TIMEOUT = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_CQ_OVERFLOW = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_QP_CATASTROPHIC = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_LOCAL_ACCESS_ERROR = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_REMOTE_OPERATION_ERROR = common dso_local global i8* null, align 8
@QED_IWARP_EVENT_TERMINATE_RECEIVED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Unhandled exception received...fw_ret_code=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i32)* @qed_iwarp_exception_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_exception_received(%struct.qed_hwfn* %0, %struct.qed_iwarp_ep* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_iwarp_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_iwarp_cm_event_params.0, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_iwarp_ep* %1, %struct.qed_iwarp_ep** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load i32, i32* @QED_MSG_RDMA, align 4
  %11 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %12 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %9, i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %54 [
    i32 136, label %17
    i32 135, label %21
    i32 129, label %27
    i32 137, label %30
    i32 134, label %33
    i32 130, label %36
    i32 138, label %39
    i32 132, label %42
    i32 133, label %45
    i32 131, label %48
    i32 128, label %51
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = load i8*, i8** @QED_IWARP_EVENT_DISCONNECT, align 8
  %20 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  store i32 1, i32* %8, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i32, i32* @ECONNRESET, align 4
  %23 = sub nsw i32 0, %22
  %24 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** @QED_IWARP_EVENT_DISCONNECT, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  store i32 1, i32* %8, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load i8*, i8** @QED_IWARP_EVENT_RQ_EMPTY, align 8
  %29 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  store i32 1, i32* %8, align 4
  br label %59

30:                                               ; preds = %3
  %31 = load i8*, i8** @QED_IWARP_EVENT_IRQ_FULL, align 8
  %32 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  store i32 1, i32* %8, align 4
  br label %59

33:                                               ; preds = %3
  %34 = load i8*, i8** @QED_IWARP_EVENT_LLP_TIMEOUT, align 8
  %35 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  store i32 1, i32* %8, align 4
  br label %59

36:                                               ; preds = %3
  %37 = load i8*, i8** @QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR, align 8
  %38 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  store i32 1, i32* %8, align 4
  br label %59

39:                                               ; preds = %3
  %40 = load i8*, i8** @QED_IWARP_EVENT_CQ_OVERFLOW, align 8
  %41 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  store i32 1, i32* %8, align 4
  br label %59

42:                                               ; preds = %3
  %43 = load i8*, i8** @QED_IWARP_EVENT_QP_CATASTROPHIC, align 8
  %44 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  store i32 1, i32* %8, align 4
  br label %59

45:                                               ; preds = %3
  %46 = load i8*, i8** @QED_IWARP_EVENT_LOCAL_ACCESS_ERROR, align 8
  %47 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  store i32 1, i32* %8, align 4
  br label %59

48:                                               ; preds = %3
  %49 = load i8*, i8** @QED_IWARP_EVENT_REMOTE_OPERATION_ERROR, align 8
  %50 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  store i32 1, i32* %8, align 4
  br label %59

51:                                               ; preds = %3
  %52 = load i8*, i8** @QED_IWARP_EVENT_TERMINATE_RECEIVED, align 8
  %53 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  store i32 1, i32* %8, align 4
  br label %59

54:                                               ; preds = %3
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %56 = load i32, i32* @QED_MSG_RDMA, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %55, i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %21, %17
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %64 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 1
  store %struct.qed_iwarp_ep* %63, %struct.qed_iwarp_ep** %64, align 8
  %65 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %66 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i32* %66, i32** %67, align 8
  %68 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %69 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %68, i32 0, i32 1
  %70 = load i32 (i32, %struct.qed_iwarp_cm_event_params*)*, i32 (i32, %struct.qed_iwarp_cm_event_params*)** %69, align 8
  %71 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %72 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = bitcast %struct.qed_iwarp_cm_event_params.0* %7 to %struct.qed_iwarp_cm_event_params*
  %75 = call i32 %70(i32 %73, %struct.qed_iwarp_cm_event_params* %74)
  br label %76

76:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
