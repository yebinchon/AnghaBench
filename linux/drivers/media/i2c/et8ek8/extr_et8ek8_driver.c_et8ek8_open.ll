; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.et8ek8_sensor = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.et8ek8_reglist = type { i32 }

@meta_reglist = common dso_local global i32 0, align 4
@ET8EK8_REGLIST_MODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @et8ek8_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.et8ek8_sensor*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.et8ek8_reglist*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %8)
  store %struct.et8ek8_sensor* %9, %struct.et8ek8_sensor** %5, align 8
  %10 = load i32, i32* @ET8EK8_REGLIST_MODE, align 4
  %11 = call %struct.et8ek8_reglist* @et8ek8_reglist_find_type(i32* @meta_reglist, i32 %10)
  store %struct.et8ek8_reglist* %11, %struct.et8ek8_reglist** %7, align 8
  %12 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %5, align 8
  %13 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %17 = call %struct.v4l2_mbus_framefmt* @__et8ek8_get_pad_format(%struct.et8ek8_sensor* %12, i32 %15, i32 0, i32 %16)
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %6, align 8
  %18 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %7, align 8
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %20 = call i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist* %18, %struct.v4l2_mbus_framefmt* %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = call i32 @et8ek8_set_power(%struct.v4l2_subdev* %21, i32 1)
  ret i32 %22
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.et8ek8_reglist* @et8ek8_reglist_find_type(i32*, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__et8ek8_get_pad_format(%struct.et8ek8_sensor*, i32, i32, i32) #1

declare dso_local i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @et8ek8_set_power(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
