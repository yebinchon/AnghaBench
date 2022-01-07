; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_clear_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_clear_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sge_fl = type { i32, i32, i64 }
%struct.rx_sw_desc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.sge_fl*, %struct.rx_sw_desc*)* @clear_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_rx_desc(%struct.pci_dev* %0, %struct.sge_fl* %1, %struct.rx_sw_desc* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.sge_fl*, align 8
  %6 = alloca %struct.rx_sw_desc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %5, align 8
  store %struct.rx_sw_desc* %2, %struct.rx_sw_desc** %6, align 8
  %7 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %8 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %3
  %12 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %13 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %19 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %25 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %17
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %33 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %37 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %40 = call i32 @pci_unmap_page(%struct.pci_dev* %31, i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %17
  %42 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %43 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @put_page(i32* %45)
  %47 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %48 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %66

50:                                               ; preds = %11, %3
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %53 = load i32, i32* @dma_addr, align 4
  %54 = call i32 @dma_unmap_addr(%struct.rx_sw_desc* %52, i32 %53)
  %55 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %56 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %59 = call i32 @pci_unmap_single(%struct.pci_dev* %51, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %61 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree_skb(i32* %62)
  %64 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %65 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %50, %41
  ret void
}

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.rx_sw_desc*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
