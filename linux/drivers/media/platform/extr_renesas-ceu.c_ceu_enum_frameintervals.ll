; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, i32 }
%struct.ceu_device = type { %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.TYPE_2__, %struct.v4l2_subdev* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ceu_fmt = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_interval = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @ceu_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.ceu_device*, align 8
  %9 = alloca %struct.ceu_subdev*, align 8
  %10 = alloca %struct.ceu_fmt*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
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
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 1
  %24 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 2
  %26 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 3
  %30 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 4
  %34 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 5
  %38 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %39 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %37, align 4
  %42 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32 %44)
  store %struct.ceu_fmt* %45, %struct.ceu_fmt** %10, align 8
  %46 = load %struct.ceu_fmt*, %struct.ceu_fmt** %10, align 8
  %47 = icmp ne %struct.ceu_fmt* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %3
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %53 = load i32, i32* @pad, align 4
  %54 = load i32, i32* @enum_frame_interval, align 4
  %55 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %52, i32 %53, i32 %54, i32* null, %struct.v4l2_subdev_frame_interval_enum* %13)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %68

60:                                               ; preds = %51
  %61 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %62 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %60, %58, %48
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.ceu_device* @video_drvdata(%struct.file*) #1

declare dso_local %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_frame_interval_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
