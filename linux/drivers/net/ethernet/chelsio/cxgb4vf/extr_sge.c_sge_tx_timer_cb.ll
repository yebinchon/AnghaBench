; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_sge_tx_timer_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_sge_tx_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { %struct.sge }
%struct.sge = type { i32, i32, i32, %struct.sge_eth_txq* }
%struct.sge_eth_txq = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.timer_list = type { i32 }

@sge = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MAX_TIMER_TX_RECLAIM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TX_QCHECK_PERIOD = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sge_tx_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_tx_timer_cb(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sge_eth_txq*, align 8
  %8 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = ptrtoint %struct.adapter* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sge, i32 0, i32 0), align 4
  %13 = call %struct.adapter* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.adapter* %13, %struct.adapter** %3, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.sge* %15, %struct.sge** %4, align 8
  %16 = load i32, i32* @MAX_TIMER_TX_RECLAIM, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sge*, %struct.sge** %4, align 8
  %18 = getelementptr inbounds %struct.sge, %struct.sge* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %79, %1
  %21 = load %struct.sge*, %struct.sge** %4, align 8
  %22 = getelementptr inbounds %struct.sge, %struct.sge* %21, i32 0, i32 3
  %23 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %23, i64 %25
  store %struct.sge_eth_txq* %26, %struct.sge_eth_txq** %7, align 8
  %27 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %7, align 8
  %28 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %27, i32 0, i32 1
  %29 = call i32 @reclaimable(%struct.TYPE_5__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %20
  %32 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %7, align 8
  %33 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @__netif_tx_trylock(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %7, align 8
  %39 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %38, i32 0, i32 1
  %40 = call i32 @reclaimable(%struct.TYPE_5__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %7, align 8
  %49 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %48, i32 0, i32 1
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @free_tx_desc(%struct.adapter* %47, %struct.TYPE_5__* %49, i32 %50, i32 1)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %7, align 8
  %54 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %7, align 8
  %59 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__netif_tx_unlock(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %46
  br label %85

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %31, %20
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.sge*, %struct.sge** %4, align 8
  %74 = getelementptr inbounds %struct.sge, %struct.sge* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp uge i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.sge*, %struct.sge** %4, align 8
  %82 = getelementptr inbounds %struct.sge, %struct.sge* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %20, label %85

85:                                               ; preds = %79, %67
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.sge*, %struct.sge** %4, align 8
  %88 = getelementptr inbounds %struct.sge, %struct.sge* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.sge*, %struct.sge** %4, align 8
  %90 = getelementptr inbounds %struct.sge, %struct.sge* %89, i32 0, i32 2
  %91 = load i64, i64* @jiffies, align 8
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @TX_QCHECK_PERIOD, align 4
  br label %97

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 2, %96 ]
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %91, %99
  %101 = call i32 @mod_timer(i32* %90, i64 %100)
  ret void
}

declare dso_local %struct.adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @reclaimable(%struct.TYPE_5__*) #1

declare dso_local i64 @__netif_tx_trylock(i32) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @__netif_tx_unlock(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
