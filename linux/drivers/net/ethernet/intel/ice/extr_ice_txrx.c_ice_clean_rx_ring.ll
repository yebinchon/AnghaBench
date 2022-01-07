; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i64, i32, i64, i64, i64, %struct.ice_rx_buf*, %struct.ice_rx_buf*, %struct.device* }
%struct.ice_rx_buf = type { i64, i32*, i32, i32, i32* }
%struct.device = type { i32 }

@ICE_RXBUF_2048 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICE_RX_DMA_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_clean_rx_ring(%struct.ice_ring* %0) #0 {
  %2 = alloca %struct.ice_ring*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ice_rx_buf*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %2, align 8
  %6 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %7 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %6, i32 0, i32 7
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %10 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %9, i32 0, i32 6
  %11 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %10, align 8
  %12 = icmp ne %struct.ice_rx_buf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %100

14:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %74, %14
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %18 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %15
  %22 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %23 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %22, i32 0, i32 6
  %24 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %24, i64 %25
  store %struct.ice_rx_buf* %26, %struct.ice_rx_buf** %5, align 8
  %27 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %28 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %33 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dev_kfree_skb(i32* %34)
  %36 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %37 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %21
  %39 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %40 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %74

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %47 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %50 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @ICE_RXBUF_2048, align 4
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @dma_sync_single_range_for_cpu(%struct.device* %45, i32 %48, i64 %51, i32 %52, i32 %53)
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %57 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = load i32, i32* @ICE_RX_DMA_ATTR, align 4
  %62 = call i32 @dma_unmap_page_attrs(%struct.device* %55, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %64 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %67 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @__page_frag_cache_drain(i32* %65, i32 %68)
  %70 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %71 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %73 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %44, %43
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %15

77:                                               ; preds = %15
  %78 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %79 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %78, i32 0, i32 6
  %80 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %79, align 8
  %81 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %82 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 32, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(%struct.ice_rx_buf* %80, i32 0, i32 %85)
  %87 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %88 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %87, i32 0, i32 5
  %89 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %88, align 8
  %90 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %91 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(%struct.ice_rx_buf* %89, i32 0, i32 %92)
  %94 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %95 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %97 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %99 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %77, %13
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(%struct.device*, i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page_attrs(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

declare dso_local i32 @memset(%struct.ice_rx_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
