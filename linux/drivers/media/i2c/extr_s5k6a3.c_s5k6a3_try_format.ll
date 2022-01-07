; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@S5K6A3_SENSOR_MIN_WIDTH = common dso_local global i32 0, align 4
@S5K6A3_SENSOR_MAX_WIDTH = common dso_local global i32 0, align 4
@S5K6A3_SENSOR_MIN_HEIGHT = common dso_local global i32 0, align 4
@S5K6A3_SENSOR_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*)* @s5k6a3_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k6a3_try_format(%struct.v4l2_mbus_framefmt* %0) #0 {
  %2 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %2, align 8
  %4 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %5 = call %struct.v4l2_mbus_framefmt* @find_sensor_format(%struct.v4l2_mbus_framefmt* %4)
  store %struct.v4l2_mbus_framefmt* %5, %struct.v4l2_mbus_framefmt** %3, align 8
  %6 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i32 0, i32 1
  %16 = load i32, i32* @S5K6A3_SENSOR_MIN_WIDTH, align 4
  %17 = load i32, i32* @S5K6A3_SENSOR_MAX_WIDTH, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 0
  %20 = load i32, i32* @S5K6A3_SENSOR_MIN_HEIGHT, align 4
  %21 = load i32, i32* @S5K6A3_SENSOR_MAX_HEIGHT, align 4
  %22 = call i32 @v4l_bound_align_image(i32* %15, i32 %16, i32 %17, i32 0, i32* %19, i32 %20, i32 %21, i32 0, i32 0)
  ret void
}

declare dso_local %struct.v4l2_mbus_framefmt* @find_sensor_format(%struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
