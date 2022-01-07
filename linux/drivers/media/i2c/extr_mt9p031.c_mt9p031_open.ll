; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.mt9p031 = type { i64 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i8*, i8*, i32 }
%struct.v4l2_rect = type { i8*, i8*, i32, i32 }

@MT9P031_COLUMN_START_DEF = common dso_local global i32 0, align 4
@MT9P031_ROW_START_DEF = common dso_local global i32 0, align 4
@MT9P031_WINDOW_WIDTH_DEF = common dso_local global i8* null, align 8
@MT9P031_WINDOW_HEIGHT_DEF = common dso_local global i8* null, align 8
@MT9P031_MODEL_MONOCHROME = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_Y12_1X12 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SGRBG12_1X12 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @mt9p031_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p031_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.mt9p031*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.mt9p031* @to_mt9p031(%struct.v4l2_subdev* %8)
  store %struct.mt9p031* %9, %struct.mt9p031** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev* %10, i32 %13, i32 0)
  store %struct.v4l2_rect* %14, %struct.v4l2_rect** %7, align 8
  %15 = load i32, i32* @MT9P031_COLUMN_START_DEF, align 4
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MT9P031_ROW_START_DEF, align 4
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @MT9P031_WINDOW_WIDTH_DEF, align 8
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @MT9P031_WINDOW_HEIGHT_DEF, align 8
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %27, i32 %30, i32 0)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %6, align 8
  %32 = load %struct.mt9p031*, %struct.mt9p031** %5, align 8
  %33 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MT9P031_MODEL_MONOCHROME, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @MEDIA_BUS_FMT_Y12_1X12, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @MEDIA_BUS_FMT_SGRBG12_1X12, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i8*, i8** @MT9P031_WINDOW_WIDTH_DEF, align 8
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @MT9P031_WINDOW_HEIGHT_DEF, align 8
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %59 = call i32 @mt9p031_set_power(%struct.v4l2_subdev* %58, i32 1)
  ret i32 %59
}

declare dso_local %struct.mt9p031* @to_mt9p031(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mt9p031_set_power(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
