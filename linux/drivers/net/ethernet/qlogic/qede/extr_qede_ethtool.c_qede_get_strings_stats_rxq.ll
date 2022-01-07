; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_strings_stats_rxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_strings_stats_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i32 }

@QEDE_NUM_RQSTATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d: %s\00", align 1
@qede_rqstats_arr = common dso_local global %struct.TYPE_2__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_rx_queue*, i32**)* @qede_get_strings_stats_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_strings_stats_rxq(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, i32** %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_rx_queue*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @QEDE_NUM_RQSTATS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qede_rqstats_arr, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sprintf(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %23)
  %25 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %26, align 8
  br label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
