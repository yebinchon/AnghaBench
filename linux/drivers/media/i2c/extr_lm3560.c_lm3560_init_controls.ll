; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.lm3560_flash = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.v4l2_ctrl_handler* }
%struct.TYPE_4__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_3__ = type { i32*, i32*, i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@lm3560_led_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops* null, align 8
@V4L2_CID_FLASH_LED_MODE = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_TORCH = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE_SOURCE = common dso_local global i32 0, align 4
@V4L2_FLASH_STROBE_SOURCE_SOFTWARE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE_STOP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_TIMEOUT = common dso_local global i32 0, align 4
@LM3560_FLASH_TOUT_MIN = common dso_local global i32 0, align 4
@LM3560_FLASH_TOUT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_INTENSITY = common dso_local global i32 0, align 4
@LM3560_FLASH_BRT_MIN = common dso_local global i32 0, align 4
@LM3560_FLASH_BRT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_TORCH_INTENSITY = common dso_local global i32 0, align 4
@LM3560_TORCH_BRT_MIN = common dso_local global i32 0, align 4
@LM3560_TORCH_BRT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_FAULT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_VOLTAGE = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_TIMEOUT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3560_flash*, i32)* @lm3560_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_init_controls(%struct.lm3560_flash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3560_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_ctrl_handler*, align 8
  %10 = alloca %struct.v4l2_ctrl_ops*, align 8
  store %struct.lm3560_flash* %0, %struct.lm3560_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %12 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %21 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %30 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %29, i32 0, i32 3
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %31, i64 %33
  store %struct.v4l2_ctrl_handler* %34, %struct.v4l2_ctrl_handler** %9, align 8
  %35 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** @lm3560_led_ctrl_ops, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.v4l2_ctrl_ops, %struct.v4l2_ctrl_ops* %35, i64 %37
  store %struct.v4l2_ctrl_ops* %38, %struct.v4l2_ctrl_ops** %10, align 8
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %40 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %39, i32 8)
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %42 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %43 = load i32, i32* @V4L2_CID_FLASH_LED_MODE, align 4
  %44 = load i32, i32* @V4L2_FLASH_LED_MODE_TORCH, align 4
  %45 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %46 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %41, %struct.v4l2_ctrl_ops* %42, i32 %43, i32 %44, i32 -8, i32 %45)
  %47 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %48 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %49 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %51 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %52 = load i32, i32* @V4L2_CID_FLASH_STROBE_SOURCE, align 4
  %53 = load i32, i32* @V4L2_FLASH_STROBE_SOURCE_SOFTWARE, align 4
  %54 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %50, %struct.v4l2_ctrl_ops* %51, i32 %52, i32 1, i32 -4, i32 %53)
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %56 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %57 = load i32, i32* @V4L2_CID_FLASH_STROBE, align 4
  %58 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %55, %struct.v4l2_ctrl_ops* %56, i32 %57, i32 0, i32 0, i32 0, i32 0)
  %59 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %60 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %61 = load i32, i32* @V4L2_CID_FLASH_STROBE_STOP, align 4
  %62 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %59, %struct.v4l2_ctrl_ops* %60, i32 %61, i32 0, i32 0, i32 0, i32 0)
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %64 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %65 = load i32, i32* @V4L2_CID_FLASH_TIMEOUT, align 4
  %66 = load i32, i32* @LM3560_FLASH_TOUT_MIN, align 4
  %67 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %68 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @LM3560_FLASH_TOUT_STEP, align 4
  %73 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %74 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %63, %struct.v4l2_ctrl_ops* %64, i32 %65, i32 %66, i32 %71, i32 %72, i32 %77)
  %79 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %80 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %81 = load i32, i32* @V4L2_CID_FLASH_INTENSITY, align 4
  %82 = load i32, i32* @LM3560_FLASH_BRT_MIN, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @LM3560_FLASH_BRT_STEP, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %79, %struct.v4l2_ctrl_ops* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %88 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %89 = load i32, i32* @V4L2_CID_FLASH_TORCH_INTENSITY, align 4
  %90 = load i32, i32* @LM3560_TORCH_BRT_MIN, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @LM3560_TORCH_BRT_STEP, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %87, %struct.v4l2_ctrl_ops* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %96 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %97 = load i32, i32* @V4L2_CID_FLASH_FAULT, align 4
  %98 = load i32, i32* @V4L2_FLASH_FAULT_OVER_VOLTAGE, align 4
  %99 = load i32, i32* @V4L2_FLASH_FAULT_OVER_TEMPERATURE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @V4L2_FLASH_FAULT_SHORT_CIRCUIT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @V4L2_FLASH_FAULT_TIMEOUT, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %95, %struct.v4l2_ctrl_ops* %96, i32 %97, i32 0, i32 %104, i32 0, i32 0)
  store %struct.v4l2_ctrl* %105, %struct.v4l2_ctrl** %6, align 8
  %106 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %107 = icmp ne %struct.v4l2_ctrl* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %2
  %109 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %110 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %2
  %115 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %116 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %121 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %3, align 4
  br label %132

123:                                              ; preds = %114
  %124 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %125 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %126 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %124, %struct.v4l2_ctrl_handler** %131, align 8
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %123, %119
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
