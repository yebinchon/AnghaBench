; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rings_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rings_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*)* @rocker_dma_rings_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_rings_fini(%struct.rocker* %0) #0 {
  %2 = alloca %struct.rocker*, align 8
  store %struct.rocker* %0, %struct.rocker** %2, align 8
  %3 = load %struct.rocker*, %struct.rocker** %2, align 8
  %4 = load %struct.rocker*, %struct.rocker** %2, align 8
  %5 = getelementptr inbounds %struct.rocker, %struct.rocker* %4, i32 0, i32 1
  %6 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %7 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %3, i32* %5, i32 %6)
  %8 = load %struct.rocker*, %struct.rocker** %2, align 8
  %9 = load %struct.rocker*, %struct.rocker** %2, align 8
  %10 = getelementptr inbounds %struct.rocker, %struct.rocker* %9, i32 0, i32 1
  %11 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %8, i32* %10)
  %12 = load %struct.rocker*, %struct.rocker** %2, align 8
  %13 = call i32 @rocker_dma_cmd_ring_waits_free(%struct.rocker* %12)
  %14 = load %struct.rocker*, %struct.rocker** %2, align 8
  %15 = load %struct.rocker*, %struct.rocker** %2, align 8
  %16 = getelementptr inbounds %struct.rocker, %struct.rocker* %15, i32 0, i32 0
  %17 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %18 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %14, i32* %16, i32 %17)
  %19 = load %struct.rocker*, %struct.rocker** %2, align 8
  %20 = load %struct.rocker*, %struct.rocker** %2, align 8
  %21 = getelementptr inbounds %struct.rocker, %struct.rocker* %20, i32 0, i32 0
  %22 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %19, i32* %21)
  ret void
}

declare dso_local i32 @rocker_dma_ring_bufs_free(%struct.rocker*, i32*, i32) #1

declare dso_local i32 @rocker_dma_ring_destroy(%struct.rocker*, i32*) #1

declare dso_local i32 @rocker_dma_cmd_ring_waits_free(%struct.rocker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
