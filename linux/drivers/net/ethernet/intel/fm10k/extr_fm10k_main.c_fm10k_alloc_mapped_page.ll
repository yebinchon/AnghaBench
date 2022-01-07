; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fm10k_rx_buffer = type { i64, %struct.page*, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_ring*, %struct.fm10k_rx_buffer*)* @fm10k_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_alloc_mapped_page(%struct.fm10k_ring* %0, %struct.fm10k_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %struct.fm10k_rx_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %4, align 8
  store %struct.fm10k_rx_buffer* %1, %struct.fm10k_rx_buffer** %5, align 8
  %8 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %8, i32 0, i32 1
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i64 @likely(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = call %struct.page* (...) @dev_alloc_page()
  store %struct.page* %16, %struct.page** %6, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = icmp ne %struct.page* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %25 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %15
  %30 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %31 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_map_page(i32 %32, %struct.page* %33, i32 0, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %38 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @dma_mapping_error(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %29
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @__free_page(%struct.page* %44)
  %46 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %47 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %60

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %56, i32 0, i32 1
  store %struct.page* %55, %struct.page** %57, align 8
  %58 = load %struct.fm10k_rx_buffer*, %struct.fm10k_rx_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.fm10k_rx_buffer, %struct.fm10k_rx_buffer* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %43, %23, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @dev_alloc_page(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
