; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.tx_ring_info = type { i32 }

@TX_MAP_SINGLE = common dso_local global i32 0, align 4
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_MAP_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.tx_ring_info*)* @sky2_tx_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_tx_unmap(%struct.pci_dev* %0, %struct.tx_ring_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.tx_ring_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.tx_ring_info* %1, %struct.tx_ring_info** %4, align 8
  %5 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %6 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TX_MAP_SINGLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %14 = load i32, i32* @mapaddr, align 4
  %15 = call i32 @dma_unmap_addr(%struct.tx_ring_info* %13, i32 %14)
  %16 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %17 = load i32, i32* @maplen, align 4
  %18 = call i32 @dma_unmap_len(%struct.tx_ring_info* %16, i32 %17)
  %19 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %20 = call i32 @pci_unmap_single(%struct.pci_dev* %12, i32 %15, i32 %18, i32 %19)
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %23 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TX_MAP_PAGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %31 = load i32, i32* @mapaddr, align 4
  %32 = call i32 @dma_unmap_addr(%struct.tx_ring_info* %30, i32 %31)
  %33 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %34 = load i32, i32* @maplen, align 4
  %35 = call i32 @dma_unmap_len(%struct.tx_ring_info* %33, i32 %34)
  %36 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %37 = call i32 @pci_unmap_page(%struct.pci_dev* %29, i32 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %21
  br label %39

39:                                               ; preds = %38, %11
  %40 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %41 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.tx_ring_info*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.tx_ring_info*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
