; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_get_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_get_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_rx_buffer = type { i32, i32, i32, i32 }
%struct.iavf_ring = type { i64, i32, %struct.iavf_rx_buffer* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iavf_rx_buffer* (%struct.iavf_ring*, i32)* @iavf_get_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iavf_rx_buffer* @iavf_get_rx_buffer(%struct.iavf_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.iavf_rx_buffer*, align 8
  %4 = alloca %struct.iavf_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_rx_buffer*, align 8
  store %struct.iavf_ring* %0, %struct.iavf_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.iavf_rx_buffer* null, %struct.iavf_rx_buffer** %3, align 8
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.iavf_ring*, %struct.iavf_ring** %4, align 8
  %12 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %11, i32 0, i32 2
  %13 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %12, align 8
  %14 = load %struct.iavf_ring*, %struct.iavf_ring** %4, align 8
  %15 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %13, i64 %16
  store %struct.iavf_rx_buffer* %17, %struct.iavf_rx_buffer** %6, align 8
  %18 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @prefetchw(i32 %20)
  %22 = load %struct.iavf_ring*, %struct.iavf_ring** %4, align 8
  %23 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_sync_single_range_for_cpu(i32 %24, i32 %27, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %6, align 8
  store %struct.iavf_rx_buffer* %38, %struct.iavf_rx_buffer** %3, align 8
  br label %39

39:                                               ; preds = %10, %9
  %40 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %3, align 8
  ret %struct.iavf_rx_buffer* %40
}

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
