; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_sensor = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et8ek8_sensor*)* @et8ek8_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_power_off(%struct.et8ek8_sensor* %0) #0 {
  %2 = alloca %struct.et8ek8_sensor*, align 8
  store %struct.et8ek8_sensor* %0, %struct.et8ek8_sensor** %2, align 8
  %3 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %2, align 8
  %4 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gpiod_set_value(i32 %5, i32 0)
  %7 = call i32 @udelay(i32 1)
  %8 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %2, align 8
  %9 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_disable_unprepare(i32 %10)
  %12 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %2, align 8
  %13 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_disable(i32 %14)
  ret i32 %15
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
