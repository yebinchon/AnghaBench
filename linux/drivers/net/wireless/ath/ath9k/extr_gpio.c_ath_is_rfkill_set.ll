; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_gpio.c_ath_is_rfkill_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_gpio.c_ath_is_rfkill_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_is_rfkill_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_is_rfkill_set(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 0
  %7 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  store %struct.ath_hw* %7, %struct.ath_hw** %3, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %8)
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ath9k_hw_gpio_get(%struct.ath_hw* %10, i32 %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %21 = call i32 @ath9k_ps_restore(%struct.ath_softc* %20)
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_hw_gpio_get(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
