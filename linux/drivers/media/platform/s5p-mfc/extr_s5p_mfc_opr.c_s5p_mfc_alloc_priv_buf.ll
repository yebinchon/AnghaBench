; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_alloc_priv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_alloc_priv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i64, i64*, %struct.device**, i64, i32 }
%struct.device = type { i32 }
%struct.s5p_mfc_priv_buf = type { i32, i64, i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Allocating priv: %zu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Invalid memory configuration - buffer (%pad) is below base memory address(%pad)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Allocated addr %p %pad\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Allocating private buffer of size %zu failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %0, i32 %1, %struct.s5p_mfc_priv_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5p_mfc_priv_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  %14 = alloca i64, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.s5p_mfc_priv_buf* %2, %struct.s5p_mfc_priv_buf** %7, align 8
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @SZ_64K, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %3
  %38 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @bitmap_find_next_zero_area(i32 %40, i32 %41, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %140

49:                                               ; preds = %37
  %50 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @bitmap_set(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %68 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %132

75:                                               ; preds = %3
  %76 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %76, i32 0, i32 3
  %78 = load %struct.device**, %struct.device*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.device*, %struct.device** %78, i64 %80
  %82 = load %struct.device*, %struct.device** %81, align 8
  store %struct.device* %82, %struct.device** %13, align 8
  %83 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %84 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %14, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %92 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.device*, %struct.device** %13, align 8
  %94 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %95 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %97, i32 0, i32 1
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i64 @dma_alloc_coherent(%struct.device* %93, i32 %96, i64* %98, i32 %99)
  %101 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %102 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %75
  br label %140

108:                                              ; preds = %75
  %109 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %110 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %108
  %115 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %115, i32 0, i32 1
  %117 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64* %116, i64* %14)
  %118 = load %struct.device*, %struct.device** %13, align 8
  %119 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %120 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %123 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %126 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @dma_free_coherent(%struct.device* %118, i32 %121, i64 %124, i64 %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %147

131:                                              ; preds = %108
  br label %132

132:                                              ; preds = %131, %49
  %133 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %134 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %138 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %137, i32 0, i32 1
  %139 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %136, i64* %138)
  store i32 0, i32* %4, align 4
  br label %147

140:                                              ; preds = %107, %48
  %141 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %142 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %140, %132, %114
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @mfc_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
