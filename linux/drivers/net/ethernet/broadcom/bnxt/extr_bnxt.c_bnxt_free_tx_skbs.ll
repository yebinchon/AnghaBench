; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_tx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_tx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, i32, %struct.bnxt_tx_ring_info*, %struct.pci_dev* }
%struct.bnxt_tx_ring_info = type { %struct.bnxt_sw_tx_bd* }
%struct.bnxt_sw_tx_bd = type { i64, i32, i64, %struct.sk_buff*, i32* }
%struct.sk_buff = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32* }

@TX_DESC_CNT = common dso_local global i32 0, align 4
@XDP_REDIRECT = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_tx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_tx_skbs(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.bnxt_tx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_sw_tx_bd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 5
  %19 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %18, align 8
  %20 = icmp ne %struct.bnxt_tx_ring_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %170

22:                                               ; preds = %1
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TX_DESC_CNT, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %167, %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %170

34:                                               ; preds = %28
  %35 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 5
  %37 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %37, i64 %39
  store %struct.bnxt_tx_ring_info* %40, %struct.bnxt_tx_ring_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %157, %100, %90, %63, %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %160

45:                                               ; preds = %41
  %46 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %6, align 8
  %47 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %46, i32 0, i32 0
  %48 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %48, i64 %50
  store %struct.bnxt_sw_tx_bd* %51, %struct.bnxt_sw_tx_bd** %8, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %45
  %58 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %59 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @XDP_REDIRECT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %67 = load i32, i32* @mapping, align 4
  %68 = call i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd* %66, i32 %67)
  %69 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %70 = load i32, i32* @len, align 4
  %71 = call i32 @dma_unmap_len(%struct.bnxt_sw_tx_bd* %69, i32 %70)
  %72 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %73 = call i32 @dma_unmap_single(i32* %65, i32 %68, i32 %71, i32 %72)
  %74 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %75 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @xdp_return_frame(i32* %76)
  %78 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %79 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %81 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %41

84:                                               ; preds = %57, %45
  %85 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %86 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %85, i32 0, i32 3
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %41

93:                                               ; preds = %84
  %94 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %95 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %94, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %95, align 8
  %96 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %97 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = call i32 @dev_kfree_skb(%struct.sk_buff* %101)
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %7, align 4
  br label %41

105:                                              ; preds = %93
  %106 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %109 = load i32, i32* @mapping, align 4
  %110 = call i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd* %108, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = call i32 @skb_headlen(%struct.sk_buff* %111)
  %113 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %114 = call i32 @dma_unmap_single(i32* %107, i32 %110, i32 %112, i32 %113)
  %115 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %116 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %152, %105
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %127 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %125, %128
  store i32 %129, i32* %12, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %131 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32* %136, i32** %13, align 8
  %137 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %6, align 8
  %138 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %137, i32 0, i32 0
  %139 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %139, i64 %141
  store %struct.bnxt_sw_tx_bd* %142, %struct.bnxt_sw_tx_bd** %8, align 8
  %143 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %8, align 8
  %146 = load i32, i32* @mapping, align 4
  %147 = call i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd* %145, i32 %146)
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @skb_frag_size(i32* %148)
  %150 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %151 = call i32 @dma_unmap_page(i32* %144, i32 %147, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %124
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %120

157:                                              ; preds = %120
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = call i32 @dev_kfree_skb(%struct.sk_buff* %158)
  br label %41

160:                                              ; preds = %41
  %161 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %162 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @netdev_get_tx_queue(i32 %163, i32 %164)
  %166 = call i32 @netdev_tx_reset_queue(i32 %165)
  br label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %28

170:                                              ; preds = %21, %28
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnxt_sw_tx_bd*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.bnxt_sw_tx_bd*, i32) #1

declare dso_local i32 @xdp_return_frame(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
