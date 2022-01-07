; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_init_wow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_init_wow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_2__*, %struct.ath_softc* }
%struct.TYPE_2__ = type { i32* }
%struct.ath_softc = type { i32, i32, i64, %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@ATH9K_PCI_WOW = common dso_local global i32 0, align 4
@ath9k_wowlan_support = common dso_local global i32 0, align 4
@ath9k_wowlan_support_legacy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_init_wow(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 1
  %7 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  store %struct.ath_softc* %7, %struct.ath_softc** %3, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 3
  %10 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  store %struct.ath_hw* %10, %struct.ath_hw** %4, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATH9K_PCI_WOW, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17, %1
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = call i64 @AR_SREV_9565_11_OR_LATER(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %22
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* @ath9k_wowlan_support, i32** %34, align 8
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* @ath9k_wowlan_support_legacy, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_init_wakeup(i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %17
  ret void
}

declare dso_local i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
