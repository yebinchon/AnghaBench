; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_fill_freeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_geth_fill_freeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet = type { i32, i32, i32, i64, i32, %struct.gmac_queue_page* }
%struct.gmac_queue_page = type { %struct.page* }
%struct.page = type { i32 }
%union.dma_rwptr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GLOBAL_SWFQ_RWPTR_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"fill entry %d page ref count %d add %d refs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gemini_ethernet*, i32)* @geth_fill_freeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geth_fill_freeq(%struct.gemini_ethernet* %0, i32 %1) #0 {
  %3 = alloca %struct.gemini_ethernet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %union.dma_rwptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gmac_queue_page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store %struct.gemini_ethernet* %0, %struct.gemini_ethernet** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %17 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %15, %18
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %21 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %22, %23
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %28 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %27, i32 0, i32 2
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %32 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GLOBAL_SWFQ_RWPTR_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = bitcast %union.dma_rwptr* %10 to i32*
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = bitcast %union.dma_rwptr* %10 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %48

44:                                               ; preds = %2
  %45 = bitcast %union.dma_rwptr* %10 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %43, %40 ], [ %47, %44 ]
  %50 = load i32, i32* %5, align 4
  %51 = lshr i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = bitcast %union.dma_rwptr* %10 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = lshr i32 %54, %55
  %57 = sub i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %106, %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %120

65:                                               ; preds = %61
  %66 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %67 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %66, i32 0, i32 5
  %68 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %68, i64 %70
  store %struct.gmac_queue_page* %71, %struct.gmac_queue_page** %12, align 8
  %72 = load %struct.gmac_queue_page*, %struct.gmac_queue_page** %12, align 8
  %73 = getelementptr inbounds %struct.gmac_queue_page, %struct.gmac_queue_page* %72, i32 0, i32 0
  %74 = load %struct.page*, %struct.page** %73, align 8
  store %struct.page* %74, %struct.page** %13, align 8
  %75 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %76 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.page*, %struct.page** %13, align 8
  %80 = call i32 @page_ref_count(%struct.page* %79)
  %81 = load i32, i32* %5, align 4
  %82 = shl i32 1, %81
  %83 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80, i32 %82)
  %84 = load %struct.page*, %struct.page** %13, align 8
  %85 = call i32 @page_ref_count(%struct.page* %84)
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %106

87:                                               ; preds = %65
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 64, %94
  %96 = icmp ugt i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %120

98:                                               ; preds = %87
  %99 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call %struct.page* @geth_freeq_alloc_map_page(%struct.gemini_ethernet* %99, i32 %100)
  store %struct.page* %101, %struct.page** %13, align 8
  %102 = load %struct.page*, %struct.page** %13, align 8
  %103 = icmp ne %struct.page* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %120

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %65
  %107 = load %struct.page*, %struct.page** %13, align 8
  %108 = load i32, i32* %5, align 4
  %109 = shl i32 1, %108
  %110 = call i32 @page_ref_add(%struct.page* %107, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* %6, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %61

120:                                              ; preds = %104, %97, %61
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %5, align 4
  %123 = shl i32 %121, %122
  %124 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %125 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @GLOBAL_SWFQ_RWPTR_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = add nsw i64 %128, 2
  %130 = call i32 @writew(i32 %123, i64 %129)
  %131 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %3, align 8
  %132 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %131, i32 0, i32 2
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local %struct.page* @geth_freeq_alloc_map_page(%struct.gemini_ethernet*, i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
