; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.lm3646_flash = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.v4l2_ctrl_handler }
%struct.TYPE_4__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@lm3646_led_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@V4L2_CID_FLASH_LED_MODE = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_TORCH = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE_SOURCE = common dso_local global i32 0, align 4
@V4L2_FLASH_STROBE_SOURCE_SOFTWARE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE_STOP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_TIMEOUT = common dso_local global i32 0, align 4
@LM3646_FLASH_TOUT_MIN = common dso_local global i32 0, align 4
@LM3646_FLASH_TOUT_MAX = common dso_local global i32 0, align 4
@LM3646_FLASH_TOUT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_INTENSITY = common dso_local global i32 0, align 4
@LM3646_TOTAL_FLASH_BRT_MIN = common dso_local global i32 0, align 4
@LM3646_TOTAL_FLASH_BRT_MAX = common dso_local global i32 0, align 4
@LM3646_TOTAL_FLASH_BRT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_TORCH_INTENSITY = common dso_local global i32 0, align 4
@LM3646_TOTAL_TORCH_BRT_MIN = common dso_local global i32 0, align 4
@LM3646_TOTAL_TORCH_BRT_MAX = common dso_local global i32 0, align 4
@LM3646_TOTAL_TORCH_BRT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_FAULT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_VOLTAGE = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_TIMEOUT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3646_flash*)* @lm3646_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_init_controls(%struct.lm3646_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3646_flash*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_ctrl_ops*, align 8
  store %struct.lm3646_flash* %0, %struct.lm3646_flash** %3, align 8
  %7 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %8 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %7, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %5, align 8
  store %struct.v4l2_ctrl_ops* @lm3646_led_ctrl_ops, %struct.v4l2_ctrl_ops** %6, align 8
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %9, i32 8)
  %11 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %12 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %13 = load i32, i32* @V4L2_CID_FLASH_LED_MODE, align 4
  %14 = load i32, i32* @V4L2_FLASH_LED_MODE_TORCH, align 4
  %15 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %16 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_ops* %12, i32 %13, i32 %14, i32 -8, i32 %15)
  %17 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %18 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %19 = load i32, i32* @V4L2_CID_FLASH_STROBE_SOURCE, align 4
  %20 = load i32, i32* @V4L2_FLASH_STROBE_SOURCE_SOFTWARE, align 4
  %21 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %17, %struct.v4l2_ctrl_ops* %18, i32 %19, i32 1, i32 -4, i32 %20)
  %22 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %23 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %24 = load i32, i32* @V4L2_CID_FLASH_STROBE, align 4
  %25 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %22, %struct.v4l2_ctrl_ops* %23, i32 %24, i32 0, i32 0, i32 0, i32 0)
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %28 = load i32, i32* @V4L2_CID_FLASH_STROBE_STOP, align 4
  %29 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, %struct.v4l2_ctrl_ops* %27, i32 %28, i32 0, i32 0, i32 0, i32 0)
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %31 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %32 = load i32, i32* @V4L2_CID_FLASH_TIMEOUT, align 4
  %33 = load i32, i32* @LM3646_FLASH_TOUT_MIN, align 4
  %34 = load i32, i32* @LM3646_FLASH_TOUT_MAX, align 4
  %35 = load i32, i32* @LM3646_FLASH_TOUT_STEP, align 4
  %36 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %37 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %30, %struct.v4l2_ctrl_ops* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %40)
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %43 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %44 = load i32, i32* @V4L2_CID_FLASH_INTENSITY, align 4
  %45 = load i32, i32* @LM3646_TOTAL_FLASH_BRT_MIN, align 4
  %46 = load i32, i32* @LM3646_TOTAL_FLASH_BRT_MAX, align 4
  %47 = load i32, i32* @LM3646_TOTAL_FLASH_BRT_STEP, align 4
  %48 = load i32, i32* @LM3646_TOTAL_FLASH_BRT_MAX, align 4
  %49 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, %struct.v4l2_ctrl_ops* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %51 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %52 = load i32, i32* @V4L2_CID_FLASH_TORCH_INTENSITY, align 4
  %53 = load i32, i32* @LM3646_TOTAL_TORCH_BRT_MIN, align 4
  %54 = load i32, i32* @LM3646_TOTAL_TORCH_BRT_MAX, align 4
  %55 = load i32, i32* @LM3646_TOTAL_TORCH_BRT_STEP, align 4
  %56 = load i32, i32* @LM3646_TOTAL_TORCH_BRT_MAX, align 4
  %57 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, %struct.v4l2_ctrl_ops* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %59 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %6, align 8
  %60 = load i32, i32* @V4L2_CID_FLASH_FAULT, align 4
  %61 = load i32, i32* @V4L2_FLASH_FAULT_OVER_VOLTAGE, align 4
  %62 = load i32, i32* @V4L2_FLASH_FAULT_OVER_TEMPERATURE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @V4L2_FLASH_FAULT_SHORT_CIRCUIT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @V4L2_FLASH_FAULT_TIMEOUT, align 4
  %67 = or i32 %65, %66
  %68 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %58, %struct.v4l2_ctrl_ops* %59, i32 %60, i32 0, i32 %67, i32 0, i32 0)
  store %struct.v4l2_ctrl* %68, %struct.v4l2_ctrl** %4, align 8
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %70 = icmp ne %struct.v4l2_ctrl* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %1
  %72 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %73 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %1
  %78 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %2, align 4
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %88 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %89 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %87, %struct.v4l2_ctrl_handler** %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %2, align 4
  ret i32 %92
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
