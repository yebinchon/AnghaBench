; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_dequeue_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_dequeue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ef4_tx_buffer = type { i32, i64, %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32 }

@EF4_TX_BUF_MAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EF4_TX_BUF_SKB = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TX queue %d transmission id %x complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_tx_queue*, %struct.ef4_tx_buffer*, i32*, i32*)* @ef4_dequeue_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_dequeue_buffer(%struct.ef4_tx_queue* %0, %struct.ef4_tx_buffer* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ef4_tx_queue*, align 8
  %6 = alloca %struct.ef4_tx_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %5, align 8
  store %struct.ef4_tx_buffer* %1, %struct.ef4_tx_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %4
  %16 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %17 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %10, align 8
  %29 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EF4_TX_BUF_MAP_SINGLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %15
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_unmap_single(%struct.device* %36, i64 %37, i64 %40, i32 %41)
  br label %51

43:                                               ; preds = %15
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @dma_unmap_page(%struct.device* %44, i64 %45, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %4
  %55 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EF4_TX_BUF_SKB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %54
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %72, %69
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = bitcast %struct.TYPE_5__* %77 to %struct.sk_buff*
  %79 = call i32 @dev_consume_skb_any(%struct.sk_buff* %78)
  %80 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %81 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* @tx_done, align 4
  %84 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %85 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %90 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %93 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_vdbg(%struct.TYPE_6__* %82, i32 %83, i32 %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %61, %54
  %97 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %98 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netif_vdbg(%struct.TYPE_6__*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
