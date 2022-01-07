; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.adapter = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.freelQ = type { i64, i32, %struct.freelQ_ce* }
%struct.freelQ_ce = type { %struct.sk_buff* }

@copybreak = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.adapter*, %struct.freelQ*, i32)* @get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_packet(%struct.adapter* %0, %struct.freelQ* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.freelQ*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.freelQ_ce*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.freelQ* %1, %struct.freelQ** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %12 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %11, i32 0, i32 2
  %13 = load %struct.freelQ_ce*, %struct.freelQ_ce** %12, align 8
  %14 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %15 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %13, i64 %16
  store %struct.freelQ_ce* %17, %struct.freelQ_ce** %8, align 8
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @copybreak, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %3
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.sk_buff* @napi_alloc_skb(i32* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %69

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @skb_put(%struct.sk_buff* %33, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %37 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %38 = load i32, i32* @dma_addr, align 4
  %39 = call i32 @dma_unmap_addr(%struct.freelQ_ce* %37, i32 %38)
  %40 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %41 = load i32, i32* @dma_len, align 4
  %42 = call i32 @dma_unmap_len(%struct.freelQ_ce* %40, i32 %41)
  %43 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %44 = call i32 @pci_dma_sync_single_for_cpu(%struct.pci_dev* %36, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %46 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %47, i32 %50, i32 %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %54 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %55 = load i32, i32* @dma_addr, align 4
  %56 = call i32 @dma_unmap_addr(%struct.freelQ_ce* %54, i32 %55)
  %57 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %58 = load i32, i32* @dma_len, align 4
  %59 = call i32 @dma_unmap_len(%struct.freelQ_ce* %57, i32 %58)
  %60 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %61 = call i32 @pci_dma_sync_single_for_device(%struct.pci_dev* %53, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %63 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %64 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @recycle_fl_buf(%struct.freelQ* %62, i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %4, align 8
  br label %101

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %71 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %76 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %77 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @recycle_fl_buf(%struct.freelQ* %75, i64 %78)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %101

80:                                               ; preds = %69
  %81 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %82 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %83 = load i32, i32* @dma_addr, align 4
  %84 = call i32 @dma_unmap_addr(%struct.freelQ_ce* %82, i32 %83)
  %85 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %86 = load i32, i32* @dma_len, align 4
  %87 = call i32 @dma_unmap_len(%struct.freelQ_ce* %85, i32 %86)
  %88 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %89 = call i32 @pci_unmap_single(%struct.pci_dev* %81, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.freelQ_ce*, %struct.freelQ_ce** %8, align 8
  %91 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %90, i32 0, i32 0
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %10, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @prefetch(i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @skb_put(%struct.sk_buff* %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %4, align 8
  br label %101

101:                                              ; preds = %80, %74, %32
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %102
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.freelQ_ce*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.freelQ_ce*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @recycle_fl_buf(%struct.freelQ*, i64) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @prefetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
