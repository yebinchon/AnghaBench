; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_alloc_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_alloc_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.bnxt = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bnxt_rx_ring_info = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.bnxt*, i32*, %struct.bnxt_rx_ring_info*, i32)* @__bnxt_alloc_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__bnxt_alloc_rx_page(%struct.bnxt* %0, i32* %1, %struct.bnxt_rx_ring_info* %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnxt_rx_ring_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.bnxt_rx_ring_info* %2, %struct.bnxt_rx_ring_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %8, align 8
  %17 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.page* @page_pool_dev_alloc_pages(i32 %18)
  store %struct.page* %19, %struct.page** %11, align 8
  %20 = load %struct.page*, %struct.page** %11, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.page* null, %struct.page** %5, align 8
  br label %54

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %10, align 8
  %25 = load %struct.page*, %struct.page** %11, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %31 = call i32 @dma_map_page_attrs(%struct.device* %24, %struct.page* %25, i32 0, i32 %26, i32 %29, i32 %30)
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @dma_mapping_error(%struct.device* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %8, align 8
  %40 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.page*, %struct.page** %11, align 8
  %43 = call i32 @page_pool_recycle_direct(i32 %41, %struct.page* %42)
  store %struct.page* null, %struct.page** %5, align 8
  br label %54

44:                                               ; preds = %23
  %45 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %47
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %53, %struct.page** %5, align 8
  br label %54

54:                                               ; preds = %44, %38, %22
  %55 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %55
}

declare dso_local %struct.page* @page_pool_dev_alloc_pages(i32) #1

declare dso_local i32 @dma_map_page_attrs(%struct.device*, %struct.page*, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @page_pool_recycle_direct(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
