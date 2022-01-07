; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_freeq_alloc_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_freeq_alloc_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.gemini_ethernet = type { i32, i32, %struct.gmac_rxdesc*, %struct.gmac_queue_page* }
%struct.gmac_rxdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.gmac_queue_page = type { %struct.page*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"allocate page %d fragment length %d fragments per page %d, freeq entry %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"page %d, DMA addr: %08x, page %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.gemini_ethernet*, i32)* @geth_freeq_alloc_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @geth_freeq_alloc_map_page(%struct.gemini_ethernet* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.gemini_ethernet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmac_rxdesc*, align 8
  %7 = alloca %struct.gmac_queue_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.gemini_ethernet* %0, %struct.gemini_ethernet** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.page* @alloc_page(i32 %13)
  store %struct.page* %14, %struct.page** %11, align 8
  %15 = load %struct.page*, %struct.page** %11, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %133

18:                                               ; preds = %2
  %19 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %20 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.page*, %struct.page** %11, align 8
  %23 = call i32 @page_address(%struct.page* %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i8* @dma_map_single(i32 %21, i32 %23, i32 %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %28 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @dma_mapping_error(i32 %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = call i32 @put_page(%struct.page* %34)
  store %struct.page* null, %struct.page** %3, align 8
  br label %133

36:                                               ; preds = %18
  %37 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %38 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %43 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub i32 %41, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %47 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %46, i32 0, i32 2
  %48 = load %struct.gmac_rxdesc*, %struct.gmac_rxdesc** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gmac_rxdesc, %struct.gmac_rxdesc* %48, i64 %52
  store %struct.gmac_rxdesc* %53, %struct.gmac_rxdesc** %6, align 8
  %54 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %55 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = load %struct.gmac_rxdesc*, %struct.gmac_rxdesc** %6, align 8
  %62 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %60, %struct.gmac_rxdesc* %61)
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %79, %36
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.gmac_rxdesc*, %struct.gmac_rxdesc** %6, align 8
  %71 = getelementptr inbounds %struct.gmac_rxdesc, %struct.gmac_rxdesc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.gmac_rxdesc*, %struct.gmac_rxdesc** %6, align 8
  %74 = getelementptr inbounds %struct.gmac_rxdesc, %struct.gmac_rxdesc* %73, i32 1
  store %struct.gmac_rxdesc* %74, %struct.gmac_rxdesc** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr i8, i8* %76, i64 %77
  store i8* %78, i8** %10, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %12, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %84 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %83, i32 0, i32 3
  %85 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %85, i64 %87
  store %struct.gmac_queue_page* %88, %struct.gmac_queue_page** %7, align 8
  %89 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %7, align 8
  %90 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %89, i32 0, i32 0
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = icmp ne %struct.page* %91, null
  br i1 %92, label %93, label %116

93:                                               ; preds = %82
  %94 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %95 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %94, i32 0, i32 2
  %96 = load %struct.gmac_rxdesc*, %struct.gmac_rxdesc** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %8, align 4
  %99 = shl i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.gmac_rxdesc, %struct.gmac_rxdesc* %96, i64 %100
  %102 = getelementptr inbounds %struct.gmac_rxdesc, %struct.gmac_rxdesc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %10, align 8
  %105 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %106 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %111 = call i32 @dma_unmap_single(i32 %107, i8* %108, i32 %109, i32 %110)
  %112 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %7, align 8
  %113 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %112, i32 0, i32 0
  %114 = load %struct.page*, %struct.page** %113, align 8
  %115 = call i32 @put_page(%struct.page* %114)
  br label %116

116:                                              ; preds = %93, %82
  %117 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %4, align 8
  %118 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i8*, i8** %10, align 8
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.page*, %struct.page** %11, align 8
  %124 = ptrtoint %struct.page* %123 to i32
  %125 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %122, i32 %124)
  %126 = load i8*, i8** %10, align 8
  %127 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %7, align 8
  %128 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.page*, %struct.page** %11, align 8
  %130 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %7, align 8
  %131 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %130, i32 0, i32 0
  store %struct.page* %129, %struct.page** %131, align 8
  %132 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %132, %struct.page** %3, align 8
  br label %133

133:                                              ; preds = %116, %33, %17
  %134 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %134
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
