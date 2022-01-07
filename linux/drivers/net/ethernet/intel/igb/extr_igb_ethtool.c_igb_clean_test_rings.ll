; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_clean_test_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_clean_test_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i64, i64, i32, %struct.igb_tx_buffer*, %struct.igb_rx_buffer* }
%struct.igb_tx_buffer = type { i32 }
%struct.igb_rx_buffer = type { i32 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %struct.igb_ring*, i32)* @igb_clean_test_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_clean_test_rings(%struct.igb_ring* %0, %struct.igb_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.e1000_adv_rx_desc*, align 8
  %8 = alloca %struct.igb_rx_buffer*, align 8
  %9 = alloca %struct.igb_tx_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %14 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %17 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %19, i64 %20)
  store %union.e1000_adv_rx_desc* %21, %union.e1000_adv_rx_desc** %7, align 8
  br label %22

22:                                               ; preds = %101, %3
  %23 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %7, align 8
  %24 = bitcast %union.e1000_adv_rx_desc* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %105

29:                                               ; preds = %22
  %30 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %31 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %30, i32 0, i32 4
  %32 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %32, i64 %33
  store %struct.igb_rx_buffer* %34, %struct.igb_rx_buffer** %8, align 8
  %35 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %36 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_sync_single_for_cpu(i32 %37, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @igb_check_lbtest_frame(%struct.igb_rx_buffer* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %48, %29
  %52 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %53 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %8, align 8
  %56 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %60 = call i32 @dma_sync_single_for_device(i32 %54, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %62 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %61, i32 0, i32 3
  %63 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %63, i64 %64
  store %struct.igb_tx_buffer* %65, %struct.igb_tx_buffer** %9, align 8
  %66 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %9, align 8
  %67 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_kfree_skb_any(i32 %68)
  %70 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %71 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %9, align 8
  %74 = load i32, i32* @dma, align 4
  %75 = call i32 @dma_unmap_addr(%struct.igb_tx_buffer* %73, i32 %74)
  %76 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %9, align 8
  %77 = load i32, i32* @len, align 4
  %78 = call i32 @dma_unmap_len(%struct.igb_tx_buffer* %76, i32 %77)
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = call i32 @dma_unmap_single(i32 %72, i32 %75, i32 %78, i32 %79)
  %81 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %9, align 8
  %82 = load i32, i32* @len, align 4
  %83 = call i32 @dma_unmap_len_set(%struct.igb_tx_buffer* %81, i32 %82, i32 0)
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %88 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %51
  store i64 0, i64* %10, align 8
  br label %92

92:                                               ; preds = %91, %51
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %97 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i64 0, i64* %11, align 8
  br label %101

101:                                              ; preds = %100, %92
  %102 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %102, i64 %103)
  store %union.e1000_adv_rx_desc* %104, %union.e1000_adv_rx_desc** %7, align 8
  br label %22

105:                                              ; preds = %22
  %106 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %107 = call i32 @txring_txq(%struct.igb_ring* %106)
  %108 = call i32 @netdev_tx_reset_queue(i32 %107)
  %109 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %109, i64 %110)
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %114 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %117 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %12, align 8
  %119 = trunc i64 %118 to i32
  ret i32 %119
}

declare dso_local %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i64 @igb_check_lbtest_frame(%struct.igb_rx_buffer*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.igb_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.igb_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.igb_tx_buffer*, i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.igb_ring*) #1

declare dso_local i32 @igb_alloc_rx_buffers(%struct.igb_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
