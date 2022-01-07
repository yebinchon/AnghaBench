; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_drain_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_drain_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.qede_tx_queue = type { i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Tx queue[%d] is stuck, requesting MCP to drain\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Timeout waiting for tx queue[%d]: PROD=%d, CONS=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_tx_queue*, i32)* @qede_drain_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_drain_txq(%struct.qede_dev* %0, %struct.qede_tx_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_tx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1000, i32* %9, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %12 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %15 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %10
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %26 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %27 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.qede_dev*, i8*, i32, ...) @DP_NOTICE(%struct.qede_dev* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %31 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %24
  %46 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %47 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %48 = call i32 @qede_drain_txq(%struct.qede_dev* %46, %struct.qede_tx_queue* %47, i32 0)
  store i32 %48, i32* %4, align 4
  br label %70

49:                                               ; preds = %21
  %50 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %51 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %52 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %55 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %58 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.qede_dev*, i8*, i32, ...) @DP_NOTICE(%struct.qede_dev* %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %56, i64 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %18
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  %66 = call i32 @usleep_range(i32 1000, i32 2000)
  %67 = call i32 (...) @barrier()
  br label %10

68:                                               ; preds = %10
  %69 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %49, %45, %43
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
