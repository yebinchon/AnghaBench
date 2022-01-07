; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_cleanup_freeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_cleanup_freeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.gmac_queue_page*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gmac_queue_page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GLOBAL_SWFQ_RWPTR_REG = common dso_local global i64 0, align 8
@GLOBAL_SW_FREEQ_BASE_SIZE_REG = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gemini_ethernet*)* @geth_cleanup_freeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geth_cleanup_freeq(%struct.gemini_ethernet* %0) #0 {
  %2 = alloca %struct.gemini_ethernet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gmac_queue_page*, align 8
  %9 = alloca i32, align 4
  store %struct.gemini_ethernet* %0, %struct.gemini_ethernet** %2, align 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %12 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %16 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %20 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = lshr i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %27 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GLOBAL_SWFQ_RWPTR_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readw(i64 %30)
  %32 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %33 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GLOBAL_SWFQ_RWPTR_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, 2
  %38 = call i32 @writew(i32 %31, i64 %37)
  %39 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %40 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GLOBAL_SW_FREEQ_BASE_SIZE_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %86, %1
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %51 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = shl i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %62 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i32 @dma_unmap_single(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %69 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %68, i32 0, i32 5
  %70 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %70, i64 %72
  store %struct.gmac_queue_page* %73, %struct.gmac_queue_page** %8, align 8
  br label %74

74:                                               ; preds = %80, %49
  %75 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %8, align 8
  %76 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @page_ref_count(i32 %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %8, align 8
  %82 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @put_page(i32 %83)
  br label %74

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %45

89:                                               ; preds = %45
  %90 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %91 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %90, i32 0, i32 5
  %92 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %91, align 8
  %93 = call i32 @kfree(%struct.gmac_queue_page* %92)
  %94 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %95 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %98 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  %101 = shl i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %104 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %2, align 8
  %107 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dma_free_coherent(i32 %96, i32 %102, %struct.TYPE_4__* %105, i32 %108)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @page_ref_count(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.gmac_queue_page*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
