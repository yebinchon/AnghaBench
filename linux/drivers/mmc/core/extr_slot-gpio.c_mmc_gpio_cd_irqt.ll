; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_cd_irqt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_cd_irqt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_gpio* }
%struct.mmc_gpio = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mmc_gpio_cd_irqt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_gpio_cd_irqt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.mmc_gpio*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mmc_host*
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mmc_gpio*, %struct.mmc_gpio** %11, align 8
  store %struct.mmc_gpio* %12, %struct.mmc_gpio** %6, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %16 = load %struct.mmc_gpio*, %struct.mmc_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i32 @mmc_detect_change(%struct.mmc_host* %15, i32 %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local i32 @mmc_detect_change(%struct.mmc_host*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
