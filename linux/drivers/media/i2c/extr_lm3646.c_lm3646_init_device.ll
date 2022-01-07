; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3646_flash = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@REG_ENABLE = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@REG_LED1_FLASH_BR = common dso_local global i32 0, align 4
@REG_LED1_TORCH_BR = common dso_local global i32 0, align 4
@REG_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3646_flash*)* @lm3646_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_init_device(%struct.lm3646_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3646_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3646_flash* %0, %struct.lm3646_flash** %3, align 8
  %6 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %7 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REG_ENABLE, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 252
  %18 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %19 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %21 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %22 = call i32 @lm3646_mode_ctrl(%struct.lm3646_flash* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %15
  %28 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %29 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REG_LED1_FLASH_BR, align 4
  %32 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %33 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LM3646_LED1_FLASH_BRT_uA_TO_REG(i32 %36)
  %38 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 127, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %65

43:                                               ; preds = %27
  %44 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %45 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @REG_LED1_TORCH_BR, align 4
  %48 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %49 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LM3646_LED1_TORCH_BRT_uA_TO_REG(i32 %52)
  %54 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 127, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %43
  %60 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %61 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @REG_FLAG, align 4
  %64 = call i32 @regmap_read(i32 %62, i32 %63, i32* %4)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %57, %41, %25, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @lm3646_mode_ctrl(%struct.lm3646_flash*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @LM3646_LED1_FLASH_BRT_uA_TO_REG(i32) #1

declare dso_local i32 @LM3646_LED1_TORCH_BRT_uA_TO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
