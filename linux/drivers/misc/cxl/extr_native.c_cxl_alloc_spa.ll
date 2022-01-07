; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_alloc_spa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_alloc_spa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, %struct.cxl_process_element* }
%struct.cxl_process_element = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"num_of_processes too large for the SPA, limiting to %i (0x%x)\0A\00", align 1
@CXL_MODE_DEDICATED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"cxl_alloc_spa: Unable to allocate scheduled process area\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"spa pages: %i afu->spa_max_procs: %i   afu->num_procs: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, i32)* @cxl_alloc_spa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_alloc_spa(%struct.cxl_afu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  br label %11

11:                                               ; preds = %70, %2
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %13 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %19 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ugt i32 %26, 1048576
  br i1 %27, label %28, label %54

28:                                               ; preds = %11
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %30 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %29, i32 0, i32 2
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %32 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %37 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CXL_MODE_DEDICATED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %28
  %46 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %47 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %52 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %28
  br label %80

54:                                               ; preds = %11
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %57 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 8
  %60 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %61 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @spa_max_procs(i32 %64)
  %66 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %67 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %54
  %71 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %72 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %77 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %11, label %80

80:                                               ; preds = %70, %53
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = load i32, i32* @__GFP_ZERO, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %85 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @__get_free_pages(i32 %83, i32 %88)
  %90 = inttoptr i64 %89 to %struct.cxl_process_element*
  %91 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %92 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store %struct.cxl_process_element* %90, %struct.cxl_process_element** %94, align 8
  %95 = icmp ne %struct.cxl_process_element* %90, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %80
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %116

100:                                              ; preds = %80
  %101 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %102 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 1, %105
  %107 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %108 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %113 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @pr_devel(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %106, i64 %111, i64 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %100, %96
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dev_warn(i32*, i8*, i64, i32) #1

declare dso_local i64 @spa_max_procs(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_devel(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
