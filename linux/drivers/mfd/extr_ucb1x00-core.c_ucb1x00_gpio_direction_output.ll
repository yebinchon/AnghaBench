; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ucb1x00 = type { i32, i32, i32 }

@UCB_IO_DATA = common dso_local global i32 0, align 4
@UCB_IO_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @ucb1x00_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucb1x00*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.ucb1x00* %12, %struct.ucb1x00** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %16 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %15, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %20 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %27 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %34 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %39 = call i32 @ucb1x00_enable(%struct.ucb1x00* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %42 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %47 = load i32, i32* @UCB_IO_DATA, align 4
  %48 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %49 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %54 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %62 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %66 = load i32, i32* @UCB_IO_DIR, align 4
  %67 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %68 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %65, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %59, %52
  %72 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %73 = call i32 @ucb1x00_disable(%struct.ucb1x00* %72)
  %74 = load %struct.ucb1x00*, %struct.ucb1x00** %7, align 8
  %75 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %74, i32 0, i32 2
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
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
