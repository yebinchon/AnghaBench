; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_strings_stats_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_strings_stats_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.qede_dev = type { i32 }
%struct.qede_tx_queue = type { i32, i32, i64 }

@QEDE_NUM_TQSTATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d [XDP]: %s\00", align 1
@qede_tqstats_arr = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%d_%d: %s\00", align 1
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_tx_queue*, i32**)* @qede_get_strings_stats_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_strings_stats_txq(%struct.qede_dev* %0, %struct.qede_tx_queue* %1, i32** %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_tx_queue*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %52, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @QEDE_NUM_TQSTATS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %14 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %21 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %22 = call i32 @QEDE_TXQ_XDP_TO_IDX(%struct.qede_dev* %20, %struct.qede_tx_queue* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qede_tqstats_arr, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32*, i8*, i32, ...) @sprintf(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %28)
  br label %46

30:                                               ; preds = %12
  %31 = load i32**, i32*** %6, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %34 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %37 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qede_tqstats_arr, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32*, i8*, i32, ...) @sprintf(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i8* %44)
  br label %46

46:                                               ; preds = %30, %17
  %47 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %48, align 8
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @QEDE_TXQ_XDP_TO_IDX(%struct.qede_dev*, %struct.qede_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
