; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_flash_brt_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_flash_brt_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3560_flash = type { i32 }

@LM3560_FLASH_BRT_MIN = common dso_local global i32 0, align 4
@LM3560_LED0 = common dso_local global i32 0, align 4
@REG_FLASH_BR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3560_flash*, i32, i32)* @lm3560_flash_brt_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_flash_brt_ctrl(%struct.lm3560_flash* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3560_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lm3560_flash* %0, %struct.lm3560_flash** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @LM3560_FLASH_BRT_MIN, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @lm3560_enable_ctrl(%struct.lm3560_flash* %14, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @lm3560_enable_ctrl(%struct.lm3560_flash* %18, i32 %19, i32 1)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @LM3560_FLASH_BRT_uA_TO_REG(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LM3560_LED0, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %29 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REG_FLASH_BR, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 15, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %42

34:                                               ; preds = %21
  %35 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %36 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @REG_FLASH_BR, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 240, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @lm3560_enable_ctrl(%struct.lm3560_flash*, i32, i32) #1

declare dso_local i32 @LM3560_FLASH_BRT_uA_TO_REG(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
