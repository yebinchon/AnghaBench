; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_dma_ring_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*, %struct.rocker_dma_ring_info*)* @rocker_dma_ring_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_ring_destroy(%struct.rocker* %0, %struct.rocker_dma_ring_info* %1) #0 {
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.rocker_dma_ring_info*, align 8
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  store %struct.rocker_dma_ring_info* %1, %struct.rocker_dma_ring_info** %4, align 8
  %5 = load %struct.rocker*, %struct.rocker** %3, align 8
  %6 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %7 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DMA_DESC_ADDR(i32 %8)
  %10 = call i32 @rocker_write64(%struct.rocker* %5, i32 %9, i32 0)
  %11 = load %struct.rocker*, %struct.rocker** %3, align 8
  %12 = getelementptr inbounds %struct.rocker, %struct.rocker* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %15 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %21 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %24 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_free_consistent(i32 %13, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %28 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  ret void
}

declare dso_local i32 @rocker_write64(%struct.rocker*, i32, i32) #1

declare dso_local i32 @DMA_DESC_ADDR(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
