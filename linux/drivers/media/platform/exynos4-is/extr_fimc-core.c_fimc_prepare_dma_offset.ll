; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_prepare_dma_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_prepare_dma_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fimc_frame = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i64* }

@FIMC_FMT_YCBCR420 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"in_offset: color= %d, y_h= %d, y_v= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_prepare_dma_offset(%struct.fimc_ctx* %0, %struct.fimc_frame* %1) #0 {
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  store %struct.fimc_frame* %1, %struct.fimc_frame** %4, align 8
  %8 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %18 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %25 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %39 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %42 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %7, align 8
  %48 = lshr i64 %47, 3
  %49 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %50 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  br label %56

56:                                               ; preds = %46, %37
  %57 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %58 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %61 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %64 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %67 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %70 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %73 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %76 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %79 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %82 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %85 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %127, label %89

89:                                               ; preds = %56
  %90 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %91 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %90, i32 0, i32 3
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %98 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %103 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %96, %89
  %108 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %109 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FIMC_FMT_YCBCR420, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %117 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %122 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %115, %107
  br label %127

127:                                              ; preds = %126, %56
  %128 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %129 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %128, i32 0, i32 3
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %134 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %139 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %132, i64 %137, i32 %141)
  ret void
}

declare dso_local i32 @dbg(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
