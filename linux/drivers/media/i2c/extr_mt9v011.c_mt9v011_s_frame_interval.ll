; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_mt9v011_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_mt9v011_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }

@R0A_MT9V011_CLK_SPEED = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Setting speed to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @mt9v011_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.v4l2_fract*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %7 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %7, i32 0, i32 0
  store %struct.v4l2_fract* %8, %struct.v4l2_fract** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @calc_speed(%struct.v4l2_subdev* %9, i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load i32, i32* @R0A_MT9V011_CLK_SPEED, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mt9v011_write(%struct.v4l2_subdev* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @debug, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @v4l2_dbg(i32 1, i32 %21, %struct.v4l2_subdev* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %26, i32 0, i32 1
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 0
  %30 = call i32 @calc_fps(%struct.v4l2_subdev* %25, i32* %27, i32* %29)
  ret i32 0
}

declare dso_local i32 @calc_speed(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @mt9v011_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @calc_fps(%struct.v4l2_subdev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
