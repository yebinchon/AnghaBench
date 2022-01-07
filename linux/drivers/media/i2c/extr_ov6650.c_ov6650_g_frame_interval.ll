; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_g_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_g_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov6650 = type { i32, i32, i32 }

@FRAME_RATE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Frame interval: %u/%u s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @ov6650_g_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_g_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ov6650*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = call %struct.ov6650* @to_ov6650(%struct.i2c_client* %9)
  store %struct.ov6650* %10, %struct.ov6650** %6, align 8
  %11 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %12 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %11, i32 0, i32 2
  %13 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %14 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %17 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @to_clkrc(i32* %12, i32 %15, i32 %18)
  %20 = call i32 @GET_CLKRC_DIV(i32 %19)
  %21 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @FRAME_RATE_MAX, align 4
  %25 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37)
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov6650* @to_ov6650(%struct.i2c_client*) #1

declare dso_local i32 @GET_CLKRC_DIV(i32) #1

declare dso_local i32 @to_clkrc(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
