; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_get_output_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_get_output_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32 }

@V4L2_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV42 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV21 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@S5P_JPEG_MIN_WIDTH = common dso_local global i32 0, align 4
@S5P_JPEG_MAX_WIDTH = common dso_local global i32 0, align 4
@S5P_JPEG_MIN_HEIGHT = common dso_local global i32 0, align 4
@S5P_JPEG_MAX_HEIGHT = common dso_local global i32 0, align 4
@SJPEG_EXYNOS4 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_ctx*, %struct.v4l2_format*, i32)* @exynos4_jpeg_get_output_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4_jpeg_get_output_buffer_size(%struct.s5p_jpeg_ctx* %0, %struct.v4l2_format* %1, i32 %2) #0 {
  %4 = alloca %struct.s5p_jpeg_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %7, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @V4L2_PIX_FMT_RGB32, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @V4L2_PIX_FMT_RGB565, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @V4L2_PIX_FMT_NV24, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @V4L2_PIX_FMT_NV42, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @V4L2_PIX_FMT_NV21, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46, %42, %38, %34, %30, %3
  store i32 4, i32* %11, align 4
  br label %56

55:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %58 = load i32, i32* @S5P_JPEG_MIN_WIDTH, align 4
  %59 = load i32, i32* @S5P_JPEG_MAX_WIDTH, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @S5P_JPEG_MIN_HEIGHT, align 4
  %62 = load i32, i32* @S5P_JPEG_MAX_HEIGHT, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx* %57, i32* %9, i32 %58, i32 %59, i32 %60, i32* %10, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SJPEG_EXYNOS4, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %74, %56
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %79, %80
  %82 = ashr i32 %81, 3
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %82, %83
  ret i32 %84
}

declare dso_local i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx*, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
