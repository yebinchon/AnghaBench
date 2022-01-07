; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.et8ek8_sensor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @et8ek8_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.et8ek8_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %8)
  store %struct.et8ek8_sensor* %9, %struct.et8ek8_sensor** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %14 = call i32 @et8ek8_stream_off(%struct.et8ek8_sensor* %13)
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %17 = call i32 @et8ek8_configure(%struct.et8ek8_sensor* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %15
  %23 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %6, align 8
  %24 = call i32 @et8ek8_stream_on(%struct.et8ek8_sensor* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %20, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local i32 @et8ek8_stream_off(%struct.et8ek8_sensor*) #1

declare dso_local i32 @et8ek8_configure(%struct.et8ek8_sensor*) #1

declare dso_local i32 @et8ek8_stream_on(%struct.et8ek8_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
