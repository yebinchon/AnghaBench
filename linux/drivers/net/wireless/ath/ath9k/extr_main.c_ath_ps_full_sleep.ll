; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath_ps_full_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath_ps_full_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.timer_list = type { i32 }
%struct.ath_common = type { i32 }

@sleep_timer = common dso_local global i32 0, align 4
@ATH9K_PM_FULL_SLEEP = common dso_local global i32 0, align 4
@sc = common dso_local global %struct.ath_softc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_ps_full_sleep(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = ptrtoint %struct.ath_softc* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @sleep_timer, align 4
  %11 = call %struct.ath_softc* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ath_common* @ath9k_hw_common(i32 %14)
  store %struct.ath_common* %15, %struct.ath_common** %4, align 8
  %16 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %17 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %21 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %20)
  %22 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %23 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ath9k_hw_setrxabort(i32 %28, i32 1)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ath9k_hw_stopdmarecv(i32 %32, i32* %6)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATH9K_PM_FULL_SLEEP, align 4
  %38 = call i32 @ath9k_hw_setpower(i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.ath_softc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_hw_setrxabort(i32, i32) #1

declare dso_local i32 @ath9k_hw_stopdmarecv(i32, i32*) #1

declare dso_local i32 @ath9k_hw_setpower(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
