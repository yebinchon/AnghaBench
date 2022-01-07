; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_flash = type { %struct.v4l2_ctrl**, %struct.led_classdev_flash* }
%struct.led_classdev_flash = type { %struct.led_classdev }
%struct.led_classdev = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@STROBE_SOURCE = common dso_local global i64 0, align 8
@V4L2_FLASH_STROBE_SOURCE_EXTERNAL = common dso_local global i32 0, align 4
@external_strobe_set = common dso_local global i32 0, align 4
@TORCH_INTENSITY = common dso_local global i64 0, align 8
@LED_MODE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @v4l2_flash_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_flash_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_flash*, align 8
  %5 = alloca %struct.led_classdev_flash*, align 8
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca %struct.v4l2_ctrl**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = call %struct.v4l2_flash* @v4l2_ctrl_to_v4l2_flash(%struct.v4l2_ctrl* %10)
  store %struct.v4l2_flash* %11, %struct.v4l2_flash** %4, align 8
  %12 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %12, i32 0, i32 1
  %14 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %13, align 8
  store %struct.led_classdev_flash* %14, %struct.led_classdev_flash** %5, align 8
  %15 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %16 = icmp ne %struct.led_classdev_flash* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %19 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %18, i32 0, i32 0
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi %struct.led_classdev* [ %19, %17 ], [ null, %20 ]
  store %struct.led_classdev* %22, %struct.led_classdev** %6, align 8
  %23 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %23, i32 0, i32 0
  %25 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %24, align 8
  store %struct.v4l2_ctrl** %25, %struct.v4l2_ctrl*** %7, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %150 [
    i32 136, label %29
    i32 134, label %94
    i32 135, label %114
    i32 133, label %124
    i32 132, label %134
    i32 137, label %140
    i32 131, label %146
    i32 138, label %146
  ]

29:                                               ; preds = %21
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %93 [
    i32 129, label %33
    i32 130, label %39
    i32 128, label %64
  ]

33:                                               ; preds = %29
  %34 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %35 = load i32, i32* @LED_OFF, align 4
  %36 = call i32 @led_set_brightness_sync(%struct.led_classdev* %34, i32 %35)
  %37 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %38 = call i32 @led_set_flash_strobe(%struct.led_classdev_flash* %37, i32 0)
  store i32 %38, i32* %2, align 4
  br label %153

39:                                               ; preds = %29
  %40 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %41 = load i32, i32* @LED_OFF, align 4
  %42 = call i32 @led_set_brightness_sync(%struct.led_classdev* %40, i32 %41)
  %43 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %44 = load i64, i64* @STROBE_SOURCE, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %43, i64 %44
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %45, align 8
  %47 = icmp ne %struct.v4l2_ctrl* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %50 = load i64, i64* @STROBE_SOURCE, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %49, i64 %50
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %51, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @V4L2_FLASH_STROBE_SOURCE_EXTERNAL, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %59 = load i32, i32* @external_strobe_set, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @call_flash_op(%struct.v4l2_flash* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %48, %39
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %153

64:                                               ; preds = %29
  %65 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %66 = load i64, i64* @STROBE_SOURCE, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %65, i64 %66
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %67, align 8
  %69 = icmp ne %struct.v4l2_ctrl* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %72 = load i32, i32* @external_strobe_set, align 4
  %73 = call i32 @call_flash_op(%struct.v4l2_flash* %71, i32 %72, i32 0)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %153

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %81 = call i32 @led_set_flash_strobe(%struct.led_classdev_flash* %80, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %153

86:                                               ; preds = %79
  %87 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %88 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %89 = load i64, i64* @TORCH_INTENSITY, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %88, i64 %89
  %91 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %90, align 8
  %92 = call i32 @v4l2_flash_set_led_brightness(%struct.v4l2_flash* %87, %struct.v4l2_ctrl* %91)
  store i32 0, i32* %2, align 4
  br label %153

93:                                               ; preds = %29
  br label %150

94:                                               ; preds = %21
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @V4L2_FLASH_STROBE_SOURCE_EXTERNAL, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %8, align 4
  %101 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %102 = load i64, i64* @LED_MODE, align 8
  %103 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %101, i64 %102
  %104 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %103, align 8
  %105 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 130
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %153

109:                                              ; preds = %94
  %110 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %111 = load i32, i32* @external_strobe_set, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @call_flash_op(%struct.v4l2_flash* %110, i32 %111, i32 %112)
  store i32 %113, i32* %2, align 4
  br label %153

114:                                              ; preds = %21
  %115 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %116 = call i32 @__software_strobe_mode_inactive(%struct.v4l2_ctrl** %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %153

121:                                              ; preds = %114
  %122 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %123 = call i32 @led_set_flash_strobe(%struct.led_classdev_flash* %122, i32 1)
  store i32 %123, i32* %2, align 4
  br label %153

124:                                              ; preds = %21
  %125 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %126 = call i32 @__software_strobe_mode_inactive(%struct.v4l2_ctrl** %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @EBUSY, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %153

131:                                              ; preds = %124
  %132 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %133 = call i32 @led_set_flash_strobe(%struct.led_classdev_flash* %132, i32 0)
  store i32 %133, i32* %2, align 4
  br label %153

134:                                              ; preds = %21
  %135 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %136 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %137 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @led_set_flash_timeout(%struct.led_classdev_flash* %135, i32 %138)
  store i32 %139, i32* %2, align 4
  br label %153

140:                                              ; preds = %21
  %141 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %5, align 8
  %142 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %143 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @led_set_flash_brightness(%struct.led_classdev_flash* %141, i32 %144)
  store i32 %145, i32* %2, align 4
  br label %153

146:                                              ; preds = %21, %21
  %147 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %148 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %149 = call i32 @v4l2_flash_set_led_brightness(%struct.v4l2_flash* %147, %struct.v4l2_ctrl* %148)
  store i32 0, i32* %2, align 4
  br label %153

150:                                              ; preds = %21, %93
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %150, %146, %140, %134, %131, %128, %121, %118, %109, %108, %86, %84, %76, %62, %33
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.v4l2_flash* @v4l2_ctrl_to_v4l2_flash(%struct.v4l2_ctrl*) #1

declare dso_local i32 @led_set_brightness_sync(%struct.led_classdev*, i32) #1

declare dso_local i32 @led_set_flash_strobe(%struct.led_classdev_flash*, i32) #1

declare dso_local i32 @call_flash_op(%struct.v4l2_flash*, i32, i32) #1

declare dso_local i32 @v4l2_flash_set_led_brightness(%struct.v4l2_flash*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @__software_strobe_mode_inactive(%struct.v4l2_ctrl**) #1

declare dso_local i32 @led_set_flash_timeout(%struct.led_classdev_flash*, i32) #1

declare dso_local i32 @led_set_flash_brightness(%struct.led_classdev_flash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
