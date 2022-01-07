; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_run_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_run_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, %struct.bnxt_rx_ring_info*, %struct.bnxt_tx_ring_info* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.bnxt_rx_ring_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.bnxt_cp_ring_info** }
%struct.bnxt_tx_ring_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_RX_HDL = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_run_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_run_loopback(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_tx_ring_info*, align 8
  %5 = alloca %struct.bnxt_rx_ring_info*, align 8
  %6 = alloca %struct.bnxt_cp_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 5
  %15 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %14, align 8
  %16 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %15, i64 0
  store %struct.bnxt_tx_ring_info* %16, %struct.bnxt_tx_ring_info** %4, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 4
  %19 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %18, align 8
  %20 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %19, i64 0
  store %struct.bnxt_rx_ring_info* %20, %struct.bnxt_rx_ring_info** %5, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %22 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %24, %struct.bnxt_cp_ring_info** %6, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %33 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %32, i32 0, i32 0
  %34 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %33, align 8
  %35 = load i64, i64* @BNXT_RX_HDL, align 8
  %36 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %34, i64 %35
  %37 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %36, align 8
  store %struct.bnxt_cp_ring_info* %37, %struct.bnxt_cp_ring_info** %6, align 8
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ETH_HLEN, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @min(i64 %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_6__* %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %153

60:                                               ; preds = %38
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64* @skb_put(%struct.sk_buff* %61, i32 %62)
  store i64* %63, i64** %11, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = call i32 @eth_broadcast_addr(i64* %64)
  %66 = load i64, i64* @ETH_ALEN, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load i64*, i64** %11, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %76 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ether_addr_copy(i64* %74, i32 %79)
  %81 = load i64, i64* @ETH_ALEN, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %98, %60
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 255
  %93 = sext i32 %92 to i64
  %94 = load i64*, i64** %11, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %93, i64* %97, align 8
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %103 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %111 = call i32 @dma_map_single(i32* %105, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %113 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @dma_mapping_error(i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %101
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = call i32 @dev_kfree_skb(%struct.sk_buff* %120)
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %153

124:                                              ; preds = %101
  %125 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %126 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %4, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @bnxt_xmit_bd(%struct.bnxt* %125, %struct.bnxt_tx_ring_info* %126, i32 %127, i32 %128)
  %130 = call i32 (...) @wmb()
  %131 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %132 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %4, align 8
  %133 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %132, i32 0, i32 1
  %134 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %4, align 8
  %135 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @bnxt_db_write(%struct.bnxt* %131, i32* %133, i32 %136)
  %138 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %139 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @bnxt_poll_loopback(%struct.bnxt* %138, %struct.bnxt_cp_ring_info* %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %143 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %149 = call i32 @dma_unmap_single(i32* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %151 = call i32 @dev_kfree_skb(%struct.sk_buff* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %124, %119, %57
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_6__*, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i64*) #1

declare dso_local i32 @ether_addr_copy(i64*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bnxt_xmit_bd(%struct.bnxt*, %struct.bnxt_tx_ring_info*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bnxt_db_write(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @bnxt_poll_loopback(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
