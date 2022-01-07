; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_xmit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_xmit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.net_device*, %struct.slic_tx_queue }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.slic_tx_queue = type { i32, %struct.slic_tx_buffer* }
%struct.slic_tx_buffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SLIC_INVALID_STAT_DESC_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no skb found for desc idx %i\0A\00", align 1
@map_addr = common dso_local global i32 0, align 4
@map_len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SLIC_MAX_TX_COMPLETIONS = common dso_local global i32 0, align 4
@SLIC_MIN_TX_WAKEUP_DESCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_xmit_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_xmit_complete(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca %struct.slic_tx_queue*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.slic_tx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %9 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %10 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %9, i32 0, i32 3
  store %struct.slic_tx_queue* %10, %struct.slic_tx_queue** %3, align 8
  %11 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %12 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %73, %1
  %15 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %16 = call i32 @slic_next_compl_idx(%struct.slic_device* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SLIC_INVALID_STAT_DESC_IDX, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %77

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %3, align 8
  %24 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %3, align 8
  %26 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %25, i32 0, i32 1
  %27 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %27, i64 %29
  store %struct.slic_tx_buffer* %30, %struct.slic_tx_buffer** %5, align 8
  %31 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @netdev_warn(%struct.net_device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %73

43:                                               ; preds = %21
  %44 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %45 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %49 = load i32, i32* @map_addr, align 4
  %50 = call i32 @dma_unmap_addr(%struct.slic_tx_buffer* %48, i32 %49)
  %51 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %52 = load i32, i32* @map_len, align 4
  %53 = call i32 @dma_unmap_len(%struct.slic_tx_buffer* %51, i32 %52)
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_unmap_single(i32* %47, i32 %50, i32 %53, i32 %54)
  %56 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %69)
  %71 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %71, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %72, align 8
  br label %73

73:                                               ; preds = %43, %39
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SLIC_MAX_TX_COMPLETIONS, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %14, label %77

77:                                               ; preds = %73, %20
  %78 = call i32 (...) @smp_wmb()
  %79 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %80 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = call i32 @u64_stats_update_begin(i32* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %85 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %91 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %96 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = call i32 @u64_stats_update_end(i32* %97)
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netif_tx_lock(%struct.net_device* %99)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i64 @netif_queue_stopped(%struct.net_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %77
  %105 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %3, align 8
  %106 = call i64 @slic_get_free_tx_descs(%struct.slic_tx_queue* %105)
  %107 = load i64, i64* @SLIC_MIN_TX_WAKEUP_DESCS, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = call i32 @netif_wake_queue(%struct.net_device* %110)
  br label %112

112:                                              ; preds = %109, %104, %77
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @netif_tx_unlock(%struct.net_device* %113)
  ret void
}

declare dso_local i32 @slic_next_compl_idx(%struct.slic_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.slic_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.slic_tx_buffer*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @slic_get_free_tx_descs(%struct.slic_tx_queue*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
