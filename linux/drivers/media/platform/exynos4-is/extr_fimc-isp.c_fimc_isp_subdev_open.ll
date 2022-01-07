; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_subdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_subdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64, i32, i32, i32 }

@DEFAULT_PREVIEW_STILL_HEIGHT = common dso_local global i64 0, align 8
@FIMC_ISP_CAC_MARGIN_HEIGHT = common dso_local global i64 0, align 8
@DEFAULT_PREVIEW_STILL_WIDTH = common dso_local global i64 0, align 8
@FIMC_ISP_CAC_MARGIN_WIDTH = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@fimc_isp_formats = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@FIMC_ISP_SD_PAD_SINK = common dso_local global i32 0, align 4
@FIMC_ISP_SD_PAD_SRC_FIFO = common dso_local global i32 0, align 4
@FIMC_ISP_SD_PAD_SRC_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @fimc_isp_subdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_isp_subdev_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 0
  %8 = load i64, i64* @DEFAULT_PREVIEW_STILL_HEIGHT, align 8
  %9 = load i64, i64* @FIMC_ISP_CAC_MARGIN_HEIGHT, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 1
  %12 = load i64, i64* @DEFAULT_PREVIEW_STILL_WIDTH, align 8
  %13 = load i64, i64* @FIMC_ISP_CAC_MARGIN_WIDTH, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %11, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 2
  %16 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fimc_isp_formats, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 4
  %23 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  store i32 %23, i32* %22, align 8
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FIMC_ISP_SD_PAD_SINK, align 4
  %29 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %24, i32 %27, i32 %28)
  store %struct.v4l2_mbus_framefmt* %29, %struct.v4l2_mbus_framefmt** %5, align 8
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %31 = bitcast %struct.v4l2_mbus_framefmt* %30 to i8*
  %32 = bitcast %struct.v4l2_mbus_framefmt* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIMC_ISP_SD_PAD_SRC_FIFO, align 4
  %38 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %33, i32 %36, i32 %37)
  store %struct.v4l2_mbus_framefmt* %38, %struct.v4l2_mbus_framefmt** %5, align 8
  %39 = load i64, i64* @DEFAULT_PREVIEW_STILL_WIDTH, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* @DEFAULT_PREVIEW_STILL_HEIGHT, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %44 = bitcast %struct.v4l2_mbus_framefmt* %43 to i8*
  %45 = bitcast %struct.v4l2_mbus_framefmt* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 32, i1 false)
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %47 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FIMC_ISP_SD_PAD_SRC_DMA, align 4
  %51 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %46, i32 %49, i32 %50)
  store %struct.v4l2_mbus_framefmt* %51, %struct.v4l2_mbus_framefmt** %5, align 8
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %53 = bitcast %struct.v4l2_mbus_framefmt* %52 to i8*
  %54 = bitcast %struct.v4l2_mbus_framefmt* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 32, i1 false)
  ret i32 0
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
