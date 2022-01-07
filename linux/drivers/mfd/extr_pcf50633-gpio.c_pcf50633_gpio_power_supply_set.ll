; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-gpio.c_pcf50633_gpio_power_supply_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-gpio.c_pcf50633_gpio_power_supply_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }

@pcf50633_regulator_registers = common dso_local global i32* null, align 8
@PCF50633_GPIO1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_gpio_power_supply_set(%struct.pcf50633* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pcf50633*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** @pcf50633_regulator_registers, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PCF50633_GPIO1, align 4
  %25 = sub nsw i32 %23, %24
  %26 = shl i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PCF50633_GPIO1, align 4
  %29 = sub nsw i32 %27, %28
  %30 = shl i32 1, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %31, i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
