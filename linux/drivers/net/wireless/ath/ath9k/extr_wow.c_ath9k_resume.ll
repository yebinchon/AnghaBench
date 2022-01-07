; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@WOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Resume with WoW status: 0x%x\0A\00", align 1
@ATH_OP_WOW_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_resume(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 3
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %5, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %31 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = call i32 @ath9k_hw_wow_wakeup(%struct.ath_hw* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %40 = load i32, i32* @WOW, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ath_dbg(%struct.ath_common* %39, i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %44 = call i32 @ath_restart_work(%struct.ath_softc* %43)
  %45 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %46 = call i32 @ath9k_start_btcoex(%struct.ath_softc* %45)
  %47 = load i32, i32* @ATH_OP_WOW_ENABLED, align 4
  %48 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %49 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = call i32 @ath9k_ps_restore(%struct.ath_softc* %51)
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret i32 0
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_hw_wow_wakeup(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath_restart_work(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_start_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
