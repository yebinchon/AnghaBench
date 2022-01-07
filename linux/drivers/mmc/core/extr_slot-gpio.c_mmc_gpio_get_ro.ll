; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_gpio* }
%struct.mmc_gpio = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_gpio_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_gpio*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mmc_gpio*, %struct.mmc_gpio** %7, align 8
  store %struct.mmc_gpio* %8, %struct.mmc_gpio** %4, align 8
  %9 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %10 = icmp ne %struct.mmc_gpio* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_get_value_cansleep(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
