; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_page_alloc = type { i32, i32, i64, %struct.page* }
%struct.page = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.xgbe_page_alloc*, i32, i32)* @xgbe_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_alloc_pages(%struct.xgbe_prv_data* %0, %struct.xgbe_page_alloc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_page_alloc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %6, align 8
  store %struct.xgbe_page_alloc* %1, %struct.xgbe_page_alloc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* null, %struct.page** %10, align 8
  br label %14

14:                                               ; preds = %42, %4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = load i32, i32* @__GFP_COMP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @__GFP_NOWARN, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %32, %14
  %22 = load i32, i32* %13, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.page* @alloc_pages_node(i32 %25, i32 %26, i32 %27)
  store %struct.page* %28, %struct.page** %10, align 8
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %13, align 4
  br label %21

35:                                               ; preds = %31, %21
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NUMA_NO_NODE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %43, i32* %9, align 4
  br label %14

44:                                               ; preds = %38, %35
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %85

50:                                               ; preds = %44
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %52 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i32 @dma_map_page(i32 %53, %struct.page* %54, i32 0, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @dma_mapping_error(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = call i32 @put_page(%struct.page* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %85

71:                                               ; preds = %50
  %72 = load %struct.page*, %struct.page** %10, align 8
  %73 = load %struct.xgbe_page_alloc*, %struct.xgbe_page_alloc** %7, align 8
  %74 = getelementptr inbounds %struct.xgbe_page_alloc, %struct.xgbe_page_alloc* %73, i32 0, i32 3
  store %struct.page* %72, %struct.page** %74, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.xgbe_page_alloc*, %struct.xgbe_page_alloc** %7, align 8
  %79 = getelementptr inbounds %struct.xgbe_page_alloc, %struct.xgbe_page_alloc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.xgbe_page_alloc*, %struct.xgbe_page_alloc** %7, align 8
  %81 = getelementptr inbounds %struct.xgbe_page_alloc, %struct.xgbe_page_alloc* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.xgbe_page_alloc*, %struct.xgbe_page_alloc** %7, align 8
  %84 = getelementptr inbounds %struct.xgbe_page_alloc, %struct.xgbe_page_alloc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %71, %66, %47
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
