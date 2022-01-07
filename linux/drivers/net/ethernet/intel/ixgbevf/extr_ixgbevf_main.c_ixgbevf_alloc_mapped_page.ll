; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ixgbevf_rx_buffer = type { i32, i32, %struct.page*, i32 }
%struct.page = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBEVF_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*)* @ixgbevf_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_alloc_mapped_page(%struct.ixgbevf_ring* %0, %struct.ixgbevf_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store %struct.ixgbevf_rx_buffer* %1, %struct.ixgbevf_rx_buffer** %5, align 8
  %8 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i64 @likely(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %17 = call i32 @ixgbevf_rx_pg_order(%struct.ixgbevf_ring* %16)
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
  %26 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %75

31:                                               ; preds = %15
  %32 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %37 = call i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring* %36)
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = load i32, i32* @IXGBEVF_RX_DMA_ATTR, align 4
  %40 = call i32 @dma_map_page_attrs(i32 %34, %struct.page* %35, i32 0, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @dma_mapping_error(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %50 = call i32 @ixgbevf_rx_pg_order(%struct.ixgbevf_ring* %49)
  %51 = call i32 @__free_pages(%struct.page* %48, i32 %50)
  %52 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %75

57:                                               ; preds = %31
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.page*, %struct.page** %6, align 8
  %62 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %62, i32 0, i32 2
  store %struct.page* %61, %struct.page** %63, align 8
  %64 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %65 = call i32 @ixgbevf_rx_offset(%struct.ixgbevf_ring* %64)
  %66 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %57, %47, %25, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @dev_alloc_pages(i32) #1

declare dso_local i32 @ixgbevf_rx_pg_order(%struct.ixgbevf_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page_attrs(i32, %struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @ixgbevf_rx_offset(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
