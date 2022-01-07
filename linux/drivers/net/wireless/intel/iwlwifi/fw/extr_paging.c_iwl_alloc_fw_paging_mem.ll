; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_alloc_fw_paging_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_alloc_fw_paging_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fw_img = type { i32 }

@BLOCK_2_EXP_SIZE = common dso_local global i32 0, align 4
@PAGING_BLOCK_SIZE = common dso_local global i32 0, align 4
@FW_PAGING_SIZE = common dso_local global i32 0, align 4
@NUM_OF_PAGE_PER_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Paging: allocating mem for %d paging blocks, each block holds 8 pages, last block holds %d pages\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Paging: allocated 4K(CSS) bytes (order %d) for firmware paging.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Paging: allocated 32K bytes (order %d) for firmware paging.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.fw_img*)* @iwl_alloc_fw_paging_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_alloc_fw_paging_mem(%struct.iwl_fw_runtime* %0, %struct.fw_img* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca %struct.fw_img*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store %struct.fw_img* %1, %struct.fw_img** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.page*, %struct.page** %16, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

20:                                               ; preds = %2
  %21 = load i32, i32* @BLOCK_2_EXP_SIZE, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load %struct.fw_img*, %struct.fw_img** %5, align 8
  %28 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FW_PAGING_SIZE, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @NUM_OF_PAGE_PER_GROUP, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %32, i32 %33)
  %35 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @NUM_OF_PAGE_PER_GROUP, align 4
  %39 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = mul nsw i32 %38, %42
  %44 = sub nsw i32 %37, %43
  %45 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.iwl_fw_runtime*, i8*, i32, ...) @IWL_DEBUG_FW(%struct.iwl_fw_runtime* %47, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %144, %20
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %147

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @FW_PAGING_SIZE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @get_order(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.page* @alloc_pages(i32 %73, i32 %74)
  store %struct.page* %75, %struct.page** %6, align 8
  %76 = load %struct.page*, %struct.page** %6, align 8
  %77 = icmp ne %struct.page* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %80 = call i32 @iwl_free_fw_paging(%struct.iwl_fw_runtime* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %148

83:                                               ; preds = %69
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %86 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store %struct.page* %84, %struct.page** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %94 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  %100 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.page*, %struct.page** %6, align 8
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %110 = call i32 @dma_map_page(i32 %104, %struct.page* %105, i32 0, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %112 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %111, i32 0, i32 3
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @dma_mapping_error(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %83
  %120 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %121 = call i32 @iwl_free_fw_paging(%struct.iwl_fw_runtime* %120)
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %148

124:                                              ; preds = %83
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %127 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %124
  %136 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (%struct.iwl_fw_runtime*, i8*, i32, ...) @IWL_DEBUG_FW(%struct.iwl_fw_runtime* %136, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %143

139:                                              ; preds = %124
  %140 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (%struct.iwl_fw_runtime*, i8*, i32, ...) @IWL_DEBUG_FW(%struct.iwl_fw_runtime* %140, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %55

147:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %119, %78, %19
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_fw_runtime*, i8*, i32, ...) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @iwl_free_fw_paging(%struct.iwl_fw_runtime*) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
