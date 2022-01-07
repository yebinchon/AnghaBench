; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_put_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_put_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iavf_rx_buffer = type { i32*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IAVF_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_ring*, %struct.iavf_rx_buffer*)* @iavf_put_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_put_rx_buffer(%struct.iavf_ring* %0, %struct.iavf_rx_buffer* %1) #0 {
  %3 = alloca %struct.iavf_ring*, align 8
  %4 = alloca %struct.iavf_rx_buffer*, align 8
  store %struct.iavf_ring* %0, %struct.iavf_ring** %3, align 8
  store %struct.iavf_rx_buffer* %1, %struct.iavf_rx_buffer** %4, align 8
  %5 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %6 = icmp ne %struct.iavf_rx_buffer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %43

8:                                                ; preds = %2
  %9 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %10 = call i64 @iavf_can_reuse_rx_page(%struct.iavf_rx_buffer* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %14 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %15 = call i32 @iavf_reuse_rx_page(%struct.iavf_ring* %13, %struct.iavf_rx_buffer* %14)
  %16 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %17 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %40

21:                                               ; preds = %8
  %22 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %23 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %29 = call i32 @iavf_rx_pg_size(%struct.iavf_ring* %28)
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = load i32, i32* @IAVF_RX_DMA_ATTR, align 4
  %32 = call i32 @dma_unmap_page_attrs(i32 %24, i32 %27, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__page_frag_cache_drain(i32* %35, i32 %38)
  br label %40

40:                                               ; preds = %21, %12
  %41 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %7
  ret void
}

declare dso_local i64 @iavf_can_reuse_rx_page(%struct.iavf_rx_buffer*) #1

declare dso_local i32 @iavf_reuse_rx_page(%struct.iavf_ring*, %struct.iavf_rx_buffer*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iavf_rx_pg_size(%struct.iavf_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
