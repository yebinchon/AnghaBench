; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_alloc_mapped_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_alloc_mapped_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i40e_rx_buffer = type { i64, i32, %struct.page*, i32 }
%struct.page = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@I40E_RX_DMA_ATTR = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, %struct.i40e_rx_buffer*)* @i40e_alloc_mapped_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_alloc_mapped_page(%struct.i40e_ring* %0, %struct.i40e_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca %struct.i40e_rx_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store %struct.i40e_rx_buffer* %1, %struct.i40e_rx_buffer** %5, align 8
  %8 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i64 @likely(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %22 = call i32 @i40e_rx_pg_order(%struct.i40e_ring* %21)
  %23 = call %struct.page* @dev_alloc_pages(i32 %22)
  store %struct.page* %23, %struct.page** %6, align 8
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = icmp ne %struct.page* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %80

36:                                               ; preds = %20
  %37 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %38 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %42 = call i32 @i40e_rx_pg_size(%struct.i40e_ring* %41)
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = load i32, i32* @I40E_RX_DMA_ATTR, align 4
  %45 = call i32 @dma_map_page_attrs(i32 %39, %struct.page* %40, i32 0, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @dma_mapping_error(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %36
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %55 = call i32 @i40e_rx_pg_order(%struct.i40e_ring* %54)
  %56 = call i32 @__free_pages(%struct.page* %53, i32 %55)
  %57 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %58 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %80

62:                                               ; preds = %36
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %67, i32 0, i32 2
  store %struct.page* %66, %struct.page** %68, align 8
  %69 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %70 = call i32 @i40e_rx_offset(%struct.i40e_ring* %69)
  %71 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = load i64, i64* @USHRT_MAX, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @page_ref_add(%struct.page* %73, i64 %75)
  %77 = load i64, i64* @USHRT_MAX, align 8
  %78 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %79 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %62, %52, %30, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @dev_alloc_pages(i32) #1

declare dso_local i32 @i40e_rx_pg_order(%struct.i40e_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page_attrs(i32, %struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @i40e_rx_pg_size(%struct.i40e_ring*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @i40e_rx_offset(%struct.i40e_ring*) #1

declare dso_local i32 @page_ref_add(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
