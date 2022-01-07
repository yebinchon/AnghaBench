; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-lptimer.c_stm32_lptimer_detect_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-lptimer.c_stm32_lptimer_detect_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_lptimer = type { i32, i32 }

@STM32_LPTIM_CFGR = common dso_local global i32 0, align 4
@STM32_LPTIM_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_lptimer*)* @stm32_lptimer_detect_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptimer_detect_encoder(%struct.stm32_lptimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_lptimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_lptimer* %0, %struct.stm32_lptimer** %3, align 8
  %6 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %10 = load i32, i32* @STM32_LPTIM_ENC, align 4
  %11 = load i32, i32* @STM32_LPTIM_ENC, align 4
  %12 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %17
  %28 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %32 = load i32, i32* @STM32_LPTIM_ENC, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @STM32_LPTIM_ENC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %3, align 8
  %47 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %38, %36, %25, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
