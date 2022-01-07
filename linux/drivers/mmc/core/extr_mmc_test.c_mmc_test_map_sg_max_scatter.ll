; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_map_sg_max_scatter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_map_sg_max_scatter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_mem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_mem*, i64, %struct.scatterlist*, i32, i32, i32*)* @mmc_test_map_sg_max_scatter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_map_sg_max_scatter(%struct.mmc_test_mem* %0, i64 %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_test_mem*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.mmc_test_mem* %0, %struct.mmc_test_mem** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %14, align 8
  %21 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %8, align 8
  %22 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  store i8* null, i8** %20, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @sg_init_table(%struct.scatterlist* %24, i32 %25)
  %27 = load i32*, i32** %13, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %127, %6
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %128

31:                                               ; preds = %28
  %32 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %8, align 8
  %33 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %15, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @page_address(i32 %40)
  store i8* %41, i8** %18, align 8
  %42 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %8, align 8
  %43 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %108, %76, %31
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %120

59:                                               ; preds = %57
  %60 = load i8*, i8** %18, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* %16, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %16, align 4
  %64 = mul i32 %61, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, i8* %60, i64 %65
  store i8* %66, i8** %19, align 8
  %67 = load i8*, i8** %20, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load i8*, i8** %20, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = load i8*, i8** %19, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %51

77:                                               ; preds = %69, %59
  %78 = load i8*, i8** %19, align 8
  store i8* %78, i8** %20, align 8
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i32, i32* %12, align 4
  %83 = zext i32 %82 to i64
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %17, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %17, align 8
  br label %94

94:                                               ; preds = %92, %88
  %95 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %96 = icmp ne %struct.scatterlist* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %99 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %98)
  store %struct.scatterlist* %99, %struct.scatterlist** %14, align 8
  br label %102

100:                                              ; preds = %94
  %101 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %101, %struct.scatterlist** %14, align 8
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %104 = icmp ne %struct.scatterlist* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %135

108:                                              ; preds = %102
  %109 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = call i32 @virt_to_page(i8* %110)
  %112 = load i64, i64* %17, align 8
  %113 = call i32 @sg_set_page(%struct.scatterlist* %109, i32 %111, i64 %112, i32 0)
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %9, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %51

120:                                              ; preds = %57
  %121 = load i32, i32* %15, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %8, align 8
  %125 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %123, %120
  br label %28

128:                                              ; preds = %28
  %129 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %130 = icmp ne %struct.scatterlist* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %133 = call i32 @sg_mark_end(%struct.scatterlist* %132)
  br label %134

134:                                              ; preds = %131, %128
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %134, %105
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
