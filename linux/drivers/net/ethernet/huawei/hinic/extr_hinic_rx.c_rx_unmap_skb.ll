; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_unmap_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_unmap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_rxq*, i32)* @rx_unmap_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_unmap_skb(%struct.hinic_rxq* %0, i32 %1) #0 {
  %3 = alloca %struct.hinic_rxq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca %struct.hinic_hwdev*, align 8
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hinic_rxq*, %struct.hinic_rxq** %3, align 8
  %10 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.hinic_dev* @netdev_priv(i32 %11)
  store %struct.hinic_dev* %12, %struct.hinic_dev** %5, align 8
  %13 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %13, i32 0, i32 0
  %15 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %14, align 8
  store %struct.hinic_hwdev* %15, %struct.hinic_hwdev** %6, align 8
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %6, align 8
  %17 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  store %struct.hinic_hwif* %18, %struct.hinic_hwif** %7, align 8
  %19 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %20 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %8, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.hinic_rxq*, %struct.hinic_rxq** %3, align 8
  %26 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @dma_unmap_single(i32* %23, i32 %24, i32 %29, i32 %30)
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
