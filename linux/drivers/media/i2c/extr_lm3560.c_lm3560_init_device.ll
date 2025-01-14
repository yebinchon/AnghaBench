; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3560_flash = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_FLASH_TOUT = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@REG_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3560_flash*)* @lm3560_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_init_device(%struct.lm3560_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3560_flash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3560_flash* %0, %struct.lm3560_flash** %3, align 8
  %6 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %7 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @REG_FLASH_TOUT, align 4
  %10 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %11 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 96, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %22 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %23 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %25 = call i32 @lm3560_mode_ctrl(%struct.lm3560_flash* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %32 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @REG_FLAG, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %5)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %28, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @lm3560_mode_ctrl(%struct.lm3560_flash*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
