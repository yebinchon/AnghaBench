; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___isp_subdev_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c___isp_subdev_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_isp = type { %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64, i64 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }

@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@FIMC_ISP_SD_PAD_SINK = common dso_local global i64 0, align 8
@FIMC_ISP_SINK_WIDTH_MIN = common dso_local global i32 0, align 4
@FIMC_ISP_SINK_WIDTH_MAX = common dso_local global i32 0, align 4
@FIMC_ISP_SINK_HEIGHT_MIN = common dso_local global i32 0, align 4
@FIMC_ISP_SINK_HEIGHT_MAX = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@FIMC_ISP_CAC_MARGIN_WIDTH = common dso_local global i64 0, align 8
@FIMC_ISP_CAC_MARGIN_HEIGHT = common dso_local global i64 0, align 8
@FIMC_ISP_SD_PAD_SRC_FIFO = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUV10_1X30 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_isp*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @__isp_subdev_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__isp_subdev_try_format(%struct.fimc_isp* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.fimc_isp* %0, %struct.fimc_isp** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %9 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %10, %struct.v4l2_mbus_framefmt** %7, align 8
  %11 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FIMC_ISP_SD_PAD_SINK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %20, i32 0, i32 3
  %22 = load i32, i32* @FIMC_ISP_SINK_WIDTH_MIN, align 4
  %23 = load i32, i32* @FIMC_ISP_SINK_WIDTH_MAX, align 4
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 2
  %26 = load i32, i32* @FIMC_ISP_SINK_HEIGHT_MIN, align 4
  %27 = load i32, i32* @FIMC_ISP_SINK_HEIGHT_MAX, align 4
  %28 = call i32 @v4l_bound_align_image(i64* %21, i32 %22, i32 %23, i32 0, i64* %25, i32 %26, i32 %27, i32 0, i32 0)
  %29 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %81

32:                                               ; preds = %3
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %40 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %39, i32 0, i32 1
  %41 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %42 = load i64, i64* @FIMC_ISP_SD_PAD_SINK, align 8
  %43 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %40, %struct.v4l2_subdev_pad_config* %41, i64 %42)
  store %struct.v4l2_mbus_framefmt* %43, %struct.v4l2_mbus_framefmt** %8, align 8
  br label %47

44:                                               ; preds = %32
  %45 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %46 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %45, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %46, %struct.v4l2_mbus_framefmt** %8, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FIMC_ISP_CAC_MARGIN_WIDTH, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FIMC_ISP_CAC_MARGIN_HEIGHT, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FIMC_ISP_SD_PAD_SRC_FIFO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %47
  %68 = load i32, i32* @MEDIA_BUS_FMT_YUV10_1X30, align 4
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %80

74:                                               ; preds = %47
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %67
  br label %81

81:                                               ; preds = %80, %19
  ret void
}

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i32, i32, i64*, i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32*, %struct.v4l2_subdev_pad_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
