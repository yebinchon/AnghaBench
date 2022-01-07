; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_sensor = type { i32, %struct.TYPE_2__*, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"sensor configuration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et8ek8_sensor*)* @et8ek8_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_configure(%struct.et8ek8_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et8ek8_sensor*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.et8ek8_sensor* %0, %struct.et8ek8_sensor** %3, align 8
  %7 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %7, i32 0, i32 2
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %13 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @et8ek8_i2c_write_regs(%struct.i2c_client* %11, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %3, align 8
  %23 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %22, i32 0, i32 0
  %24 = call i32 @v4l2_ctrl_handler_setup(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %27, %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @et8ek8_i2c_write_regs(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
