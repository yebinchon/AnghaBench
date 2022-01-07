; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ceu_device = type { %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.TYPE_3__, %struct.v4l2_subdev* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ceu_fmt = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_size = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @ceu_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.ceu_device*, align 8
  %9 = alloca %struct.ceu_subdev*, align 8
  %10 = alloca %struct.ceu_fmt*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.ceu_device* @video_drvdata(%struct.file* %14)
  store %struct.ceu_device* %15, %struct.ceu_device** %8, align 8
  %16 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %17 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %16, i32 0, i32 0
  %18 = load %struct.ceu_subdev*, %struct.ceu_subdev** %17, align 8
  store %struct.ceu_subdev* %18, %struct.ceu_subdev** %9, align 8
  %19 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %20 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %19, i32 0, i32 1
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %20, align 8
  store %struct.v4l2_subdev* %21, %struct.v4l2_subdev** %11, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 2
  %25 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 3
  %27 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 4
  %31 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %32 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %30, align 4
  %35 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32 %37)
  store %struct.ceu_fmt* %38, %struct.ceu_fmt** %10, align 8
  %39 = load %struct.ceu_fmt*, %struct.ceu_fmt** %10, align 8
  %40 = icmp ne %struct.ceu_fmt* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %3
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %46 = load i32, i32* @pad, align 4
  %47 = load i32, i32* @enum_frame_size, align 4
  %48 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %45, i32 %46, i32 %47, i32* null, %struct.v4l2_subdev_frame_size_enum* %13)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %44
  %54 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %55 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CEU_W_MAX(i32 %58)
  %60 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CEU_H_MAX(i32 %64)
  %66 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %53, %51, %41
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.ceu_device* @video_drvdata(%struct.file*) #1

declare dso_local %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_frame_size_enum*) #1

declare dso_local i32 @CEU_W_MAX(i32) #1

declare dso_local i32 @CEU_H_MAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
