; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_rx_buffer = type { i32, i32, i32, i32 }
%struct.ixgbevf_ring = type { i64, i32, %struct.ixgbevf_rx_buffer* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ixgbevf_rx_buffer* (%struct.ixgbevf_ring*, i32)* @ixgbevf_get_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ixgbevf_rx_buffer* @ixgbevf_get_rx_buffer(%struct.ixgbevf_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_rx_buffer*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %6, i32 0, i32 2
  %8 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %7, align 8
  %9 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %8, i64 %11
  store %struct.ixgbevf_rx_buffer* %12, %struct.ixgbevf_rx_buffer** %5, align 8
  %13 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @prefetchw(i32 %15)
  %17 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_sync_single_range_for_cpu(i32 %19, i32 %22, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  ret %struct.ixgbevf_rx_buffer* %33
}

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
