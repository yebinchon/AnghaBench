; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_ethtool_stats_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_ethtool_stats_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qede_tx_queue = type { i32 }

@QEDE_NUM_TQSTATS = common dso_local global i32 0, align 4
@qede_tqstats_arr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_tx_queue*, i32**)* @qede_get_ethtool_stats_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_ethtool_stats_txq(%struct.qede_tx_queue* %0, i32** %1) #0 {
  %3 = alloca %struct.qede_tx_queue*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store %struct.qede_tx_queue* %0, %struct.qede_tx_queue** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @QEDE_NUM_TQSTATS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %3, align 8
  %12 = bitcast %struct.qede_tx_queue* %11 to i8*
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qede_tqstats_arr, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %12, i64 %19
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32*, i32** %23, align 8
  store i32 %22, i32* %24, align 4
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %25, align 8
  br label %28

28:                                               ; preds = %10
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
