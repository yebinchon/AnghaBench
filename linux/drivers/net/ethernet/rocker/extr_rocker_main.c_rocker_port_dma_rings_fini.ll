; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dma_rings_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dma_rings_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32, i32, %struct.rocker* }
%struct.rocker = type { i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker_port*)* @rocker_port_dma_rings_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_port_dma_rings_fini(%struct.rocker_port* %0) #0 {
  %2 = alloca %struct.rocker_port*, align 8
  %3 = alloca %struct.rocker*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %2, align 8
  %4 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %5 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %4, i32 0, i32 2
  %6 = load %struct.rocker*, %struct.rocker** %5, align 8
  store %struct.rocker* %6, %struct.rocker** %3, align 8
  %7 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %8 = call i32 @rocker_dma_rx_ring_skbs_free(%struct.rocker_port* %7)
  %9 = load %struct.rocker*, %struct.rocker** %3, align 8
  %10 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %11 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %10, i32 0, i32 1
  %12 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %13 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %9, i32* %11, i32 %12)
  %14 = load %struct.rocker*, %struct.rocker** %3, align 8
  %15 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %16 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %15, i32 0, i32 1
  %17 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %14, i32* %16)
  %18 = load %struct.rocker*, %struct.rocker** %3, align 8
  %19 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %20 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %19, i32 0, i32 0
  %21 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %22 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %18, i32* %20, i32 %21)
  %23 = load %struct.rocker*, %struct.rocker** %3, align 8
  %24 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %25 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %24, i32 0, i32 0
  %26 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %23, i32* %25)
  ret void
}

declare dso_local i32 @rocker_dma_rx_ring_skbs_free(%struct.rocker_port*) #1

declare dso_local i32 @rocker_dma_ring_bufs_free(%struct.rocker*, i32*, i32) #1

declare dso_local i32 @rocker_dma_ring_destroy(%struct.rocker*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
