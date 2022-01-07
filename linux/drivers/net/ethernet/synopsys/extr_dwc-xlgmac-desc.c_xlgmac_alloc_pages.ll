; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }
%struct.xlgmac_page_alloc = type { i32, i32, i64, %struct.page* }
%struct.page = type { i32 }

@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*, %struct.xlgmac_page_alloc*, i32, i32)* @xlgmac_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_alloc_pages(%struct.xlgmac_pdata* %0, %struct.xlgmac_page_alloc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.xlgmac_page_alloc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %6, align 8
  store %struct.xlgmac_page_alloc* %1, %struct.xlgmac_page_alloc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* null, %struct.page** %10, align 8
  %12 = load i32, i32* @__GFP_COMP, align 4
  %13 = load i32, i32* @__GFP_NOWARN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %27, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.page* @alloc_pages(i32 %21, i32 %22)
  store %struct.page* %23, %struct.page** %10, align 8
  %24 = load %struct.page*, %struct.page** %10, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  br label %17

30:                                               ; preds = %26, %17
  %31 = load %struct.page*, %struct.page** %10, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %71

36:                                               ; preds = %30
  %37 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %38 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_map_page(i32 %39, %struct.page* %40, i32 0, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %47 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @dma_mapping_error(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.page*, %struct.page** %10, align 8
  %54 = call i32 @put_page(%struct.page* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %71

57:                                               ; preds = %36
  %58 = load %struct.page*, %struct.page** %10, align 8
  %59 = load %struct.xlgmac_page_alloc*, %struct.xlgmac_page_alloc** %7, align 8
  %60 = getelementptr inbounds %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc* %59, i32 0, i32 3
  store %struct.page* %58, %struct.page** %60, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.xlgmac_page_alloc*, %struct.xlgmac_page_alloc** %7, align 8
  %65 = getelementptr inbounds %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.xlgmac_page_alloc*, %struct.xlgmac_page_alloc** %7, align 8
  %67 = getelementptr inbounds %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.xlgmac_page_alloc*, %struct.xlgmac_page_alloc** %7, align 8
  %70 = getelementptr inbounds %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %57, %52, %33
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
