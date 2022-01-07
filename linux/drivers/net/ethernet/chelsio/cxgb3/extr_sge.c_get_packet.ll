; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.adapter = type { i32 }
%struct.sge_fl = type { i64, i32, i32, i32, %struct.rx_sw_desc* }
%struct.rx_sw_desc = type { %struct.sk_buff* }

@SGE_RX_COPY_THRES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@MAX_RX_REFILL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.adapter*, %struct.sge_fl*, i32, i32)* @get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_packet(%struct.adapter* %0, %struct.sge_fl* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_fl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rx_sw_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %12 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %13 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %12, i32 0, i32 4
  %14 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %13, align 8
  %15 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %16 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %14, i64 %17
  store %struct.rx_sw_desc* %18, %struct.rx_sw_desc** %11, align 8
  %19 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %20 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @prefetch(i32 %23)
  %25 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %26 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SGE_RX_COPY_THRES, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @alloc_skb(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @__skb_put(%struct.sk_buff* %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %6, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %49 = load i32, i32* @dma_addr, align 4
  %50 = call i32 @dma_unmap_addr(%struct.rx_sw_desc* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %53 = call i32 @pci_dma_sync_single_for_cpu(i32 %47, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %58 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @memcpy(i32 %56, i32 %61, i32 %62)
  %64 = load %struct.adapter*, %struct.adapter** %6, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %68 = load i32, i32* @dma_addr, align 4
  %69 = call i32 @dma_unmap_addr(%struct.rx_sw_desc* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %72 = call i32 @pci_dma_sync_single_for_device(i32 %66, i32 %69, i32 %70, i32 %71)
  br label %78

73:                                               ; preds = %32
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %116

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %114, %78
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %82 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %83 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @recycle_rx_buf(%struct.adapter* %80, %struct.sge_fl* %81, i64 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %86, %struct.sk_buff** %5, align 8
  br label %138

87:                                               ; preds = %4
  %88 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %89 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = icmp ult i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %87
  %97 = load %struct.adapter*, %struct.adapter** %6, align 8
  %98 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %99 = load i32, i32* @MAX_RX_REFILL, align 4
  %100 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %101 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %104 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub i32 %102, %105
  %107 = sub i32 %106, 1
  %108 = call i32 @min(i32 %99, i32 %107)
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = load i32, i32* @__GFP_COMP, align 4
  %111 = or i32 %109, %110
  %112 = call i64 @refill_fl(%struct.adapter* %97, %struct.sge_fl* %98, i32 %108, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %96
  br label %79

115:                                              ; preds = %96, %87
  br label %116

116:                                              ; preds = %115, %76
  %117 = load %struct.adapter*, %struct.adapter** %6, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %121 = load i32, i32* @dma_addr, align 4
  %122 = call i32 @dma_unmap_addr(%struct.rx_sw_desc* %120, i32 %121)
  %123 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %124 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %127 = call i32 @pci_unmap_single(i32 %119, i32 %122, i32 %125, i32 %126)
  %128 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %129 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %128, i32 0, i32 0
  %130 = load %struct.sk_buff*, %struct.sk_buff** %129, align 8
  store %struct.sk_buff* %130, %struct.sk_buff** %10, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @skb_put(%struct.sk_buff* %131, i32 %132)
  %134 = load %struct.adapter*, %struct.adapter** %6, align 8
  %135 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %136 = call i32 @__refill_fl(%struct.adapter* %134, %struct.sge_fl* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %137, %struct.sk_buff** %5, align 8
  br label %138

138:                                              ; preds = %116, %79
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %139
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.rx_sw_desc*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @recycle_rx_buf(%struct.adapter*, %struct.sge_fl*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @refill_fl(%struct.adapter*, %struct.sge_fl*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__refill_fl(%struct.adapter*, %struct.sge_fl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
