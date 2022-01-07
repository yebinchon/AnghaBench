; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_check_txq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_check_txq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@tx_restart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*)* @check_txq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_txq_status(%struct.lio* %0) #0 {
  %2 = alloca %struct.lio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %2, align 8
  %7 = load %struct.lio*, %struct.lio** %2, align 8
  %8 = getelementptr inbounds %struct.lio, %struct.lio* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %62, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.lio*, %struct.lio** %2, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.lio*, %struct.lio** %2, align 8
  %23 = getelementptr inbounds %struct.lio, %struct.lio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %21, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.lio*, %struct.lio** %2, align 8
  %34 = getelementptr inbounds %struct.lio, %struct.lio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @octnet_iq_is_full(%struct.TYPE_11__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %62

40:                                               ; preds = %16
  %41 = load %struct.lio*, %struct.lio** %2, align 8
  %42 = getelementptr inbounds %struct.lio, %struct.lio* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @__netif_subqueue_stopped(%struct.TYPE_12__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.lio*, %struct.lio** %2, align 8
  %49 = getelementptr inbounds %struct.lio, %struct.lio* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @netif_wake_subqueue(%struct.TYPE_12__* %50, i32 %51)
  %53 = load %struct.lio*, %struct.lio** %2, align 8
  %54 = getelementptr inbounds %struct.lio, %struct.lio* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @tx_restart, align 4
  %58 = call i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.TYPE_11__* %55, i32 %56, i32 %57, i32 1)
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %47, %40
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %12

65:                                               ; preds = %12
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @octnet_iq_is_full(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @netif_wake_subqueue(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
