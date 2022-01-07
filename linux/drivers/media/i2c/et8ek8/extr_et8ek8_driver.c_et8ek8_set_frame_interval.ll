; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32 }
%struct.et8ek8_sensor = type { %struct.et8ek8_reglist* }
%struct.et8ek8_reglist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@meta_reglist = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @et8ek8_set_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_set_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.et8ek8_sensor*, align 8
  %7 = alloca %struct.et8ek8_reglist*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %8)
  store %struct.et8ek8_sensor* %9, %struct.et8ek8_sensor** %6, align 8
  %10 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %11 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %10, i32 0, i32 0
  %12 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %11, align 8
  %13 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %13, i32 0, i32 0
  %15 = call %struct.et8ek8_reglist* @et8ek8_reglist_find_mode_ival(i32* @meta_reglist, %struct.et8ek8_reglist* %12, i32* %14)
  store %struct.et8ek8_reglist* %15, %struct.et8ek8_reglist** %7, align 8
  %16 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %7, align 8
  %17 = icmp ne %struct.et8ek8_reglist* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %23 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %22, i32 0, i32 0
  %24 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %23, align 8
  %25 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %7, align 8
  %29 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %7, align 8
  %38 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %39 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %38, i32 0, i32 0
  store %struct.et8ek8_reglist* %37, %struct.et8ek8_reglist** %39, align 8
  %40 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %41 = call i32 @et8ek8_update_controls(%struct.et8ek8_sensor* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %33, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.et8ek8_reglist* @et8ek8_reglist_find_mode_ival(i32*, %struct.et8ek8_reglist*, i32*) #1

declare dso_local i32 @et8ek8_update_controls(%struct.et8ek8_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
