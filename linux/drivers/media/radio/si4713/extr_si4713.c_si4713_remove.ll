; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.si4713_device = type { i64, i32 }

@POWER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @si4713_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.si4713_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %7)
  store %struct.si4713_device* %8, %struct.si4713_device** %4, align 8
  %9 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %10 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @platform_device_unregister(i32 %11)
  %13 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %14 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %19 = load i32, i32* @POWER_DOWN, align 4
  %20 = call i32 @si4713_set_power_state(%struct.si4713_device* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l2_ctrl_handler_free(i32 %26)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @si4713_set_power_state(%struct.si4713_device*, i32) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
