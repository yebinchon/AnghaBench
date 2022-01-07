; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i32, i32, i32, i32, i32 }
%struct.mcam_camera = type { i32 }
%struct.mcam_format_struct = type { i64, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_interval = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @mcam_vidioc_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_vidioc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.mcam_camera*, align 8
  %9 = alloca %struct.mcam_format_struct*, align 8
  %10 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.mcam_camera* @video_drvdata(%struct.file* %12)
  store %struct.mcam_camera* %13, %struct.mcam_camera** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 2
  %17 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 3
  %19 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 4
  %23 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 5
  %27 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.mcam_format_struct* @mcam_find_format(i64 %32)
  store %struct.mcam_format_struct* %33, %struct.mcam_format_struct** %9, align 8
  %34 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %9, align 8
  %35 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %3
  %45 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %9, align 8
  %46 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %50 = load i32, i32* @pad, align 4
  %51 = load i32, i32* @enum_frame_interval, align 4
  %52 = call i32 @sensor_call(%struct.mcam_camera* %49, i32 %50, i32 %51, i32* null, %struct.v4l2_subdev_frame_interval_enum* %10)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %44
  %58 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %59 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %55, %41
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.mcam_camera* @video_drvdata(%struct.file*) #1

declare dso_local %struct.mcam_format_struct* @mcam_find_format(i64) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, i32*, %struct.v4l2_subdev_frame_interval_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
