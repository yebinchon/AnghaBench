; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_return_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_return_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qed_iwarp_ep = type { i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32* }

@QED_IWARP_EP_INIT = common dso_local global i32 0, align 4
@QED_IWARP_INVALID_TCP_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_iwarp_ep*)* @qed_iwarp_return_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_return_ep(%struct.qed_hwfn* %0, %struct.qed_iwarp_ep* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_iwarp_ep*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_iwarp_ep* %1, %struct.qed_iwarp_ep** %4, align 8
  %5 = load i32, i32* @QED_IWARP_EP_INIT, align 4
  %6 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %7 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %9 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %14 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %19 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %18, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %21 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %20, i32 0, i32 2
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QED_IWARP_INVALID_TCP_CID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %30 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %31 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %30, i32 0, i32 0
  %32 = call i32 @qed_iwarp_alloc_tcp_cid(%struct.qed_hwfn* %29, i64* %31)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %4, align 8
  %41 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %40, i32 0, i32 1
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i32 @list_move_tail(i32* %41, i32* %46)
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qed_iwarp_alloc_tcp_cid(%struct.qed_hwfn*, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
