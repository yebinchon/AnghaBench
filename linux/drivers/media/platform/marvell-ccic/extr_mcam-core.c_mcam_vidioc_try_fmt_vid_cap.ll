; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }
%struct.mcam_camera = type { i32 }
%struct.mcam_format_struct = type { i32, i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @mcam_vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.mcam_camera*, align 8
  %8 = alloca %struct.mcam_format_struct*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_subdev_pad_config, align 4
  %11 = alloca %struct.v4l2_subdev_format, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call %struct.mcam_camera* @video_drvdata(%struct.file* %13)
  store %struct.mcam_camera* %14, %struct.mcam_camera** %7, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.v4l2_pix_format* %17, %struct.v4l2_pix_format** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.mcam_format_struct* @mcam_find_format(i32 %23)
  store %struct.mcam_format_struct* %24, %struct.mcam_format_struct** %8, align 8
  %25 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %8, align 8
  %26 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %32 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %8, align 8
  %33 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @v4l2_fill_mbus_format(i32* %30, %struct.v4l2_pix_format* %31, i32 %34)
  %36 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %37 = load i32, i32* @pad, align 4
  %38 = load i32, i32* @set_fmt, align 4
  %39 = call i32 @sensor_call(%struct.mcam_camera* %36, i32 %37, i32 %38, %struct.v4l2_subdev_pad_config* %10, %struct.v4l2_subdev_format* %11)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %42 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %40, i32* %41)
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %8, align 8
  %47 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %8, align 8
  %53 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %67 [
    i32 129, label %55
    i32 128, label %55
  ]

55:                                               ; preds = %3, %3
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = mul nsw i32 %62, 3
  %64 = sdiv i32 %63, 2
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %77

67:                                               ; preds = %3
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %55
  %78 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  ret i32 %81
}

declare dso_local %struct.mcam_camera* @video_drvdata(%struct.file*) #1

declare dso_local %struct.mcam_format_struct* @mcam_find_format(i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
