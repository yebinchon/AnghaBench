; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_qp_in_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_qp_in_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iwarp_ep = type { i32, i32 (i32, %struct.qed_iwarp_cm_event_params*)*, i32, i32, i32, i32 }
%struct.qed_iwarp_cm_event_params = type opaque
%struct.qed_iwarp_cm_event_params.0 = type { i32, i32*, %struct.qed_iwarp_ep*, i32 }

@QED_IWARP_QP_STATE_ERROR = common dso_local global i32 0, align 4
@QED_IWARP_EVENT_CLOSE = common dso_local global i32 0, align 4
@IWARP_QP_IN_ERROR_GOOD_CLOSE = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@QED_IWARP_EP_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i64)* @qed_iwarp_qp_in_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_qp_in_error(%struct.qed_hwfn* %0, %struct.qed_iwarp_ep* %1, i64 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_iwarp_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qed_iwarp_cm_event_params.0, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_iwarp_ep* %1, %struct.qed_iwarp_ep** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %10 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QED_IWARP_QP_STATE_ERROR, align 4
  %13 = call i32 @qed_iwarp_modify_qp(%struct.qed_hwfn* %8, i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* @QED_IWARP_EVENT_CLOSE, align 4
  %15 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %17 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store %struct.qed_iwarp_ep* %16, %struct.qed_iwarp_ep** %17, align 8
  %18 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %19 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IWARP_QP_IN_ERROR_GOOD_CLOSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ECONNRESET, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.qed_iwarp_cm_event_params.0, %struct.qed_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %32 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %31, i32 0, i32 3
  %33 = load i32, i32* @QED_IWARP_EP_CLOSED, align 4
  %34 = call i32 @smp_store_release(i32* %32, i32 %33)
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %42 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %41, i32 0, i32 2
  %43 = call i32 @list_del(i32* %42)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %51 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %50, i32 0, i32 1
  %52 = load i32 (i32, %struct.qed_iwarp_cm_event_params*)*, i32 (i32, %struct.qed_iwarp_cm_event_params*)** %51, align 8
  %53 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %54 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = bitcast %struct.qed_iwarp_cm_event_params.0* %7 to %struct.qed_iwarp_cm_event_params*
  %57 = call i32 %52(i32 %55, %struct.qed_iwarp_cm_event_params* %56)
  ret void
}

declare dso_local i32 @qed_iwarp_modify_qp(%struct.qed_hwfn*, i32, i32, i32) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
