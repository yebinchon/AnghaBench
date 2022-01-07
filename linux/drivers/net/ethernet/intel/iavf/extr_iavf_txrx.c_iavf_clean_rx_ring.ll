; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i64, i64, i64, i64, i64, %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer*, i32, i32, i32* }
%struct.iavf_rx_buffer = type { i64, i32*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IAVF_RX_DMA_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_clean_rx_ring(%struct.iavf_ring* %0) #0 {
  %2 = alloca %struct.iavf_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iavf_rx_buffer*, align 8
  store %struct.iavf_ring* %0, %struct.iavf_ring** %2, align 8
  %6 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %6, i32 0, i32 6
  %8 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %7, align 8
  %9 = icmp ne %struct.iavf_rx_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %104

11:                                               ; preds = %1
  %12 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %12, i32 0, i32 9
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %18 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %17, i32 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @dev_kfree_skb(i32* %19)
  %21 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %22 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %21, i32 0, i32 9
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %11
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %78, %23
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %27 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %24
  %31 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %32 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %31, i32 0, i32 6
  %33 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %33, i64 %34
  store %struct.iavf_rx_buffer* %35, %struct.iavf_rx_buffer** %5, align 8
  %36 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %78

41:                                               ; preds = %30
  %42 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %43 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %52 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_sync_single_range_for_cpu(i32 %44, i32 %47, i64 %50, i32 %53, i32 %54)
  %56 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %57 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %63 = call i32 @iavf_rx_pg_size(%struct.iavf_ring* %62)
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = load i32, i32* @IAVF_RX_DMA_ATTR, align 4
  %66 = call i32 @dma_unmap_page_attrs(i32 %58, i32 %61, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__page_frag_cache_drain(i32* %69, i32 %72)
  %74 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.iavf_rx_buffer, %struct.iavf_rx_buffer* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %41, %40
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %4, align 8
  br label %24

81:                                               ; preds = %24
  %82 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %83 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 24, %84
  store i64 %85, i64* %3, align 8
  %86 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %87 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %86, i32 0, i32 6
  %88 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %87, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @memset(%struct.iavf_rx_buffer* %88, i32 0, i64 %89)
  %91 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %92 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %91, i32 0, i32 5
  %93 = load %struct.iavf_rx_buffer*, %struct.iavf_rx_buffer** %92, align 8
  %94 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %95 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @memset(%struct.iavf_rx_buffer* %93, i32 0, i64 %96)
  %98 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %99 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %101 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.iavf_ring*, %struct.iavf_ring** %2, align 8
  %103 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %81, %10
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iavf_rx_pg_size(%struct.iavf_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

declare dso_local i32 @memset(%struct.iavf_rx_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
