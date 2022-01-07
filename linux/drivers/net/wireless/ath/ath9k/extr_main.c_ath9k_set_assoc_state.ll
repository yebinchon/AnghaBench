; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_assoc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_assoc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.ieee80211_vif = type { i32, i64 }
%struct.ath_common = type { i32, i8*, i32, i32 }
%struct.ath_vif = type { i32, i32 }

@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@ATH_RSSI_DUMMY_MARKER = common dso_local global i8* null, align 8
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Primary Station interface: %pM, BSSID: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_vif*, i32)* @ath9k_set_assoc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_assoc_state(%struct.ath_softc* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath_vif*, align 8
  %9 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_6__* %12)
  store %struct.ath_common* %13, %struct.ath_common** %7, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ath_vif*
  store %struct.ath_vif* %17, %struct.ath_vif** %8, align 8
  %18 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %19 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %20 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %19, i32 0, i32 3
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %23 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ath_vif*, %struct.ath_vif** %8, align 8
  %26 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_addr_copy(i32 %24, i32 %27)
  %29 = load %struct.ath_vif*, %struct.ath_vif** %8, align 8
  %30 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %33 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @ath9k_hw_write_associd(%struct.TYPE_6__* %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %3
  %41 = load i8*, i8** @ATH_RSSI_DUMMY_MARKER, align 8
  %42 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %43 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @ATH_RSSI_DUMMY_MARKER, align 8
  %45 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  %50 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load i32, i32* @PS_BEACON_SYNC, align 4
  %55 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %40, %3
  %66 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i64 @ath9k_hw_mci_is_enabled(%struct.TYPE_6__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %73 = call i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %76 = load i32, i32* @CONFIG, align 4
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %81 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ath_dbg(%struct.ath_common* %75, i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_6__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath9k_hw_write_associd(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.TYPE_6__*) #1

declare dso_local i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
