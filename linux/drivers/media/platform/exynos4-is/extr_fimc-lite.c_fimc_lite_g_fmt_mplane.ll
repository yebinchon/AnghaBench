; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_g_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_g_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i32 }
%struct.fimc_lite = type { %struct.flite_frame }
%struct.flite_frame = type { i32, i32, %struct.fimc_fmt* }
%struct.fimc_fmt = type { i32*, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @fimc_lite_g_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_g_fmt_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.fimc_lite*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.v4l2_plane_pix_format*, align 8
  %10 = alloca %struct.flite_frame*, align 8
  %11 = alloca %struct.fimc_fmt*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.fimc_lite* @video_drvdata(%struct.file* %12)
  store %struct.fimc_lite* %13, %struct.fimc_lite** %7, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %16, %struct.v4l2_pix_format_mplane** %8, align 8
  %17 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %17, i32 0, i32 6
  %19 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %18, align 8
  %20 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %19, i64 0
  store %struct.v4l2_plane_pix_format* %20, %struct.v4l2_plane_pix_format** %9, align 8
  %21 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %22 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %21, i32 0, i32 0
  store %struct.flite_frame* %22, %struct.flite_frame** %10, align 8
  %23 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %24 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %23, i32 0, i32 2
  %25 = load %struct.fimc_fmt*, %struct.fimc_fmt** %24, align 8
  store %struct.fimc_fmt* %25, %struct.fimc_fmt** %11, align 8
  %26 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %27 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %30 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %28, %33
  %35 = sdiv i32 %34, 8
  %36 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %42 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %48 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %53 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %58 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.flite_frame*, %struct.flite_frame** %10, align 8
  %63 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %68 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %71 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  ret i32 0
}

declare dso_local %struct.fimc_lite* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
