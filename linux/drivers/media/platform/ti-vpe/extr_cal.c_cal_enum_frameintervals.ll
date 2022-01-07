; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, i32 }
%struct.cal_ctx = type { i32 }
%struct.cal_fmt = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_interval = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @cal_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.cal_ctx*, align 8
  %9 = alloca %struct.cal_fmt*, align 8
  %10 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.cal_ctx* @video_drvdata(%struct.file* %12)
  store %struct.cal_ctx* %13, %struct.cal_ctx** %8, align 8
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
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 4
  %23 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 5
  %27 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %31 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.cal_fmt* @find_format_by_pix(%struct.cal_ctx* %30, i32 %33)
  store %struct.cal_fmt* %34, %struct.cal_fmt** %9, align 8
  %35 = load %struct.cal_fmt*, %struct.cal_fmt** %9, align 8
  %36 = icmp ne %struct.cal_fmt* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %63

40:                                               ; preds = %3
  %41 = load %struct.cal_fmt*, %struct.cal_fmt** %9, align 8
  %42 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.cal_ctx*, %struct.cal_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @pad, align 4
  %49 = load i32, i32* @enum_frame_interval, align 4
  %50 = call i32 @v4l2_subdev_call(i32 %47, i32 %48, i32 %49, i32* null, %struct.v4l2_subdev_frame_interval_enum* %10)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %40
  %56 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %57 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %53, %37
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.cal_ctx* @video_drvdata(%struct.file*) #1

declare dso_local %struct.cal_fmt* @find_format_by_pix(%struct.cal_ctx*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_frame_interval_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
