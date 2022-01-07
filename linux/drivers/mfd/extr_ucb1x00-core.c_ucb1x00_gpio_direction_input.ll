; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ucb1x00 = type { i32, i32 }

@UCB_IO_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ucb1x00_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1x00*, align 8
  %6 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.ucb1x00* %8, %struct.ucb1x00** %5, align 8
  %9 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %10 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %17 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %21 = call i32 @ucb1x00_enable(%struct.ucb1x00* %20)
  %22 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %23 = load i32, i32* @UCB_IO_DIR, align 4
  %24 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %25 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %22, i32 %23, i32 %26)
  %28 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %29 = call i32 @ucb1x00_disable(%struct.ucb1x00* %28)
  %30 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %31 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret i32 0
}

declare dso_local %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ucb1x00_enable(%struct.ucb1x00*) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
