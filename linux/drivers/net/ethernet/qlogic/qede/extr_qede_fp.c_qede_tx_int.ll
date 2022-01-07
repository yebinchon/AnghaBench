; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i64, i32 }
%struct.qede_tx_queue = type { i32, i32, i32, i32, i32*, i32 }
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"hw_bd_cons = %d, chain_cons=%d\0A\00", align 1
@QEDE_STATE_OPEN = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@NETIF_MSG_TX_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Wake queue was called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_tx_queue*)* @qede_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_tx_int(%struct.qede_dev* %0, %struct.qede_tx_queue* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.qede_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %15 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %13, i32 %16)
  store %struct.netdev_queue* %17, %struct.netdev_queue** %7, align 8
  %18 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = call i32 (...) @barrier()
  br label %24

24:                                               ; preds = %43, %2
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %27 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %26, i32 0, i32 2
  %28 = call i64 @qed_chain_get_cons_idx(i32* %27)
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  %31 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %32 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %33 = call i32 @qede_free_tx_pkt(%struct.qede_dev* %31, %struct.qede_tx_queue* %32, i32* %10)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %39, i32 0, i32 2
  %41 = call i64 @qed_chain_get_cons_idx(i32* %40)
  %42 = call i32 @DP_NOTICE(%struct.qede_dev* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %41)
  br label %63

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %50 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %54 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = srem i32 %52, %55
  %57 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %58 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %60 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %24

63:                                               ; preds = %36, %24
  %64 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %64, i32 %65, i32 %66)
  %68 = call i32 (...) @smp_mb()
  %69 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %70 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %69)
  %71 = call i64 @unlikely(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %63
  %74 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %75 = call i32 (...) @smp_processor_id()
  %76 = call i32 @__netif_tx_lock(%struct.netdev_queue* %74, i32 %75)
  %77 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %78 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %82 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %88 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %87, i32 0, i32 2
  %89 = call i64 @qed_chain_get_elem_left(i32* %88)
  %90 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %91 = add nsw i64 %90, 1
  %92 = icmp sge i64 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %95 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %94)
  %96 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %97 = load i32, i32* @NETIF_MSG_TX_DONE, align 4
  %98 = call i32 @DP_VERBOSE(%struct.qede_dev* %96, i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %86, %80, %73
  %100 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %101 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %100)
  br label %102

102:                                              ; preds = %99, %63
  ret i32 0
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i32 @qede_free_tx_pkt(%struct.qede_dev*, %struct.qede_tx_queue*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i64, i64) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @qed_chain_get_elem_left(i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
