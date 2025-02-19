; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath9k_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ath_softc*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  store %struct.ath_softc* %10, %struct.ath_softc** %7, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = call i32 @ath9k_del_ps_key(%struct.ath_softc* %11, %struct.ieee80211_vif* %12, %struct.ieee80211_sta* %13)
  %15 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %17 = call i32 @ath_node_detach(%struct.ath_softc* %15, %struct.ieee80211_sta* %16)
  ret i32 0
}

declare dso_local i32 @ath9k_del_ps_key(%struct.ath_softc*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath_node_detach(%struct.ath_softc*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
