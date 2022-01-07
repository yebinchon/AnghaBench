; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_network.h_recv_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_network.h_recv_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_skb_page_info = type { i32, i64, %struct.page* }
%struct.page = type { i32 }
%struct.sk_buff = type { i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MIN_SKB_SIZE = common dso_local global i64 0, align 8
@SKB_ADJ = common dso_local global i64 0, align 8
@SKB_ADJ_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.octeon_device*, %struct.octeon_skb_page_info*)* @recv_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @recv_buffer_alloc(%struct.octeon_device* %0, %struct.octeon_skb_page_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_skb_page_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.octeon_skb_page_info*, align 8
  %9 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octeon_skb_page_info* %1, %struct.octeon_skb_page_info** %5, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.page* @alloc_page(i32 %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = icmp ne %struct.page* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %102

19:                                               ; preds = %2
  %20 = load i64, i64* @MIN_SKB_SIZE, align 8
  %21 = load i64, i64* @SKB_ADJ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call %struct.sk_buff* @dev_alloc_skb(i64 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = call i32 @__free_page(%struct.page* %31)
  %33 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %34 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %33, i32 0, i32 2
  store %struct.page* null, %struct.page** %34, align 8
  store i8* null, i8** %3, align 8
  br label %102

35:                                               ; preds = %19
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SKB_ADJ_MASK, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i64, i64* @SKB_ADJ, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SKB_ADJ_MASK, align 8
  %48 = and i64 %46, %47
  %49 = sub i64 %43, %48
  store i64 %49, i64* %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @skb_reserve(%struct.sk_buff* %50, i64 %51)
  br label %53

53:                                               ; preds = %42, %35
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.octeon_skb_page_info*
  store %struct.octeon_skb_page_info* %57, %struct.octeon_skb_page_info** %8, align 8
  %58 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_map_page(i32* %61, %struct.page* %62, i32 0, i32 %63, i32 %64)
  %66 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %67 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %69 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %73 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @dma_mapping_error(i32* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %53
  %78 = load %struct.page*, %struct.page** %6, align 8
  %79 = call i32 @__free_page(%struct.page* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  %82 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %83 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %82, i32 0, i32 2
  store %struct.page* null, %struct.page** %83, align 8
  store i8* null, i8** %3, align 8
  br label %102

84:                                               ; preds = %53
  %85 = load %struct.page*, %struct.page** %6, align 8
  %86 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %87 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %86, i32 0, i32 2
  store %struct.page* %85, %struct.page** %87, align 8
  %88 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %89 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.page*, %struct.page** %6, align 8
  %91 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %8, align 8
  %92 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %91, i32 0, i32 2
  store %struct.page* %90, %struct.page** %92, align 8
  %93 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %8, align 8
  %94 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %5, align 8
  %96 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.octeon_skb_page_info*, %struct.octeon_skb_page_info** %8, align 8
  %99 = getelementptr inbounds %struct.octeon_skb_page_info, %struct.octeon_skb_page_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = bitcast %struct.sk_buff* %100 to i8*
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %84, %77, %30, %18
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
