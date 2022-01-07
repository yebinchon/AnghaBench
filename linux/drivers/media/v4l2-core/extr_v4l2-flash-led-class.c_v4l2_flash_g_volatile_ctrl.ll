; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_flash = type { %struct.led_classdev_flash* }
%struct.led_classdev_flash = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @v4l2_flash_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_flash_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_flash*, align 8
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.v4l2_flash* @v4l2_ctrl_to_v4l2_flash(%struct.v4l2_ctrl* %8)
  store %struct.v4l2_flash* %9, %struct.v4l2_flash** %4, align 8
  %10 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %10, i32 0, i32 0
  %12 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %11, align 8
  store %struct.led_classdev_flash* %12, %struct.led_classdev_flash** %5, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %50 [
    i32 128, label %16
    i32 131, label %16
    i32 130, label %20
    i32 129, label %34
    i32 132, label %45
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = call i32 @v4l2_flash_update_led_brightness(%struct.v4l2_flash* %17, %struct.v4l2_ctrl* %18)
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %22 = call i32 @led_update_flash_brightness(%struct.led_classdev_flash* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %29 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %53

34:                                               ; preds = %1
  %35 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %36 = call i32 @led_get_flash_strobe(%struct.led_classdev_flash* %35, i32* %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %53

45:                                               ; preds = %1
  %46 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %47 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %47, i32 0, i32 1
  %49 = call i32 @led_get_flash_fault(%struct.led_classdev_flash* %46, i32* %48)
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %45, %41, %39, %27, %25, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.v4l2_flash* @v4l2_ctrl_to_v4l2_flash(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_flash_update_led_brightness(%struct.v4l2_flash*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @led_update_flash_brightness(%struct.led_classdev_flash*) #1

declare dso_local i32 @led_get_flash_strobe(%struct.led_classdev_flash*, i32*) #1

declare dso_local i32 @led_get_flash_fault(%struct.led_classdev_flash*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
