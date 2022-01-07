; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, i32, i64, i32, i64 }
%struct.scatterlist = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@MS_BLOCK_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"first flush the cache\00", align 1
@jiffies = common dso_local global i64 0, align 8
@cache_flush_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Write of LBA %d page %d to cache \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, i32, i32, %struct.scatterlist*, i32)* @msb_cache_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_cache_write(%struct.msb_data* %0, i32 %1, i32 %2, i32 %3, %struct.scatterlist* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.msb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [10 x %struct.scatterlist], align 16
  store %struct.msb_data* %0, %struct.msb_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.scatterlist* %4, %struct.scatterlist** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %17 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EROFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %116

23:                                               ; preds = %6
  %24 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %25 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MS_BLOCK_INVALID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %32 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %116

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %42 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MS_BLOCK_INVALID, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %49 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %55 = call i32 @msb_cache_flush(%struct.msb_data* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %7, align 4
  br label %116

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %46, %40
  %62 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %63 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MS_BLOCK_INVALID, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %70 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %72 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %71, i32 0, i32 4
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i32, i32* @cache_flush_timeout, align 4
  %75 = call i64 @msecs_to_jiffies(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @mod_timer(i32* %72, i64 %76)
  br label %78

78:                                               ; preds = %67, %61
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %15, i64 0, i64 0
  %83 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %15, i64 0, i64 0
  %84 = call i32 @ARRAY_SIZE(%struct.scatterlist* %83)
  %85 = call i32 @sg_init_table(%struct.scatterlist* %82, i32 %84)
  %86 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %87 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %15, i64 0, i64 0
  %88 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %15, i64 0, i64 0
  %89 = call i32 @ARRAY_SIZE(%struct.scatterlist* %88)
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %92 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @msb_sg_copy(%struct.scatterlist* %86, %struct.scatterlist* %87, i32 %89, i32 %90, i32 %93)
  %95 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %15, i64 0, i64 0
  %96 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %15, i64 0, i64 0
  %97 = call i32 @sg_nents(%struct.scatterlist* %96)
  %98 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %99 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %103 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %100, %106
  %108 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %109 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %95, i32 %97, i64 %107, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %114 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %113, i32 0, i32 2
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %78, %58, %38, %20
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @dbg_verbose(i8*, ...) #1

declare dso_local i32 @msb_cache_flush(%struct.msb_data*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scatterlist*) #1

declare dso_local i32 @msb_sg_copy(%struct.scatterlist*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
