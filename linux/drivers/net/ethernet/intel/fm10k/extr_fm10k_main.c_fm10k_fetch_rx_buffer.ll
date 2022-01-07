; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_fetch_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_fetch_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.fm10k_rx_buffer* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fm10k_rx_buffer = type { i32, %struct.page*, i32 }
%struct.page = type { i32 }
%union.fm10k_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { %struct.page* }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@FM10K_RX_HDR_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*)* @fm10k_fetch_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fm10k_fetch_rx_buffer(%struct.fm10k_ring* %0, %union.fm10k_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fm10k_ring*, align 8
  %6 = alloca %union.fm10k_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fm10k_rx_buffer*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %5, align 8
  store %union.fm10k_rx_desc* %1, %union.fm10k_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %6, align 8
  %13 = bitcast %union.fm10k_rx_desc* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %18 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %17, i32 0, i32 4
  %19 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %18, align 8
  %20 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %19, i64 %22
  store %struct.fm10k_rx_buffer* %23, %struct.fm10k_rx_buffer** %9, align 8
  %24 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %25 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %24, i32 0, i32 1
  %26 = load %struct.page*, %struct.page** %25, align 8
  store %struct.page* %26, %struct.page** %10, align 8
  %27 = load %struct.page*, %struct.page** %10, align 8
  %28 = call i32 @prefetchw(%struct.page* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %3
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = call i8* @page_address(%struct.page* %36)
  %38 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %39 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %37, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @prefetch(i8* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* @L1_CACHE_BYTES, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @prefetch(i8* %50)
  %52 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %53 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* @FM10K_RX_HDR_LEN, align 4
  %57 = call %struct.sk_buff* @napi_alloc_skb(i32* %55, i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %35
  %65 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %66 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %112

70:                                               ; preds = %35
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = call i32 @prefetchw(%struct.page* %73)
  br label %75

75:                                               ; preds = %70, %3
  %76 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %77 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %80 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %83 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = call i32 @dma_sync_single_range_for_cpu(i32 %78, i32 %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %6, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i64 @fm10k_add_rx_frag(%struct.fm10k_rx_buffer* %88, i32 %89, %union.fm10k_rx_desc* %90, %struct.sk_buff* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %75
  %95 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %96 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %97 = call i32 @fm10k_reuse_rx_page(%struct.fm10k_ring* %95, %struct.fm10k_rx_buffer* %96)
  br label %108

98:                                               ; preds = %75
  %99 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %100 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %103 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %107 = call i32 @dma_unmap_page(i32 %101, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %98, %94
  %109 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %9, align 8
  %110 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %109, i32 0, i32 1
  store %struct.page* null, %struct.page** %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %111, %struct.sk_buff** %4, align 8
  br label %112

112:                                              ; preds = %108, %64
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %113
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @prefetchw(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i64 @fm10k_add_rx_frag(%struct.fm10k_rx_buffer*, i32, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @fm10k_reuse_rx_page(%struct.fm10k_ring*, %struct.fm10k_rx_buffer*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
