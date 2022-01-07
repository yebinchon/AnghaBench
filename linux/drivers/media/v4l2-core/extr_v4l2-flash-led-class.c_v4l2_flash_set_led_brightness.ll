; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_set_led_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_set_led_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_flash = type { i32*, %struct.TYPE_2__*, %struct.v4l2_ctrl** }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@intensity_to_led_brightness = common dso_local global i32 0, align 4
@led_brightness_to_intensity = common dso_local global i32 0, align 4
@TORCH_INTENSITY = common dso_local global i64 0, align 8
@LED_MODE = common dso_local global i64 0, align 8
@V4L2_FLASH_LED_MODE_TORCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_flash*, %struct.v4l2_ctrl*)* @v4l2_flash_set_led_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_flash_set_led_brightness(%struct.v4l2_flash* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca %struct.v4l2_flash*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca %struct.v4l2_ctrl**, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_flash* %0, %struct.v4l2_flash** %3, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %4, align 8
  %7 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %7, i32 0, i32 2
  %9 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %8, align 8
  store %struct.v4l2_ctrl** %9, %struct.v4l2_ctrl*** %5, align 8
  %10 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %11 = load i32, i32* @intensity_to_led_brightness, align 4
  %12 = call i64 @has_flash_op(%struct.v4l2_flash* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %16 = load i32, i32* @intensity_to_led_brightness, align 4
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @call_flash_op(%struct.v4l2_flash* %15, i32 %16, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %6, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__intensity_to_led_brightness(%struct.v4l2_ctrl* %23, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %14
  %29 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %30 = load i32, i32* @led_brightness_to_intensity, align 4
  %31 = call i64 @has_flash_op(%struct.v4l2_flash* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %35 = load i32, i32* @led_brightness_to_intensity, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @call_flash_op(%struct.v4l2_flash* %34, i32 %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %43 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %44 = load i64, i64* @TORCH_INTENSITY, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %43, i64 %44
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %45, align 8
  %47 = icmp eq %struct.v4l2_ctrl* %42, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %50 = load i64, i64* @LED_MODE, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %49, i64 %50
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %51, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @V4L2_FLASH_LED_MODE_TORCH, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %72

59:                                               ; preds = %48
  %60 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %61 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @led_set_brightness_sync(i32* %63, i32 %64)
  br label %72

66:                                               ; preds = %41
  %67 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @led_set_brightness_sync(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %58, %66, %59
  ret void
}

declare dso_local i64 @has_flash_op(%struct.v4l2_flash*, i32) #1

declare dso_local i8* @call_flash_op(%struct.v4l2_flash*, i32, i32) #1

declare dso_local i32 @__intensity_to_led_brightness(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @led_set_brightness_sync(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
