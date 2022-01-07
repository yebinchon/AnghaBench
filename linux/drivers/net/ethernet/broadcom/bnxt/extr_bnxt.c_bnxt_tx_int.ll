; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, %struct.pci_dev*, i32 }
%struct.pci_dev = type { i32 }
%struct.bnxt_napi = type { %struct.bnxt_tx_ring_info* }
%struct.bnxt_tx_ring_info = type { i64, i64, %struct.bnxt_sw_tx_bd*, i32 }
%struct.bnxt_sw_tx_bd = type { i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_2__ = type { i32* }

@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@BNXT_DEV_STATE_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_napi*, i32)* @bnxt_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tx_int(%struct.bnxt* %0, %struct.bnxt_napi* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_napi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_tx_ring_info*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bnxt_sw_tx_bd*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_napi* %1, %struct.bnxt_napi** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %17, i32 0, i32 0
  %19 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %18, align 8
  store %struct.bnxt_tx_ring_info* %19, %struct.bnxt_tx_ring_info** %7, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %24 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %22, i32 %25)
  store %struct.netdev_queue* %26, %struct.netdev_queue** %8, align 8
  %27 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %28 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %113, %3
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %116

37:                                               ; preds = %33
  %38 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %39 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %38, i32 0, i32 2
  %40 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %40, i64 %41
  store %struct.bnxt_sw_tx_bd* %42, %struct.bnxt_sw_tx_bd** %13, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @NEXT_TX(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %46 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %45, i32 0, i32 2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %14, align 8
  %48 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %49 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %48, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %49, align 8
  %50 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %51 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %56 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %101

57:                                               ; preds = %37
  %58 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %61 = load i32, i32* @mapping, align 4
  %62 = call i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = call i32 @skb_headlen(%struct.sk_buff* %63)
  %65 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %66 = call i32 @dma_unmap_single(i32* %59, i32 %62, i32 %64, i32 %65)
  %67 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %68 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %97, %57
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @NEXT_TX(i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %78 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %77, i32 0, i32 2
  %79 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %79, i64 %80
  store %struct.bnxt_sw_tx_bd* %81, %struct.bnxt_sw_tx_bd** %13, align 8
  %82 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %13, align 8
  %85 = load i32, i32* @mapping, align 4
  %86 = call i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd* %84, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %88 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @skb_frag_size(i32* %93)
  %95 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %96 = call i32 @dma_unmap_page(i32* %83, i32 %86, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %74
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %70

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %100, %54
  %102 = load i64, i64* %9, align 8
  %103 = call i64 @NEXT_TX(i64 %102)
  store i64 %103, i64* %9, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %112 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %111)
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %33

116:                                              ; preds = %33
  %117 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %117, i32 %118, i32 %119)
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %123 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = call i32 (...) @smp_mb()
  %125 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %126 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %125)
  %127 = call i64 @unlikely(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %116
  %130 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %131 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %132 = call i64 @bnxt_tx_avail(%struct.bnxt* %130, %struct.bnxt_tx_ring_info* %131)
  %133 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %134 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %132, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %129
  %138 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %139 = call i32 (...) @smp_processor_id()
  %140 = call i32 @__netif_tx_lock(%struct.netdev_queue* %138, i32 %139)
  %141 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %142 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %137
  %145 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %146 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %147 = call i64 @bnxt_tx_avail(%struct.bnxt* %145, %struct.bnxt_tx_ring_info* %146)
  %148 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %149 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %147, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %144
  %153 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %154 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BNXT_DEV_STATE_CLOSING, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %160 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %159)
  br label %161

161:                                              ; preds = %158, %152, %144, %137
  %162 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %163 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %162)
  br label %164

164:                                              ; preds = %161, %129, %116
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @bnxt_tx_avail(%struct.bnxt*, %struct.bnxt_tx_ring_info*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
