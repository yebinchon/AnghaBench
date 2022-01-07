; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.et8ek8_sensor = type { %struct.et8ek8_reglist* }
%struct.et8ek8_reglist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@meta_reglist = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @et8ek8_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.et8ek8_sensor*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.et8ek8_reglist*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %11)
  store %struct.et8ek8_sensor* %12, %struct.et8ek8_sensor** %8, align 8
  %13 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %8, align 8
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.v4l2_mbus_framefmt* @__et8ek8_get_pad_format(%struct.et8ek8_sensor* %13, %struct.v4l2_subdev_pad_config* %14, i32 %17, i32 %20)
  store %struct.v4l2_mbus_framefmt* %21, %struct.v4l2_mbus_framefmt** %9, align 8
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %23 = icmp ne %struct.v4l2_mbus_framefmt* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %3
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 1
  %30 = call %struct.et8ek8_reglist* @et8ek8_reglist_find_mode_fmt(i32* @meta_reglist, %struct.v4l2_mbus_framefmt* %29)
  store %struct.et8ek8_reglist* %30, %struct.et8ek8_reglist** %10, align 8
  %31 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %10, align 8
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = call i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist* %31, %struct.v4l2_mbus_framefmt* %33)
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %36 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %36, i32 0, i32 1
  %38 = bitcast %struct.v4l2_mbus_framefmt* %35 to i8*
  %39 = bitcast %struct.v4l2_mbus_framefmt* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %27
  %46 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %10, align 8
  %47 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %8, align 8
  %48 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %47, i32 0, i32 0
  store %struct.et8ek8_reglist* %46, %struct.et8ek8_reglist** %48, align 8
  %49 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %8, align 8
  %50 = call i32 @et8ek8_update_controls(%struct.et8ek8_sensor* %49)
  br label %51

51:                                               ; preds = %45, %27
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__et8ek8_get_pad_format(%struct.et8ek8_sensor*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.et8ek8_reglist* @et8ek8_reglist_find_mode_fmt(i32*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist*, %struct.v4l2_mbus_framefmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @et8ek8_update_controls(%struct.et8ek8_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
