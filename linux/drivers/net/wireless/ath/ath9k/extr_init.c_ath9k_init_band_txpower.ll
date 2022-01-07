; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_band_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_band_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32*, i32* }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.ath_common = type { %struct.ieee80211_supported_band* }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@MAX_COMBINED_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32)* @ath9k_init_band_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_band_txpower(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.cfg80211_chan_def, align 4
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %8, align 8
  %16 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %17 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i64 %20
  store %struct.ieee80211_supported_band* %21, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %55, %2
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i64 %33
  store %struct.ieee80211_channel* %34, %struct.ieee80211_channel** %6, align 8
  %35 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %46 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %9, %struct.ieee80211_channel* %44, i32 %45)
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %51 = call i32 @ath9k_cmn_get_channel(i32 %49, %struct.ath_hw* %50, %struct.cfg80211_chan_def* %9)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %53 = load i32, i32* @MAX_COMBINED_POWER, align 4
  %54 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %22

58:                                               ; preds = %22
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ath9k_cmn_get_channel(i32, %struct.ath_hw*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
