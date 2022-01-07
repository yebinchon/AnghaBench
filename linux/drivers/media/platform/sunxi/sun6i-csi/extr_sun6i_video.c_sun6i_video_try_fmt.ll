; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_video = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@supported_pixformats = common dso_local global i32* null, align 8
@MIN_WIDTH = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_RAW = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_video*, %struct.v4l2_format*)* @sun6i_video_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_video_try_fmt(%struct.sun6i_video* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.sun6i_video*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  store %struct.sun6i_video* %0, %struct.sun6i_video** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %7 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.v4l2_pix_format* %9, %struct.v4l2_pix_format** %5, align 8
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_pixformat_valid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** @supported_pixformats, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  %24 = load i32, i32* @MIN_WIDTH, align 4
  %25 = load i32, i32* @MAX_WIDTH, align 4
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 1
  %28 = load i32, i32* @MIN_HEIGHT, align 4
  %29 = load i32, i32* @MAX_WIDTH, align 4
  %30 = call i32 @v4l_bound_align_image(i32* %23, i32 %24, i32 %25, i32 1, i32* %27, i32 %28, i32 %29, i32 1, i32 1)
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sun6i_csi_get_bpp(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = ashr i32 %39, 3
  %41 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %21
  %58 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %21
  %62 = load i32, i32* @V4L2_COLORSPACE_RAW, align 4
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  ret i32 0
}

declare dso_local i32 @is_pixformat_valid(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sun6i_csi_get_bpp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
