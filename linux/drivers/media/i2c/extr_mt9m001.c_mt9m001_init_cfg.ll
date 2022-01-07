; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_init_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MT9M001_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*)* @mt9m001_init_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_init_cfg(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9m001*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %10)
  store %struct.mt9m001* %11, %struct.mt9m001** %6, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %4, align 8
  %14 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %12, %struct.v4l2_subdev_pad_config* %13, i32 0)
  store %struct.v4l2_mbus_framefmt* %14, %struct.v4l2_mbus_framefmt** %7, align 8
  %15 = load i32, i32* @MT9M001_MAX_WIDTH, align 4
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MT9M001_MAX_HEIGHT, align 4
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %22 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mt9m001*, %struct.mt9m001** %6, align 8
  %30 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
