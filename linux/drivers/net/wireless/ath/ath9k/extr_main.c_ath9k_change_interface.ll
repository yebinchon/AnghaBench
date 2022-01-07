; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_change_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_change_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32 }
%struct.ieee80211_vif = type { i32, i32, i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i32 }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Change Interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32)* @ath9k_change_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_change_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_softc*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath_softc*, %struct.ath_softc** %14, align 8
  store %struct.ath_softc* %15, %struct.ath_softc** %10, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ath_common* @ath9k_hw_common(i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %11, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.ath_vif*
  store %struct.ath_vif* %24, %struct.ath_vif** %12, align 8
  %25 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %29 = call i64 @IS_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %81

37:                                               ; preds = %4
  %38 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %39 = load i32, i32* @CONFIG, align 4
  %40 = call i32 @ath_dbg(%struct.ath_common* %38, i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ath9k_uses_beacons(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %49 = call i32 @ath9k_beacon_remove_slot(%struct.ath_softc* %47, %struct.ieee80211_vif* %48)
  br label %50

50:                                               ; preds = %46, %37
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ath9k_uses_beacons(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %65 = call i32 @ath9k_beacon_assign_slot(%struct.ath_softc* %63, %struct.ieee80211_vif* %64)
  br label %66

66:                                               ; preds = %62, %50
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %69 = call i32 @ath9k_assign_hw_queues(%struct.ieee80211_hw* %67, %struct.ieee80211_vif* %68)
  %70 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %71 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %72 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ath9k_calculate_summary_state(%struct.ath_softc* %70, i32 %73)
  %75 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %77 = call i32 @ath9k_set_txpower(%struct.ath_softc* %75, %struct.ieee80211_vif* %76)
  %78 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %66, %31
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i64 @ath9k_uses_beacons(i32) #1

declare dso_local i32 @ath9k_beacon_remove_slot(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_beacon_assign_slot(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_assign_hw_queues(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_set_txpower(%struct.ath_softc*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
