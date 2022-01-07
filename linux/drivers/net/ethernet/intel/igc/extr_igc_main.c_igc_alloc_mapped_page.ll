; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.igc_rx_buffer = type { i32, i32, %struct.page*, i32 }
%struct.page = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IGC_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_ring*, %struct.igc_rx_buffer*)* @igc_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_alloc_mapped_page(%struct.igc_ring* %0, %struct.igc_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igc_ring*, align 8
  %5 = alloca %struct.igc_rx_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.igc_ring* %0, %struct.igc_ring** %4, align 8
  store %struct.igc_rx_buffer* %1, %struct.igc_rx_buffer** %5, align 8
  %8 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i64 @likely(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %17 = call i32 @igc_rx_pg_order(%struct.igc_ring* %16)
  %18 = call %struct.page* @dev_alloc_pages(i32 %17)
  store %struct.page* %18, %struct.page** %6, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = icmp ne %struct.page* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %27 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %68

31:                                               ; preds = %15
  %32 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %33 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %37 = call i32 @igc_rx_pg_size(%struct.igc_ring* %36)
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = load i32, i32* @IGC_RX_DMA_ATTR, align 4
  %40 = call i32 @dma_map_page_attrs(i32 %34, %struct.page* %35, i32 0, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %42 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @dma_mapping_error(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %31
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call i32 @__free_page(%struct.page* %48)
  %50 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %51 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %68

55:                                               ; preds = %31
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %60, i32 0, i32 2
  store %struct.page* %59, %struct.page** %61, align 8
  %62 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %63 = call i32 @igc_rx_offset(%struct.igc_ring* %62)
  %64 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.igc_rx_buffer*, %struct.igc_rx_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.igc_rx_buffer, %struct.igc_rx_buffer* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %55, %47, %25, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @dev_alloc_pages(i32) #1

declare dso_local i32 @igc_rx_pg_order(%struct.igc_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page_attrs(i32, %struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @igc_rx_pg_size(%struct.igc_ring*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @igc_rx_offset(%struct.igc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
