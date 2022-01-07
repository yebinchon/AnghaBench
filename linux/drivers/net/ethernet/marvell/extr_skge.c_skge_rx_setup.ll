; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_rx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.skge_element = type { %struct.sk_buff*, %struct.skge_rx_desc* }
%struct.skge_rx_desc = type { i32, i64, i64, i8*, i8*, i32, i32 }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i8* null, align 8
@BMU_OWN = common dso_local global i32 0, align 4
@BMU_STF = common dso_local global i32 0, align 4
@BMU_IRQ_EOF = common dso_local global i32 0, align 4
@BMU_TCP_CHECK = common dso_local global i32 0, align 4
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_port*, %struct.skge_element*, %struct.sk_buff*, i32)* @skge_rx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_rx_setup(%struct.skge_port* %0, %struct.skge_element* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.skge_element*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.skge_rx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %6, align 8
  store %struct.skge_element* %1, %struct.skge_element** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.skge_element*, %struct.skge_element** %7, align 8
  %13 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %12, i32 0, i32 1
  %14 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %13, align 8
  store %struct.skge_rx_desc* %14, %struct.skge_rx_desc** %10, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %25 = call i32 @pci_map_single(i32 %19, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %27 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @pci_dma_mapping_error(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %77

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @lower_32_bits(i32 %36)
  %38 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %39 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @upper_32_bits(i32 %40)
  %42 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %43 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load %struct.skge_element*, %struct.skge_element** %7, align 8
  %46 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %45, i32 0, i32 0
  store %struct.sk_buff* %44, %struct.sk_buff** %46, align 8
  %47 = load i8*, i8** @ETH_HLEN, align 8
  %48 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %49 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @ETH_HLEN, align 8
  %51 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %52 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %54 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %56 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = call i32 (...) @wmb()
  %58 = load i32, i32* @BMU_OWN, align 4
  %59 = load i32, i32* @BMU_STF, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BMU_IRQ_EOF, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @BMU_TCP_CHECK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %10, align 8
  %68 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.skge_element*, %struct.skge_element** %7, align 8
  %70 = load i32, i32* @mapaddr, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @dma_unmap_addr_set(%struct.skge_element* %69, i32 %70, i32 %71)
  %73 = load %struct.skge_element*, %struct.skge_element** %7, align 8
  %74 = load i32, i32* @maplen, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dma_unmap_len_set(%struct.skge_element* %73, i32 %74, i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %35, %34
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.skge_element*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.skge_element*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
