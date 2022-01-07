; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_clean_test_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_clean_test_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, i32, %struct.ixgbe_rx_buffer*, %struct.ixgbe_tx_buffer* }
%struct.ixgbe_rx_buffer = type { i32 }
%struct.ixgbe_tx_buffer = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.ixgbe_adv_tx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IXGBE_TXD_STAT_DD = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_ring*, %struct.ixgbe_ring*, i32)* @ixgbe_clean_test_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_clean_test_rings(%struct.ixgbe_ring* %0, %struct.ixgbe_ring* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %13 = alloca %struct.ixgbe_tx_buffer*, align 8
  %14 = alloca %struct.ixgbe_rx_buffer*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %21, i64 %22)
  store %union.ixgbe_adv_rx_desc* %23, %union.ixgbe_adv_rx_desc** %8, align 8
  br label %24

24:                                               ; preds = %76, %3
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %27 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %24
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %31, i64 %32)
  store %union.ixgbe_adv_tx_desc* %33, %union.ixgbe_adv_tx_desc** %12, align 8
  %34 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %12, align 8
  %35 = bitcast %union.ixgbe_adv_tx_desc* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IXGBE_TXD_STAT_DD, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %4, align 8
  br label %146

44:                                               ; preds = %30
  %45 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %46 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %45, i32 0, i32 5
  %47 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %47, i64 %48
  store %struct.ixgbe_tx_buffer* %49, %struct.ixgbe_tx_buffer** %13, align 8
  %50 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %51 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_kfree_skb_any(i32 %52)
  %54 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %55 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %58 = load i32, i32* @dma, align 4
  %59 = call i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer* %57, i32 %58)
  %60 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %61 = load i32, i32* @len, align 4
  %62 = call i32 @dma_unmap_len(%struct.ixgbe_tx_buffer* %60, i32 %61)
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_unmap_single(i32 %56, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %66 = load i32, i32* @len, align 4
  %67 = call i32 @dma_unmap_len_set(%struct.ixgbe_tx_buffer* %65, i32 %66, i32 0)
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %72 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %44
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %75, %44
  br label %24

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %128, %77
  %79 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %8, align 8
  %80 = bitcast %union.ixgbe_adv_rx_desc* %79 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %78
  %86 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %87 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %86, i32 0, i32 4
  %88 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %88, i64 %89
  store %struct.ixgbe_rx_buffer* %90, %struct.ixgbe_rx_buffer** %14, align 8
  %91 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %92 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %95 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %98 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %97)
  %99 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %100 = call i32 @dma_sync_single_for_cpu(i32 %93, i32 %96, i32 %98, i32 %99)
  %101 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @ixgbe_check_lbtest_frame(%struct.ixgbe_rx_buffer* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %85
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %109

108:                                              ; preds = %85
  br label %132

109:                                              ; preds = %105
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %114 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %117 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %116)
  %118 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %119 = call i32 @dma_sync_single_for_device(i32 %112, i32 %115, i32 %117, i32 %118)
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %124 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %109
  store i64 0, i64* %9, align 8
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %129, i64 %130)
  store %union.ixgbe_adv_rx_desc* %131, %union.ixgbe_adv_rx_desc** %8, align 8
  br label %78

132:                                              ; preds = %108, %78
  %133 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %134 = call i32 @txring_txq(%struct.ixgbe_ring* %133)
  %135 = call i32 @netdev_tx_reset_queue(i32 %134)
  %136 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %136, i64 %137)
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %141 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %144 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %11, align 8
  store i64 %145, i64* %4, align 8
  br label %146

146:                                              ; preds = %132, %42
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ixgbe_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i64 @ixgbe_check_lbtest_frame(%struct.ixgbe_rx_buffer*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
