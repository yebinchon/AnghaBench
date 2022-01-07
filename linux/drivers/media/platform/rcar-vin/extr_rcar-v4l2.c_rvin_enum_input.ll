; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i32, i32, i32 }
%struct.rvin_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_input_status = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@dv_timings_cap = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @rvin_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.rvin_dev*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.rvin_dev* @video_drvdata(%struct.file* %11)
  store %struct.rvin_dev* %12, %struct.rvin_dev** %8, align 8
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %14 = call %struct.v4l2_subdev* @vin_to_source(%struct.rvin_dev* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %9, align 8
  %15 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %24 = load i32, i32* @video, align 4
  %25 = load i32, i32* @g_input_status, align 4
  %26 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %26, i32 0, i32 5
  %28 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %23, i32 %24, i32 %25, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ENOIOCTLCMD, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %73

43:                                               ; preds = %36, %31, %22
  %44 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %45 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %48 = load i32, i32* @pad, align 4
  %49 = load i32, i32* @dv_timings_cap, align 4
  %50 = call i64 @v4l2_subdev_has_op(%struct.v4l2_subdev* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %54 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  br label %68

58:                                               ; preds = %43
  %59 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %60 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %63 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %52
  %69 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strscpy(i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %41, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.rvin_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @vin_to_source(%struct.rvin_dev*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*) #1

declare dso_local i64 @v4l2_subdev_has_op(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
