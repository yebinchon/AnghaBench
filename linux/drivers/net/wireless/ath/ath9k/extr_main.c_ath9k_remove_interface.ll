; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32, i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i32, i32, i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Detach Interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(i32 %13)
  store %struct.ath_common* %14, %struct.ath_common** %6, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ath_vif*
  store %struct.ath_vif* %19, %struct.ath_vif** %7, align 8
  %20 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %21 = load i32, i32* @CONFIG, align 4
  %22 = call i32 @ath_dbg(%struct.ath_common* %20, i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %28 = call i32 @ath9k_p2p_remove_vif(%struct.ath_softc* %26, %struct.ieee80211_vif* %27)
  %29 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = call i32 (...) @ath9k_is_chanctx_enabled()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %2
  %40 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %41 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %40, i32 0, i32 2
  %42 = call i32 @list_del(i32* %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ath9k_uses_beacons(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %52 = call i32 @ath9k_beacon_remove_slot(%struct.ath_softc* %50, %struct.ieee80211_vif* %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %55 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %56 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %55, i32 0, i32 1
  %57 = call i32 @ath_tx_node_cleanup(%struct.ath_softc* %54, i32* %56)
  %58 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %59 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %60 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ath9k_calculate_summary_state(%struct.ath_softc* %58, i32 %61)
  %63 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %64 = call i32 @ath9k_set_txpower(%struct.ath_softc* %63, i32* null)
  %65 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_p2p_remove_vif(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @ath9k_uses_beacons(i32) #1

declare dso_local i32 @ath9k_beacon_remove_slot(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath_tx_node_cleanup(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_set_txpower(%struct.ath_softc*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
