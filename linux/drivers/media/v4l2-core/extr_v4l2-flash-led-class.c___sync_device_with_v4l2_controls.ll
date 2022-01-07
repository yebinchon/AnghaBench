; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c___sync_device_with_v4l2_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c___sync_device_with_v4l2_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_flash = type { %struct.v4l2_ctrl**, %struct.led_classdev_flash* }
%struct.v4l2_ctrl = type { i64 }
%struct.led_classdev_flash = type { i32 }

@TORCH_INTENSITY = common dso_local global i64 0, align 8
@INDICATOR_INTENSITY = common dso_local global i64 0, align 8
@FLASH_TIMEOUT = common dso_local global i64 0, align 8
@FLASH_INTENSITY = common dso_local global i64 0, align 8
@STROBE_SOURCE = common dso_local global i64 0, align 8
@LED_MODE = common dso_local global i64 0, align 8
@V4L2_FLASH_LED_MODE_TORCH = common dso_local global i64 0, align 8
@external_strobe_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_flash*)* @__sync_device_with_v4l2_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sync_device_with_v4l2_controls(%struct.v4l2_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_flash*, align 8
  %4 = alloca %struct.led_classdev_flash*, align 8
  %5 = alloca %struct.v4l2_ctrl**, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_flash* %0, %struct.v4l2_flash** %3, align 8
  %7 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %7, i32 0, i32 1
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  store %struct.led_classdev_flash* %9, %struct.led_classdev_flash** %4, align 8
  %10 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %10, i32 0, i32 0
  %12 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %11, align 8
  store %struct.v4l2_ctrl** %12, %struct.v4l2_ctrl*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %14 = load i64, i64* @TORCH_INTENSITY, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, i64 %14
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  %17 = icmp ne %struct.v4l2_ctrl* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %20 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %21 = load i64, i64* @TORCH_INTENSITY, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %20, i64 %21
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %22, align 8
  %24 = call i32 @v4l2_flash_set_led_brightness(%struct.v4l2_flash* %19, %struct.v4l2_ctrl* %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %27 = load i64, i64* @INDICATOR_INTENSITY, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, i64 %27
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %28, align 8
  %30 = icmp ne %struct.v4l2_ctrl* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %33 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %34 = load i64, i64* @INDICATOR_INTENSITY, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %33, i64 %34
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %35, align 8
  %37 = call i32 @v4l2_flash_set_led_brightness(%struct.v4l2_flash* %32, %struct.v4l2_ctrl* %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %40 = load i64, i64* @FLASH_TIMEOUT, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %39, i64 %40
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %41, align 8
  %43 = icmp ne %struct.v4l2_ctrl* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %4, align 8
  %46 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %47 = load i64, i64* @FLASH_TIMEOUT, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %46, i64 %47
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %48, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @led_set_flash_timeout(%struct.led_classdev_flash* %45, i64 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %105

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %60 = load i64, i64* @FLASH_INTENSITY, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %59, i64 %60
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %61, align 8
  %63 = icmp ne %struct.v4l2_ctrl* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %4, align 8
  %66 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %67 = load i64, i64* @FLASH_INTENSITY, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %66, i64 %67
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %68, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @led_set_flash_brightness(%struct.led_classdev_flash* %65, i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %105

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %80 = load i64, i64* @STROBE_SOURCE, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %79, i64 %80
  %82 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %81, align 8
  %83 = icmp ne %struct.v4l2_ctrl* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %86 = load i64, i64* @LED_MODE, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %85, i64 %86
  %88 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %87, align 8
  %89 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @V4L2_FLASH_LED_MODE_TORCH, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load %struct.v4l2_flash*, %struct.v4l2_flash** %3, align 8
  %95 = load i32, i32* @external_strobe_set, align 4
  %96 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %5, align 8
  %97 = load i64, i64* @STROBE_SOURCE, align 8
  %98 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %96, i64 %97
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %98, align 8
  %100 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @call_flash_op(%struct.v4l2_flash* %94, i32 %95, i64 %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %93, %84, %78
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %75, %55
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @v4l2_flash_set_led_brightness(%struct.v4l2_flash*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @led_set_flash_timeout(%struct.led_classdev_flash*, i64) #1

declare dso_local i32 @led_set_flash_brightness(%struct.led_classdev_flash*, i64) #1

declare dso_local i32 @call_flash_op(%struct.v4l2_flash*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
