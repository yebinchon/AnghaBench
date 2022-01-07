; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32*, i32, i32, i64, i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Read of LBA %d (pba %d) sector %d from cache\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Read of LBA %d (pba %d) sector %d from device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, i32, %struct.scatterlist*, i32)* @msb_cache_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_cache_read(%struct.msb_data* %0, i32 %1, i32 %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x %struct.scatterlist], align 16
  %14 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %16 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %24 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %30 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %29, i32 0, i32 4
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dbg_verbose(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %13, i64 0, i64 0
  %39 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %13, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(%struct.scatterlist* %39)
  %41 = call i32 @sg_init_table(%struct.scatterlist* %38, i32 %40)
  %42 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %43 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %13, i64 0, i64 0
  %44 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %13, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.scatterlist* %44)
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %48 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msb_sg_copy(%struct.scatterlist* %42, %struct.scatterlist* %43, i32 %45, i32 %46, i32 %49)
  %51 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %13, i64 0, i64 0
  %52 = getelementptr inbounds [10 x %struct.scatterlist], [10 x %struct.scatterlist]* %13, i64 0, i64 0
  %53 = call i32 @sg_nents(%struct.scatterlist* %52)
  %54 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %55 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %58 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %56, %62
  %64 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %65 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sg_copy_from_buffer(%struct.scatterlist* %51, i32 %53, i64 %63, i32 %66)
  br label %90

68:                                               ; preds = %27, %5
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dbg_verbose(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @msb_read_page(%struct.msb_data* %73, i32 %74, i32 %75, i32* null, %struct.scatterlist* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %92

83:                                               ; preds = %68
  %84 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @msb_cache_write(%struct.msb_data* %84, i32 %85, i32 %86, i32 1, %struct.scatterlist* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %33
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %81
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dbg_verbose(i8*, i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scatterlist*) #1

declare dso_local i32 @msb_sg_copy(%struct.scatterlist*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @msb_read_page(%struct.msb_data*, i32, i32, i32*, %struct.scatterlist*, i32) #1

declare dso_local i32 @msb_cache_write(%struct.msb_data*, i32, i32, i32, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
