; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-sensor.c_stk_sensor_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-sensor.c_stk_sensor_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_AEB = common dso_local global i32 0, align 4
@REG_AEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk_sensor_set_brightness(%struct.stk_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk_camera*, align 8
  %5 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 255
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %8
  %15 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %16 = load i32, i32* @REG_AEB, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 6
  %19 = call i32 @max(i32 0, i32 %18)
  %20 = call i32 @stk_sensor_outb(%struct.stk_camera* %15, i32 %16, i32 %19)
  %21 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %22 = load i32, i32* @REG_AEW, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 6
  %25 = call i32 @min(i32 255, i32 %24)
  %26 = call i32 @stk_sensor_outb(%struct.stk_camera* %21, i32 %22, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @stk_sensor_outb(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
