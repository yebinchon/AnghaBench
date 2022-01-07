; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_sta_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*)* @ath9k_sta_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_sta_notify(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_node*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %9, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ath_node*
  store %struct.ath_node* %17, %struct.ath_node** %10, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %42 [
    i32 128, label %19
    i32 129, label %31
  ]

19:                                               ; preds = %4
  %20 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %21 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %24 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %25 = call i32 @ath_tx_aggr_sleep(%struct.ieee80211_sta* %22, %struct.ath_softc* %23, %struct.ath_node* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %30 = call i32 @ath9k_sta_set_tx_filter(i32 %28, %struct.ath_node* %29, i32 1)
  br label %42

31:                                               ; preds = %4
  %32 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %36 = call i32 @ath9k_sta_set_tx_filter(i32 %34, %struct.ath_node* %35, i32 0)
  %37 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %38 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %40 = load %struct.ath_node*, %struct.ath_node** %10, align 8
  %41 = call i32 @ath_tx_aggr_wakeup(%struct.ath_softc* %39, %struct.ath_node* %40)
  br label %42

42:                                               ; preds = %4, %31, %19
  ret void
}

declare dso_local i32 @ath_tx_aggr_sleep(%struct.ieee80211_sta*, %struct.ath_softc*, %struct.ath_node*) #1

declare dso_local i32 @ath9k_sta_set_tx_filter(i32, %struct.ath_node*, i32) #1

declare dso_local i32 @ath_tx_aggr_wakeup(%struct.ath_softc*, %struct.ath_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
