; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.lm3560_flash = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_FLASH = common dso_local global i32 0, align 4
@REG_CONFIG1 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@REG_FLASH_TOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i32)* @lm3560_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_set_ctrl(%struct.v4l2_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3560_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.lm3560_flash* @to_lm3560_flash(%struct.v4l2_ctrl* %8, i32 %9)
  store %struct.lm3560_flash* %10, %struct.lm3560_flash** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %14 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %103 [
    i32 133, label %19
    i32 131, label %34
    i32 132, label %48
    i32 130, label %63
    i32 129, label %78
    i32 134, label %89
    i32 128, label %96
  ]

19:                                               ; preds = %2
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %24 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %26 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @V4L2_FLASH_LED_MODE_FLASH, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %32 = call i32 @lm3560_mode_ctrl(%struct.lm3560_flash* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %19
  br label %103

34:                                               ; preds = %2
  %35 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %36 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @REG_CONFIG1, align 4
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 2
  %43 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 4, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %104

47:                                               ; preds = %34
  br label %103

48:                                               ; preds = %2
  %49 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %50 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @V4L2_FLASH_LED_MODE_FLASH, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %104

57:                                               ; preds = %48
  %58 = load i32, i32* @V4L2_FLASH_LED_MODE_FLASH, align 4
  %59 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %60 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %62 = call i32 @lm3560_mode_ctrl(%struct.lm3560_flash* %61)
  store i32 %62, i32* %7, align 4
  br label %103

63:                                               ; preds = %2
  %64 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %65 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @V4L2_FLASH_LED_MODE_FLASH, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %104

72:                                               ; preds = %63
  %73 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %74 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %75 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %77 = call i32 @lm3560_mode_ctrl(%struct.lm3560_flash* %76)
  store i32 %77, i32* %7, align 4
  br label %103

78:                                               ; preds = %2
  %79 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LM3560_FLASH_TOUT_ms_TO_REG(i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %84 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @REG_FLASH_TOUT, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 31, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %103

89:                                               ; preds = %2
  %90 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @lm3560_flash_brt_ctrl(%struct.lm3560_flash* %90, i32 %91, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %103

96:                                               ; preds = %2
  %97 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %100 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lm3560_torch_brt_ctrl(%struct.lm3560_flash* %97, i32 %98, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %2, %96, %89, %78, %72, %57, %47, %33
  br label %104

104:                                              ; preds = %103, %69, %54, %46
  %105 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %106 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local %struct.lm3560_flash* @to_lm3560_flash(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm3560_mode_ctrl(%struct.lm3560_flash*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @LM3560_FLASH_TOUT_ms_TO_REG(i32) #1

declare dso_local i32 @lm3560_flash_brt_ctrl(%struct.lm3560_flash*, i32, i32) #1

declare dso_local i32 @lm3560_torch_brt_ctrl(%struct.lm3560_flash*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
