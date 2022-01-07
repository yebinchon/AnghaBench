; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_enable_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_enable_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3560_flash = type { i32 }

@LM3560_LED0 = common dso_local global i32 0, align 4
@REG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3560_flash*, i32, i32)* @lm3560_enable_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_enable_ctrl(%struct.lm3560_flash* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lm3560_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm3560_flash* %0, %struct.lm3560_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LM3560_LED0, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %16 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REG_ENABLE, align 4
  %19 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 8, i32 8)
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %22 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REG_ENABLE, align 4
  %25 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 8, i32 0)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %14
  br label %43

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %32 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @REG_ENABLE, align 4
  %35 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 16, i32 16)
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.lm3560_flash*, %struct.lm3560_flash** %4, align 8
  %38 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @REG_ENABLE, align 4
  %41 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 16, i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
