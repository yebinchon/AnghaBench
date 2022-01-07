; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i64, i32 }
%struct.ov5640_dev = type { i32, i32, i32, %struct.ov5640_mode_info*, i32, i64 }
%struct.ov5640_mode_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @ov5640_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.ov5640_dev*, align 8
  %7 = alloca %struct.ov5640_mode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev* %10)
  store %struct.ov5640_dev* %11, %struct.ov5640_dev** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %21 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %24 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %94

30:                                               ; preds = %19
  %31 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %32 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %31, i32 0, i32 3
  %33 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %32, align 8
  store %struct.ov5640_mode_info* %33, %struct.ov5640_mode_info** %7, align 8
  %34 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %35 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %35, i32 0, i32 1
  %37 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %38 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %41 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ov5640_try_frame_interval(%struct.ov5640_dev* %34, i32* %36, i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %48 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %94

52:                                               ; preds = %30
  %53 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %56 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %59 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.ov5640_mode_info* @ov5640_find_mode(%struct.ov5640_dev* %53, i32 %54, i32 %57, i32 %60, i32 1)
  store %struct.ov5640_mode_info* %61, %struct.ov5640_mode_info** %7, align 8
  %62 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %63 = icmp ne %struct.ov5640_mode_info* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %94

67:                                               ; preds = %52
  %68 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %69 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %70 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %69, i32 0, i32 3
  %71 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %70, align 8
  %72 = icmp ne %struct.ov5640_mode_info* %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %76 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %82 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %87 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %7, align 8
  %89 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %90 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %89, i32 0, i32 3
  store %struct.ov5640_mode_info* %88, %struct.ov5640_mode_info** %90, align 8
  %91 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %92 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %79, %73
  br label %94

94:                                               ; preds = %93, %64, %46, %27
  %95 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %96 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %94, %16
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov5640_try_frame_interval(%struct.ov5640_dev*, i32*, i32, i32) #1

declare dso_local %struct.ov5640_mode_info* @ov5640_find_mode(%struct.ov5640_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
