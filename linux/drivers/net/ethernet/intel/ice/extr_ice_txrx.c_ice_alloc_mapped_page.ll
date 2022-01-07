; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ice_rx_buf = type { i64, i64, %struct.page*, i32 }
%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ICE_RX_DMA_ATTR = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_ring*, %struct.ice_rx_buf*)* @ice_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_alloc_mapped_page(%struct.ice_ring* %0, %struct.ice_rx_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca %struct.ice_rx_buf*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store %struct.ice_rx_buf* %1, %struct.ice_rx_buf** %5, align 8
  %8 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %9 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i64 @likely(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = load i32, i32* @__GFP_NOWARN, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.page* @alloc_page(i32 %23)
  store %struct.page* %24, %struct.page** %6, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = icmp ne %struct.page* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %33 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %76

37:                                               ; preds = %20
  %38 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %39 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = load i32, i32* @ICE_RX_DMA_ATTR, align 4
  %45 = call i32 @dma_map_page_attrs(i32 %40, %struct.page* %41, i32 0, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %47 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @dma_mapping_error(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %37
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @__free_pages(%struct.page* %53, i32 0)
  %55 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %56 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %76

60:                                               ; preds = %37
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %63 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %66 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %65, i32 0, i32 2
  store %struct.page* %64, %struct.page** %66, align 8
  %67 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %68 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = load i64, i64* @USHRT_MAX, align 8
  %71 = sub nsw i64 %70, 1
  %72 = call i32 @page_ref_add(%struct.page* %69, i64 %71)
  %73 = load i64, i64* @USHRT_MAX, align 8
  %74 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %5, align 8
  %75 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %60, %52, %31, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page_attrs(i32, %struct.page*, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
