; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c___isp_video_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c___isp_video_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_isp = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_fmt = type { i32, i32 }

@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@FIMC_ISP_SOURCE_WIDTH_MIN = common dso_local global i32 0, align 4
@FIMC_ISP_SOURCE_WIDTH_MAX = common dso_local global i32 0, align 4
@FIMC_ISP_SOURCE_HEIGHT_MIN = common dso_local global i32 0, align 4
@FIMC_ISP_SOURCE_HEIGHT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_isp*, %struct.v4l2_pix_format_mplane*, %struct.fimc_fmt**)* @__isp_video_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__isp_video_try_fmt(%struct.fimc_isp* %0, %struct.v4l2_pix_format_mplane* %1, %struct.fimc_fmt** %2) #0 {
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca %struct.fimc_fmt**, align 8
  %7 = alloca %struct.fimc_fmt*, align 8
  store %struct.fimc_isp* %0, %struct.fimc_isp** %4, align 8
  store %struct.v4l2_pix_format_mplane* %1, %struct.v4l2_pix_format_mplane** %5, align 8
  store %struct.fimc_fmt** %2, %struct.fimc_fmt*** %6, align 8
  %8 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %8, i32 0, i32 2
  %10 = call %struct.fimc_fmt* @fimc_isp_find_format(i32* %9, i32* null, i32 2)
  store %struct.fimc_fmt* %10, %struct.fimc_fmt** %7, align 8
  %11 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %6, align 8
  %12 = icmp ne %struct.fimc_fmt** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.fimc_fmt*, %struct.fimc_fmt** %7, align 8
  %15 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %6, align 8
  store %struct.fimc_fmt* %14, %struct.fimc_fmt** %15, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %18 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %21 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fimc_fmt*, %struct.fimc_fmt** %7, align 8
  %24 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fimc_fmt*, %struct.fimc_fmt** %7, align 8
  %29 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %33, i32 0, i32 1
  %35 = load i32, i32* @FIMC_ISP_SOURCE_WIDTH_MIN, align 4
  %36 = load i32, i32* @FIMC_ISP_SOURCE_WIDTH_MAX, align 4
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 0
  %39 = load i32, i32* @FIMC_ISP_SOURCE_HEIGHT_MIN, align 4
  %40 = load i32, i32* @FIMC_ISP_SOURCE_HEIGHT_MAX, align 4
  %41 = call i32 @v4l_bound_align_image(i32* %34, i32 %35, i32 %36, i32 3, i32* %38, i32 %39, i32 %40, i32 0, i32 0)
  ret void
}

declare dso_local %struct.fimc_fmt* @fimc_isp_find_format(i32*, i32*, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
