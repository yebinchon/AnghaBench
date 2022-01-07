; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.mt9v032 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i8*, i8*, i32 }
%struct.v4l2_rect = type { i8*, i8*, i32, i32 }

@MT9V032_COLUMN_START_DEF = common dso_local global i32 0, align 4
@MT9V032_ROW_START_DEF = common dso_local global i32 0, align 4
@MT9V032_WINDOW_WIDTH_DEF = common dso_local global i8* null, align 8
@MT9V032_WINDOW_HEIGHT_DEF = common dso_local global i8* null, align 8
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y10_1X10 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @mt9v032_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v032_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.mt9v032*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.mt9v032* @to_mt9v032(%struct.v4l2_subdev* %8)
  store %struct.mt9v032* %9, %struct.mt9v032** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %10, i32 %13, i32 0)
  store %struct.v4l2_rect* %14, %struct.v4l2_rect** %7, align 8
  %15 = load i32, i32* @MT9V032_COLUMN_START_DEF, align 4
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MT9V032_ROW_START_DEF, align 4
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @MT9V032_WINDOW_WIDTH_DEF, align 8
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @MT9V032_WINDOW_HEIGHT_DEF, align 8
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %27, i32 %30, i32 0)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %6, align 8
  %32 = load %struct.mt9v032*, %struct.mt9v032** %5, align 8
  %33 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @MEDIA_BUS_FMT_Y10_1X10, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i8*, i8** @MT9V032_WINDOW_WIDTH_DEF, align 8
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @MT9V032_WINDOW_HEIGHT_DEF, align 8
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = call i32 @mt9v032_set_power(%struct.v4l2_subdev* %59, i32 1)
  ret i32 %60
}

declare dso_local %struct.mt9v032* @to_mt9v032(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mt9v032_set_power(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
