; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp1653_flash = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@adp1653_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_LED_MODE = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_TORCH = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE_SOURCE = common dso_local global i32 0, align 4
@V4L2_FLASH_STROBE_SOURCE_SOFTWARE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_STROBE_STOP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_TIMEOUT = common dso_local global i32 0, align 4
@TIMEOUT_MIN = common dso_local global i32 0, align 4
@TIMEOUT_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_INTENSITY = common dso_local global i32 0, align 4
@ADP1653_FLASH_INTENSITY_MIN = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_TORCH_INTENSITY = common dso_local global i32 0, align 4
@ADP1653_TORCH_INTENSITY_MIN = common dso_local global i32 0, align 4
@ADP1653_FLASH_INTENSITY_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_INDICATOR_INTENSITY = common dso_local global i32 0, align 4
@ADP1653_INDICATOR_INTENSITY_MIN = common dso_local global i32 0, align 4
@ADP1653_INDICATOR_INTENSITY_STEP = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_FAULT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_VOLTAGE = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp1653_flash*)* @adp1653_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp1653_init_controls(%struct.adp1653_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adp1653_flash*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.adp1653_flash* %0, %struct.adp1653_flash** %3, align 8
  %5 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %6 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %5, i32 0, i32 0
  %7 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %6, i32 9)
  %8 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %9 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %8, i32 0, i32 0
  %10 = load i32, i32* @V4L2_CID_FLASH_LED_MODE, align 4
  %11 = load i32, i32* @V4L2_FLASH_LED_MODE_TORCH, align 4
  %12 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_8__* %9, i32* @adp1653_ctrl_ops, i32 %10, i32 %11, i32 -8, i32 0)
  %13 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %14 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %16 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %15, i32 0, i32 0
  %17 = load i32, i32* @V4L2_CID_FLASH_STROBE_SOURCE, align 4
  %18 = load i32, i32* @V4L2_FLASH_STROBE_SOURCE_SOFTWARE, align 4
  %19 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_8__* %16, i32* @adp1653_ctrl_ops, i32 %17, i32 %18, i32 -2, i32 0)
  %20 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %21 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %20, i32 0, i32 0
  %22 = load i32, i32* @V4L2_CID_FLASH_STROBE, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %21, i32* @adp1653_ctrl_ops, i32 %22, i32 0, i32 0, i32 0, i32 0)
  %24 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %25 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %24, i32 0, i32 0
  %26 = load i32, i32* @V4L2_CID_FLASH_STROBE_STOP, align 4
  %27 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %25, i32* @adp1653_ctrl_ops, i32 %26, i32 0, i32 0, i32 0, i32 0)
  %28 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %29 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %28, i32 0, i32 0
  %30 = load i32, i32* @V4L2_CID_FLASH_TIMEOUT, align 4
  %31 = load i32, i32* @TIMEOUT_MIN, align 4
  %32 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %33 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TIMEOUT_STEP, align 4
  %38 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %39 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %29, i32* @adp1653_ctrl_ops, i32 %30, i32 %31, i32 %36, i32 %37, i32 %42)
  %44 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %45 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %47 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %46, i32 0, i32 0
  %48 = load i32, i32* @V4L2_CID_FLASH_INTENSITY, align 4
  %49 = load i32, i32* @ADP1653_FLASH_INTENSITY_MIN, align 4
  %50 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %51 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %56 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %47, i32* @adp1653_ctrl_ops, i32 %48, i32 %49, i32 %54, i32 1, i32 %59)
  %61 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %62 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %64 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %63, i32 0, i32 0
  %65 = load i32, i32* @V4L2_CID_FLASH_TORCH_INTENSITY, align 4
  %66 = load i32, i32* @ADP1653_TORCH_INTENSITY_MIN, align 4
  %67 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %68 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ADP1653_FLASH_INTENSITY_STEP, align 4
  %73 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %74 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %64, i32* @adp1653_ctrl_ops, i32 %65, i32 %66, i32 %71, i32 %72, i32 %77)
  %79 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %80 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %82 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %81, i32 0, i32 0
  %83 = load i32, i32* @V4L2_CID_FLASH_INDICATOR_INTENSITY, align 4
  %84 = load i32, i32* @ADP1653_INDICATOR_INTENSITY_MIN, align 4
  %85 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %86 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ADP1653_INDICATOR_INTENSITY_STEP, align 4
  %91 = load i32, i32* @ADP1653_INDICATOR_INTENSITY_MIN, align 4
  %92 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %82, i32* @adp1653_ctrl_ops, i32 %83, i32 %84, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %94 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %96 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %95, i32 0, i32 0
  %97 = load i32, i32* @V4L2_CID_FLASH_FAULT, align 4
  %98 = load i32, i32* @V4L2_FLASH_FAULT_OVER_VOLTAGE, align 4
  %99 = load i32, i32* @V4L2_FLASH_FAULT_OVER_TEMPERATURE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @V4L2_FLASH_FAULT_SHORT_CIRCUIT, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %96, i32* @adp1653_ctrl_ops, i32 %97, i32 0, i32 %102, i32 0, i32 0)
  %104 = bitcast i8* %103 to %struct.v4l2_ctrl*
  store %struct.v4l2_ctrl* %104, %struct.v4l2_ctrl** %4, align 8
  %105 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %106 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %1
  %111 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %112 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %2, align 4
  br label %126

115:                                              ; preds = %1
  %116 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %117 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %122 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %121, i32 0, i32 0
  %123 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %124 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %125, align 8
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %115, %110
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_8__*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
