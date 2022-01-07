; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.lm3646_flash = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_FLASH = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@REG_STROBE_SRC = common dso_local global i32 0, align 4
@MASK_STROBE_SRC = common dso_local global i32 0, align 4
@REG_ENABLE = common dso_local global i32 0, align 4
@MASK_ENABLE = common dso_local global i32 0, align 4
@MODE_SHDN = common dso_local global i32 0, align 4
@MODE_FLASH = common dso_local global i32 0, align 4
@REG_FLASH_TOUT = common dso_local global i32 0, align 4
@MASK_FLASH_TOUT = common dso_local global i32 0, align 4
@REG_FLASH_BR = common dso_local global i32 0, align 4
@MASK_FLASH_BR = common dso_local global i32 0, align 4
@REG_TORCH_BR = common dso_local global i32 0, align 4
@MASK_TORCH_BR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @lm3646_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_set_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.lm3646_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.lm3646_flash* @to_lm3646_flash(%struct.v4l2_ctrl* %7)
  store %struct.lm3646_flash* %8, %struct.lm3646_flash** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %117 [
    i32 133, label %14
    i32 131, label %30
    i32 132, label %41
    i32 130, label %61
    i32 129, label %83
    i32 134, label %94
    i32 128, label %105
  ]

14:                                               ; preds = %1
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_FLASH_LED_MODE_FLASH, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lm3646_mode_ctrl(%struct.lm3646_flash* %21, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %120

26:                                               ; preds = %14
  %27 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %28 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %29 = call i32 @lm3646_mode_ctrl(%struct.lm3646_flash* %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %1
  %31 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %32 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @REG_STROBE_SRC, align 4
  %35 = load i32, i32* @MASK_STROBE_SRC, align 4
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 7
  %40 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %120

41:                                               ; preds = %1
  %42 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %43 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @REG_ENABLE, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MASK_ENABLE, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @MODE_SHDN, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %120

57:                                               ; preds = %49
  %58 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %59 = load i32, i32* @V4L2_FLASH_LED_MODE_FLASH, align 4
  %60 = call i32 @lm3646_mode_ctrl(%struct.lm3646_flash* %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %120

61:                                               ; preds = %1
  %62 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %63 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @REG_ENABLE, align 4
  %66 = call i32 @regmap_read(i32 %64, i32 %65, i32* %5)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %120

71:                                               ; preds = %61
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MASK_ENABLE, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @MODE_FLASH, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %79 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %80 = call i32 @lm3646_mode_ctrl(%struct.lm3646_flash* %78, i32 %79)
  store i32 %80, i32* %2, align 4
  br label %120

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %120

83:                                               ; preds = %1
  %84 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %85 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @REG_FLASH_TOUT, align 4
  %88 = load i32, i32* @MASK_FLASH_TOUT, align 4
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @LM3646_FLASH_TOUT_ms_TO_REG(i32 %91)
  %93 = call i32 @regmap_update_bits(i32 %86, i32 %87, i32 %88, i32 %92)
  store i32 %93, i32* %2, align 4
  br label %120

94:                                               ; preds = %1
  %95 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %96 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @REG_FLASH_BR, align 4
  %99 = load i32, i32* @MASK_FLASH_BR, align 4
  %100 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @LM3646_TOTAL_FLASH_BRT_uA_TO_REG(i32 %102)
  %104 = call i32 @regmap_update_bits(i32 %97, i32 %98, i32 %99, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %120

105:                                              ; preds = %1
  %106 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %107 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @REG_TORCH_BR, align 4
  %110 = load i32, i32* @MASK_TORCH_BR, align 4
  %111 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %112 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @LM3646_TOTAL_TORCH_BRT_uA_TO_REG(i32 %113)
  %115 = shl i32 %114, 4
  %116 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %110, i32 %115)
  store i32 %116, i32* %2, align 4
  br label %120

117:                                              ; preds = %1
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %117, %105, %94, %83, %81, %77, %69, %57, %55, %30, %26, %20
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.lm3646_flash* @to_lm3646_flash(%struct.v4l2_ctrl*) #1

declare dso_local i32 @lm3646_mode_ctrl(%struct.lm3646_flash*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @LM3646_FLASH_TOUT_ms_TO_REG(i32) #1

declare dso_local i32 @LM3646_TOTAL_FLASH_BRT_uA_TO_REG(i32) #1

declare dso_local i32 @LM3646_TOTAL_TORCH_BRT_uA_TO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
