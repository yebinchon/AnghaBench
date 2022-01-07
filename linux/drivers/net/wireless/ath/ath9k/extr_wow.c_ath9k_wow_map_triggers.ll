; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_map_triggers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_map_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.cfg80211_wowlan = type { i64, i64, i64 }

@AH_WOW_LINK_CHANGE = common dso_local global i32 0, align 4
@AH_WOW_BEACON_MISS = common dso_local global i32 0, align 4
@AH_WOW_MAGIC_PATTERN_EN = common dso_local global i32 0, align 4
@AH_WOW_USER_PATTERN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.cfg80211_wowlan*)* @ath9k_wow_map_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_wow_map_triggers(%struct.ath_softc* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.cfg80211_wowlan*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %7 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @AH_WOW_LINK_CHANGE, align 4
  %12 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @AH_WOW_MAGIC_PATTERN_EN, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @AH_WOW_USER_PATTERN_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
