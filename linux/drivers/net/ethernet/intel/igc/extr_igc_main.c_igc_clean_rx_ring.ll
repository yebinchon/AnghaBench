; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i64, i64, i64, i64, i32, %struct.igc_rx_buffer*, i32* }
%struct.igc_rx_buffer = type { i32, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IGC_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_ring*)* @igc_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_clean_rx_ring(%struct.igc_ring* %0) #0 {
  %2 = alloca %struct.igc_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.igc_rx_buffer*, align 8
  store %struct.igc_ring* %0, %struct.igc_ring** %2, align 8
  %5 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %6 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %9 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dev_kfree_skb(i32* %10)
  %12 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %13 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %12, i32 0, i32 6
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %65, %1
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %17 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %22 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %21, i32 0, i32 5
  %23 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %23, i64 %24
  store %struct.igc_rx_buffer* %25, %struct.igc_rx_buffer** %4, align 8
  %26 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %27 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %36 = call i32 @igc_rx_bufsz(%struct.igc_ring* %35)
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = call i32 @dma_sync_single_range_for_cpu(i32 %28, i32 %31, i32 %34, i32 %36, i32 %37)
  %39 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %40 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %46 = call i32 @igc_rx_pg_size(%struct.igc_ring* %45)
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = load i32, i32* @IGC_RX_DMA_ATTR, align 4
  %49 = call i32 @dma_unmap_page_attrs(i32 %41, i32 %44, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__page_frag_cache_drain(i32 %52, i32 %55)
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %61 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %65

65:                                               ; preds = %64, %20
  br label %14

66:                                               ; preds = %14
  %67 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %68 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %70 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %72 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @igc_rx_bufsz(%struct.igc_ring*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @igc_rx_pg_size(%struct.igc_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
