; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_fmt = type { i64, i32 }
%struct.mtk_jpeg_ctx = type { i32 }

@MTK_JPEG_FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@MTK_JPEG_FMT_FLAG_DEC_OUTPUT = common dso_local global i32 0, align 4
@MTK_JPEG_FMT_FLAG_DEC_CAPTURE = common dso_local global i32 0, align 4
@MTK_JPEG_NUM_FORMATS = common dso_local global i32 0, align 4
@mtk_jpeg_formats = common dso_local global %struct.mtk_jpeg_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_jpeg_fmt* (%struct.mtk_jpeg_ctx*, i64, i32)* @mtk_jpeg_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_jpeg_fmt* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_jpeg_fmt*, align 8
  %5 = alloca %struct.mtk_jpeg_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_jpeg_fmt*, align 8
  store %struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MTK_JPEG_FMT_TYPE_OUTPUT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MTK_JPEG_FMT_FLAG_DEC_OUTPUT, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MTK_JPEG_FMT_FLAG_DEC_CAPTURE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %44, %18
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MTK_JPEG_NUM_FORMATS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** @mtk_jpeg_formats, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %25, i64 %27
  store %struct.mtk_jpeg_fmt* %28, %struct.mtk_jpeg_fmt** %10, align 8
  %29 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %10, align 8
  %30 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %10, align 8
  %36 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %10, align 8
  store %struct.mtk_jpeg_fmt* %42, %struct.mtk_jpeg_fmt** %4, align 8
  br label %48

43:                                               ; preds = %34, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %20

47:                                               ; preds = %20
  store %struct.mtk_jpeg_fmt* null, %struct.mtk_jpeg_fmt** %4, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %4, align 8
  ret %struct.mtk_jpeg_fmt* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
