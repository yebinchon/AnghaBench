; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_mem = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.page* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmc_test_mem* (i64, i64, i32, i32)* @mmc_test_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmc_test_mem* @mmc_test_alloc_mem(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_test_mem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mmc_test_mem*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i64 @DIV_ROUND_UP(i32 %20, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i64 @DIV_ROUND_UP(i32 %24, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i64 @DIV_ROUND_UP(i32 %27, i32 %28)
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %30 = call i32 (...) @nr_free_buffer_pages()
  %31 = ashr i32 %30, 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i64, i64* %14, align 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %36, %4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.mmc_test_mem* @kzalloc(i32 16, i32 %59)
  store %struct.mmc_test_mem* %60, %struct.mmc_test_mem** %15, align 8
  %61 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %62 = icmp ne %struct.mmc_test_mem* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store %struct.mmc_test_mem* null, %struct.mmc_test_mem** %5, align 8
  br label %171

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.TYPE_2__* @kcalloc(i32 %65, i32 16, i32 %66)
  %68 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %69 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %68, i32 0, i32 1
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %69, align 8
  %70 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %71 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %168

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %165, %75
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %166

79:                                               ; preds = %76
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = load i32, i32* @GFP_DMA, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @__GFP_NOWARN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @__GFP_NORETRY, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %18, align 4
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @PAGE_SHIFT, align 8
  %89 = shl i64 %87, %88
  %90 = call i32 @get_order(i64 %89)
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %79, %101
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call %struct.page* @alloc_pages(i32 %92, i32 %93)
  store %struct.page* %94, %struct.page** %16, align 8
  %95 = load %struct.page*, %struct.page** %16, align 8
  %96 = icmp ne %struct.page* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %91
  br label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %17, align 4
  %103 = sub i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %91

104:                                              ; preds = %100
  %105 = load %struct.page*, %struct.page** %16, align 8
  %106 = icmp ne %struct.page* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %168

112:                                              ; preds = %107
  br label %166

113:                                              ; preds = %104
  %114 = load %struct.page*, %struct.page** %16, align 8
  %115 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %116 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %119 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store %struct.page* %114, %struct.page** %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %125 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %128 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %123, i32* %131, align 8
  %132 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %133 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i32, i32* %17, align 4
  %138 = zext i32 %137 to i64
  %139 = shl i64 1, %138
  %140 = icmp ule i64 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %113
  br label %166

142:                                              ; preds = %113
  %143 = load i32, i32* %17, align 4
  %144 = zext i32 %143 to i64
  %145 = shl i64 1, %144
  %146 = load i64, i64* %10, align 8
  %147 = sub i64 %146, %145
  store i64 %147, i64* %10, align 8
  %148 = load i32, i32* %17, align 4
  %149 = zext i32 %148 to i64
  %150 = shl i64 1, %149
  %151 = load i64, i64* %13, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %13, align 8
  %153 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %154 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = icmp uge i64 %155, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %142
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %168

164:                                              ; preds = %159
  br label %166

165:                                              ; preds = %142
  br label %76

166:                                              ; preds = %164, %141, %112, %76
  %167 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  store %struct.mmc_test_mem* %167, %struct.mmc_test_mem** %5, align 8
  br label %171

168:                                              ; preds = %163, %111, %74
  %169 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %15, align 8
  %170 = call i32 @mmc_test_free_mem(%struct.mmc_test_mem* %169)
  store %struct.mmc_test_mem* null, %struct.mmc_test_mem** %5, align 8
  br label %171

171:                                              ; preds = %168, %166, %63
  %172 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %5, align 8
  ret %struct.mmc_test_mem* %172
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nr_free_buffer_pages(...) #1

declare dso_local %struct.mmc_test_mem* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @mmc_test_free_mem(%struct.mmc_test_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
