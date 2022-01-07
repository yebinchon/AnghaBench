; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i32, i64 }
%struct.bnx2x_fp_txdata = type { i64, i64, i32, i32* }
%struct.netdev_queue = type { i32 }

@NETIF_MSG_TX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"queue[%d]: hw_cons %u  sw_cons %u  pkt_cons %u\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@MAX_DESC_PER_TX_PKT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_tx_int(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_fp_txdata*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %4, align 8
  %12 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %17, i32 %20)
  store %struct.netdev_queue* %21, %struct.netdev_queue** %5, align 8
  %22 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = call i32 (...) @smp_rmb()
  br label %31

31:                                               ; preds = %35, %2
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TX_BD(i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* @NETIF_MSG_TX_DONE, align 4
  %39 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i64 %43, i64 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @bnx2x_free_tx_pkt(%struct.bnx2x* %46, %struct.bnx2x_fp_txdata* %47, i64 %48, i32* %9, i32* %10)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %53, i32 %54, i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %59 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %62 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = call i32 (...) @smp_mb()
  %64 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %65 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %64)
  %66 = call i64 @unlikely(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %52
  %69 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %70 = call i32 (...) @smp_processor_id()
  %71 = call i32 @__netif_tx_lock(%struct.netdev_queue* %69, i32 %70)
  %72 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %73 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %84 = call i64 @bnx2x_tx_avail(%struct.bnx2x* %82, %struct.bnx2x_fp_txdata* %83)
  %85 = load i64, i64* @MAX_DESC_PER_TX_PKT, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %89 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %88)
  br label %90

90:                                               ; preds = %87, %81, %75, %68
  %91 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %92 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %91)
  br label %93

93:                                               ; preds = %90, %52
  ret i32 0
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @TX_BD(i64) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i64 @bnx2x_free_tx_pkt(%struct.bnx2x*, %struct.bnx2x_fp_txdata*, i64, i32*, i32*) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @bnx2x_tx_avail(%struct.bnx2x*, %struct.bnx2x_fp_txdata*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
