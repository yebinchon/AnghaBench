; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ucb1x00 = type { i32 }

@UCB_IO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ucb1x00_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1x00*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.ucb1x00* %8, %struct.ucb1x00** %5, align 8
  %9 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %10 = call i32 @ucb1x00_enable(%struct.ucb1x00* %9)
  %11 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %12 = load i32, i32* @UCB_IO_DATA, align 4
  %13 = call i32 @ucb1x00_reg_read(%struct.ucb1x00* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %15 = call i32 @ucb1x00_disable(%struct.ucb1x00* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ucb1x00_enable(%struct.ucb1x00*) #1

declare dso_local i32 @ucb1x00_reg_read(%struct.ucb1x00*, i32) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
