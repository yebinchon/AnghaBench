; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ucb1x00 = type { i32, i32 }

@UCB_IO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @ucb1x00_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucb1x00*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ucb1x00* %10, %struct.ucb1x00** %7, align 8
  %11 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %12 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %21 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %29 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %34 = call i32 @ucb1x00_enable(%struct.ucb1x00* %33)
  %35 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %36 = load i32, i32* @UCB_IO_DATA, align 4
  %37 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %38 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %35, i32 %36, i32 %39)
  %41 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %42 = call i32 @ucb1x00_disable(%struct.ucb1x00* %41)
  %43 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %44 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
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
