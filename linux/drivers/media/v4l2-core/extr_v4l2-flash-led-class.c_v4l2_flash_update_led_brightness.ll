; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_update_led_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_update_led_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_flash = type { %struct.led_classdev*, %struct.TYPE_2__*, %struct.v4l2_ctrl** }
%struct.led_classdev = type { i32 }
%struct.TYPE_2__ = type { %struct.led_classdev }
%struct.v4l2_ctrl = type { i64 }

@TORCH_INTENSITY = common dso_local global i64 0, align 8
@LED_MODE = common dso_local global i64 0, align 8
@V4L2_FLASH_LED_MODE_TORCH = common dso_local global i64 0, align 8
@led_brightness_to_intensity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_flash*, %struct.v4l2_ctrl*)* @v4l2_flash_update_led_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_flash_update_led_brightness(%struct.v4l2_flash* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_flash*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.v4l2_ctrl**, align 8
  %7 = alloca %struct.led_classdev*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_flash* %0, %struct.v4l2_flash** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %9 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %9, i32 0, i32 2
  %11 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %10, align 8
  store %struct.v4l2_ctrl** %11, %struct.v4l2_ctrl*** %6, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %13 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %6, align 8
  %14 = load i64, i64* @TORCH_INTENSITY, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, i64 %14
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  %17 = icmp eq %struct.v4l2_ctrl* %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %6, align 8
  %20 = load i64, i64* @LED_MODE, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %19, i64 %20
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_FLASH_LED_MODE_TORCH, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %67

28:                                               ; preds = %18
  %29 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.led_classdev* %32, %struct.led_classdev** %7, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %34, i32 0, i32 0
  %36 = load %struct.led_classdev*, %struct.led_classdev** %35, align 8
  store %struct.led_classdev* %36, %struct.led_classdev** %7, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %39 = call i32 @led_update_brightness(%struct.led_classdev* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %37
  %45 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %46 = load i32, i32* @led_brightness_to_intensity, align 4
  %47 = call i64 @has_flash_op(%struct.v4l2_flash* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %51 = load i32, i32* @led_brightness_to_intensity, align 4
  %52 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %53 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @call_flash_op(%struct.v4l2_flash* %50, i32 %51, i32 %54)
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %66

58:                                               ; preds = %44
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %60 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %61 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @__led_brightness_to_intensity(%struct.v4l2_ctrl* %59, i32 %62)
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %49
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %42, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @led_update_brightness(%struct.led_classdev*) #1

declare dso_local i64 @has_flash_op(%struct.v4l2_flash*, i32) #1

declare dso_local i64 @call_flash_op(%struct.v4l2_flash*, i32, i32) #1

declare dso_local i64 @__led_brightness_to_intensity(%struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
