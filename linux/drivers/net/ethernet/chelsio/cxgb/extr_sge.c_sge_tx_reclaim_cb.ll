; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_sge_tx_reclaim_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_sge_tx_reclaim_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, %struct.TYPE_2__*, %struct.cmdQ* }
%struct.TYPE_2__ = type { i64 }
%struct.cmdQ = type { i32, i64 }
%struct.timer_list = type { i32 }

@tx_reclaim_timer = common dso_local global i32 0, align 4
@SGE_CMDQ_N = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@TX_RECLAIM_PERIOD = common dso_local global i64 0, align 8
@sge = common dso_local global %struct.sge* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sge_tx_reclaim_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_tx_reclaim_cb(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.cmdQ*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.sge*, %struct.sge** %4, align 8
  %7 = ptrtoint %struct.sge* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_reclaim_timer, align 4
  %10 = call %struct.sge* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.sge* %10, %struct.sge** %4, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SGE_CMDQ_N, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load %struct.sge*, %struct.sge** %4, align 8
  %17 = getelementptr inbounds %struct.sge, %struct.sge* %16, i32 0, i32 2
  %18 = load %struct.cmdQ*, %struct.cmdQ** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %18, i64 %20
  store %struct.cmdQ* %21, %struct.cmdQ** %5, align 8
  %22 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %23 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %22, i32 0, i32 0
  %24 = call i32 @spin_trylock(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %52

27:                                               ; preds = %15
  %28 = load %struct.sge*, %struct.sge** %4, align 8
  %29 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %30 = call i32 @reclaim_completed_tx(%struct.sge* %28, %struct.cmdQ* %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %35 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %40 = load %struct.sge*, %struct.sge** %4, align 8
  %41 = getelementptr inbounds %struct.sge, %struct.sge* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @A_SG_DOORBELL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %39, i64 %46)
  br label %48

48:                                               ; preds = %38, %33, %27
  %49 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %50 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %26
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %11

55:                                               ; preds = %11
  %56 = load %struct.sge*, %struct.sge** %4, align 8
  %57 = getelementptr inbounds %struct.sge, %struct.sge* %56, i32 0, i32 0
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* @TX_RECLAIM_PERIOD, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @mod_timer(i32* %57, i64 %60)
  ret void
}

declare dso_local %struct.sge* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge*, %struct.cmdQ*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
