; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, i32 }
%struct.lm3646_flash = type { i32 }

@V4L2_CID_FLASH_FAULT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@REG_FLAG = common dso_local global i32 0, align 4
@FAULT_TIMEOUT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_TIMEOUT = common dso_local global i32 0, align 4
@FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_SHORT_CIRCUIT = common dso_local global i32 0, align 4
@FAULT_UVLO = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@FAULT_IVFM = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_INPUT_VOLTAGE = common dso_local global i32 0, align 4
@FAULT_OCP = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_CURRENT = common dso_local global i32 0, align 4
@FAULT_OVERTEMP = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@FAULT_NTC_TRIP = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_LED_OVER_TEMPERATURE = common dso_local global i32 0, align 4
@FAULT_OVP = common dso_local global i32 0, align 4
@V4L2_FLASH_FAULT_OVER_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @lm3646_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_get_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.lm3646_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.lm3646_flash* @to_lm3646_flash(%struct.v4l2_ctrl* %7)
  store %struct.lm3646_flash* %8, %struct.lm3646_flash** %4, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_CID_FLASH_FAULT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %118

17:                                               ; preds = %1
  %18 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %19 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @REG_FLAG, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %118

27:                                               ; preds = %17
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FAULT_TIMEOUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @V4L2_FLASH_FAULT_TIMEOUT, align 4
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FAULT_SHORT_CIRCUIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @V4L2_FLASH_FAULT_SHORT_CIRCUIT, align 4
  %47 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @FAULT_UVLO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @V4L2_FLASH_FAULT_UNDER_VOLTAGE, align 4
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %59 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @FAULT_IVFM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @V4L2_FLASH_FAULT_INPUT_VOLTAGE, align 4
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FAULT_OCP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @V4L2_FLASH_FAULT_OVER_CURRENT, align 4
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @FAULT_OVERTEMP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @V4L2_FLASH_FAULT_OVER_TEMPERATURE, align 4
  %91 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @FAULT_NTC_TRIP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @V4L2_FLASH_FAULT_LED_OVER_TEMPERATURE, align 4
  %102 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %103 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @FAULT_OVP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @V4L2_FLASH_FAULT_OVER_VOLTAGE, align 4
  %113 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %106
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %25, %14
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.lm3646_flash* @to_lm3646_flash(%struct.v4l2_ctrl*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
