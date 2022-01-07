; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dm355evm_msp.c_msp_gpio_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dm355evm_msp.c_msp_gpio_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@DM355EVM_MSP_LED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@msp_led_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @msp_gpio_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_gpio_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @MSP_GPIO_REG(i32 %10)
  %12 = load i64, i64* @DM355EVM_MSP_LED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @MSP_GPIO_MASK(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @msp_led_cache, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* @msp_led_cache, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* @DM355EVM_MSP_LED, align 8
  %35 = call i32 @dm355evm_msp_write(i32 %33, i64 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @MSP_GPIO_REG(i32) #1

declare dso_local i32 @MSP_GPIO_MASK(i32) #1

declare dso_local i32 @dm355evm_msp_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
