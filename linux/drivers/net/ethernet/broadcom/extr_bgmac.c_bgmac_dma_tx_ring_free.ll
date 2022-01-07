; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.device* }
%struct.device = type { i32 }
%struct.bgmac_dma_ring = type { %struct.bgmac_slot_info*, %struct.bgmac_dma_desc* }
%struct.bgmac_slot_info = type { i32, i64 }
%struct.bgmac_dma_desc = type { i32 }

@BGMAC_TX_RING_SLOTS = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL1_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_tx_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_tx_ring_free(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bgmac_dma_desc*, align 8
  %7 = alloca %struct.bgmac_slot_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %11 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %12 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %15 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %14, i32 0, i32 1
  %16 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %15, align 8
  store %struct.bgmac_dma_desc* %16, %struct.bgmac_dma_desc** %6, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %69, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = load %struct.bgmac_dma_desc*, %struct.bgmac_dma_desc** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %22, i64 %24
  %26 = getelementptr inbounds %struct.bgmac_dma_desc, %struct.bgmac_dma_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @BGMAC_DESC_CTL1_LEN, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %33 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %32, i32 0, i32 0
  %34 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %34, i64 %36
  store %struct.bgmac_slot_info* %37, %struct.bgmac_slot_info** %7, align 8
  %38 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %7, align 8
  %39 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_kfree_skb(i64 %40)
  %42 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %7, align 8
  %43 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %21
  br label %69

47:                                               ; preds = %21
  %48 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %7, align 8
  %49 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %7, align 8
  %55 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(%struct.device* %53, i32 %56, i32 %57, i32 %58)
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %7, align 8
  %63 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @dma_unmap_page(%struct.device* %61, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %52
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %17

72:                                               ; preds = %17
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
