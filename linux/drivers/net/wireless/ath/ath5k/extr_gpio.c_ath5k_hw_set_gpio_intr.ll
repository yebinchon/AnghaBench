; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_set_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_set_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_NUM_GPIO = common dso_local global i32 0, align 4
@AR5K_GPIOCR = common dso_local global i32 0, align 4
@AR5K_GPIOCR_INT_SELH = common dso_local global i32 0, align 4
@AR5K_GPIOCR_INT_ENA = common dso_local global i32 0, align 4
@AR5K_IMR_GPIO = common dso_local global i32 0, align 4
@AR5K_PIMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_gpio_intr(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @AR5K_NUM_GPIO, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %54

12:                                               ; preds = %3
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = load i32, i32* @AR5K_GPIOCR, align 4
  %15 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @AR5K_GPIOCR_INT_SEL(i32 %16)
  %18 = load i32, i32* @AR5K_GPIOCR_INT_SELH, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AR5K_GPIOCR_INT_ENA, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @AR5K_GPIOCR_OUT(i32 %22)
  %24 = or i32 %21, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %15, %25
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @AR5K_GPIOCR_INT_SEL(i32 %27)
  %29 = load i32, i32* @AR5K_GPIOCR_INT_ENA, align 4
  %30 = or i32 %28, %29
  %31 = or i32 %26, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  br label %41

37:                                               ; preds = %12
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AR5K_GPIOCR_INT_SELH, align 4
  %40 = or i32 %38, %39
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ]
  %43 = load i32, i32* @AR5K_GPIOCR, align 4
  %44 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %32, i32 %42, i32 %43)
  %45 = load i32, i32* @AR5K_IMR_GPIO, align 4
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %51 = load i32, i32* @AR5K_PIMR, align 4
  %52 = load i32, i32* @AR5K_IMR_GPIO, align 4
  %53 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_GPIOCR_INT_SEL(i32) #1

declare dso_local i32 @AR5K_GPIOCR_OUT(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
