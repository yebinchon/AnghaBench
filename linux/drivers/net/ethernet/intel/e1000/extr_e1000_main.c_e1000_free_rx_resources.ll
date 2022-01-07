; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_rx_ring*)* @e1000_free_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_free_rx_resources(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_rx_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %4, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %11 = call i32 @e1000_clean_rx_ring(%struct.e1000_adapter* %9, %struct.e1000_rx_ring* %10)
  %12 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @vfree(i32* %14)
  %16 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_free_coherent(i32* %19, i32 %22, i32* %25, i32 %28)
  %30 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @e1000_clean_rx_ring(%struct.e1000_adapter*, %struct.e1000_rx_ring*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
