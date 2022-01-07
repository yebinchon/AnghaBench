; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, i64, i64, i64, %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer*, i32, i32, i64, i32* }
%struct.i40e_rx_buffer = type { i64, i32*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@I40E_RX_DMA_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_clean_rx_ring(%struct.i40e_ring* %0) #0 {
  %2 = alloca %struct.i40e_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40e_rx_buffer*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %2, align 8
  %6 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %6, i32 0, i32 6
  %8 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %7, align 8
  %9 = icmp ne %struct.i40e_rx_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %113

11:                                               ; preds = %1
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 10
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 10
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @dev_kfree_skb(i32* %19)
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %21, i32 0, i32 10
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %30 = call i32 @i40e_xsk_clean_rx_ring(%struct.i40e_ring* %29)
  br label %90

31:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %86, %31
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %35 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %32
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 6
  %41 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %41, i64 %42
  store %struct.i40e_rx_buffer* %43, %struct.i40e_rx_buffer** %5, align 8
  %44 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %86

49:                                               ; preds = %38
  %50 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %51 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_sync_single_range_for_cpu(i32 %52, i32 %55, i64 %58, i32 %61, i32 %62)
  %64 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %71 = call i32 @i40e_rx_pg_size(%struct.i40e_ring* %70)
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = load i32, i32* @I40E_RX_DMA_ATTR, align 4
  %74 = call i32 @dma_unmap_page_attrs(i32 %66, i32 %69, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %76 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %79 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @__page_frag_cache_drain(i32* %77, i32 %80)
  %82 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %83 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %49, %48
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %32

89:                                               ; preds = %32
  br label %90

90:                                               ; preds = %89, %28
  %91 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %92 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = mul i64 24, %93
  store i64 %94, i64* %3, align 8
  %95 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %96 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %95, i32 0, i32 6
  %97 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %96, align 8
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @memset(%struct.i40e_rx_buffer* %97, i32 0, i64 %98)
  %100 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %101 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %100, i32 0, i32 5
  %102 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %101, align 8
  %103 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %104 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memset(%struct.i40e_rx_buffer* %102, i32 0, i64 %105)
  %107 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %108 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %110 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %112 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %90, %10
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @i40e_xsk_clean_rx_ring(%struct.i40e_ring*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i40e_rx_pg_size(%struct.i40e_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

declare dso_local i32 @memset(%struct.i40e_rx_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
