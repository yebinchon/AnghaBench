; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, i64, %struct.ixgbe_rx_buffer*, i32, i64 }
%struct.ixgbe_rx_buffer = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBE_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*)* @ixgbe_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_clean_rx_ring(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_rx_buffer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %6 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %9, i32 0, i32 4
  %11 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %11, i64 %12
  store %struct.ixgbe_rx_buffer* %13, %struct.ixgbe_rx_buffer** %4, align 8
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %20 = call i32 @ixgbe_xsk_clean_rx_ring(%struct.ixgbe_ring* %19)
  br label %105

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %103, %21
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %22
  %29 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %29, i32 0, i32 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %34, i32 0, i32 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %51 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %50)
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = load i32, i32* @IXGBE_RX_DMA_ATTR, align 4
  %54 = call i32 @dma_unmap_page_attrs(i32 %45, i32 %49, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %33
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @dev_kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %28
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %69 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %68)
  %70 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %71 = call i32 @dma_sync_single_range_for_cpu(i32 %61, i32 %64, i32 %67, i32 %69, i32 %70)
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %79 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %78)
  %80 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %81 = load i32, i32* @IXGBE_RX_DMA_ATTR, align 4
  %82 = call i32 @dma_unmap_page_attrs(i32 %74, i32 %77, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %87 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @__page_frag_cache_drain(i32 %85, i32 %88)
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %3, align 8
  %92 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %4, align 8
  %93 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %92, i32 1
  store %struct.ixgbe_rx_buffer* %93, %struct.ixgbe_rx_buffer** %4, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %96 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %58
  store i64 0, i64* %3, align 8
  %100 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %101 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %100, i32 0, i32 4
  %102 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %101, align 8
  store %struct.ixgbe_rx_buffer* %102, %struct.ixgbe_rx_buffer** %4, align 8
  br label %103

103:                                              ; preds = %99, %58
  br label %22

104:                                              ; preds = %22
  br label %105

105:                                              ; preds = %104, %18
  %106 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %107 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %109 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  ret void
}

declare dso_local i32 @ixgbe_xsk_clean_rx_ring(%struct.ixgbe_ring*) #1

declare dso_local %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i32 @__page_frag_cache_drain(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
