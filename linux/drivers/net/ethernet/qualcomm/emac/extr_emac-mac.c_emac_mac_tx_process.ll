; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_tx_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_tx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.emac_tx_queue = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.emac_buffer = type { %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_tx_process(%struct.emac_adapter* %0, %struct.emac_tx_queue* %1) #0 {
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.emac_buffer*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  store %struct.emac_tx_queue* %1, %struct.emac_tx_queue** %4, align 8
  %10 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  %23 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %24 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %101, %2
  %28 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %102

34:                                               ; preds = %27
  %35 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %36 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue* %35, i32 %39)
  store %struct.emac_buffer* %40, %struct.emac_buffer** %9, align 8
  %41 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %42 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %53 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_page(i32 %51, i64 %54, i32 %57, i32 %58)
  %60 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %61 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %45, %34
  %63 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %64 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %80 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @dev_consume_skb_irq(%struct.TYPE_10__* %81)
  %83 = load %struct.emac_buffer*, %struct.emac_buffer** %9, align 8
  %84 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %83, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %84, align 8
  br label %85

85:                                               ; preds = %67, %62
  %86 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %87 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = sext i32 %90 to i64
  %92 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %93 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %99 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %85
  br label %27

102:                                              ; preds = %27
  %103 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @netdev_completed_queue(%struct.TYPE_9__* %105, i32 %106, i32 %107)
  %109 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i64 @netif_queue_stopped(%struct.TYPE_9__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %102
  %115 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %4, align 8
  %116 = call i64 @emac_tpd_num_free_descs(%struct.emac_tx_queue* %115)
  %117 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %118 = add nsw i64 %117, 1
  %119 = icmp sgt i64 %116, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = call i32 @netif_wake_queue(%struct.TYPE_9__* %123)
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125, %102
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.TYPE_10__*) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_9__*) #1

declare dso_local i64 @emac_tpd_num_free_descs(%struct.emac_tx_queue*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
