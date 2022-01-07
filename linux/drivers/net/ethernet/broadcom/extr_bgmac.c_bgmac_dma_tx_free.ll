; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_9__*, %struct.device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.bgmac_dma_ring = type { i32, i32, %struct.TYPE_7__*, %struct.bgmac_slot_info*, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bgmac_slot_info = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@BGMAC_DMA_TX_STATUS = common dso_local global i64 0, align 8
@BGMAC_DMA_TX_STATDPTR = common dso_local global i32 0, align 4
@BGMAC_TX_RING_SLOTS = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL1_LEN = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL0_SOF = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_tx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_tx_free(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bgmac_slot_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %14 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %15 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %18 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %19 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BGMAC_DMA_TX_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @bgmac_read(%struct.bgmac* %17, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @BGMAC_DMA_TX_STATDPTR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %28 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @BGMAC_DMA_TX_STATDPTR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %151, %2
  %42 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %43 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %46 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %158

49:                                               ; preds = %41
  %50 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %51 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %54 = srem i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %56 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %55, i32 0, i32 3
  %57 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %57, i64 %59
  store %struct.bgmac_slot_info* %60, %struct.bgmac_slot_info** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %158

65:                                               ; preds = %49
  %66 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %67 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %76 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @BGMAC_DESC_CTL1_LEN, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @BGMAC_DESC_CTL0_SOF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %65
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %94 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @DMA_TO_DEVICE, align 4
  %98 = call i32 @dma_unmap_single(%struct.device* %92, i64 %95, i32 %96, i32 %97)
  br label %107

99:                                               ; preds = %65
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %102 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @DMA_TO_DEVICE, align 4
  %106 = call i32 @dma_unmap_page(%struct.device* %100, i64 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %91
  %108 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %109 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = icmp ne %struct.TYPE_10__* %110, null
  br i1 %111, label %112, label %151

112:                                              ; preds = %107
  %113 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %114 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %119 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %117
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %128 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %135 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %8, align 4
  %145 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %146 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32 @dev_kfree_skb(%struct.TYPE_10__* %147)
  %149 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %150 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %149, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %150, align 8
  br label %151

151:                                              ; preds = %112, %107
  %152 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %153 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %155 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %41

158:                                              ; preds = %64, %41
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  br label %179

162:                                              ; preds = %158
  %163 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %164 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @netdev_completed_queue(%struct.TYPE_9__* %165, i32 %166, i32 %167)
  %169 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %170 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = call i64 @netif_queue_stopped(%struct.TYPE_9__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %162
  %175 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %176 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = call i32 @netif_wake_queue(%struct.TYPE_9__* %177)
  br label %179

179:                                              ; preds = %161, %174, %162
  ret void
}

declare dso_local i32 @bgmac_read(%struct.bgmac*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_10__*) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
