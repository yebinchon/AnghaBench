; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i64, i64, i64, i64, i32, %struct.ixgbevf_rx_buffer*, i32* }
%struct.ixgbevf_rx_buffer = type { i32, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBEVF_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*)* @ixgbevf_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_clean_rx_ring(%struct.ixgbevf_ring* %0) #0 {
  %2 = alloca %struct.ixgbevf_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbevf_rx_buffer*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %2, align 8
  %5 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @dev_kfree_skb(i32* %15)
  %17 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  br label %20

20:                                               ; preds = %71, %19
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %27, i32 0, i32 5
  %29 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %29, i64 %30
  store %struct.ixgbevf_rx_buffer* %31, %struct.ixgbevf_rx_buffer** %4, align 8
  %32 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %42 = call i32 @ixgbevf_rx_bufsz(%struct.ixgbevf_ring* %41)
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_sync_single_range_for_cpu(i32 %34, i32 %37, i32 %40, i32 %42, i32 %43)
  %45 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %52 = call i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring* %51)
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = load i32, i32* @IXGBEVF_RX_DMA_ATTR, align 4
  %55 = call i32 @dma_unmap_page_attrs(i32 %47, i32 %50, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__page_frag_cache_drain(i32 %58, i32 %61)
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %71

71:                                               ; preds = %70, %26
  br label %20

72:                                               ; preds = %20
  %73 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %78 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbevf_rx_bufsz(%struct.ixgbevf_ring*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
