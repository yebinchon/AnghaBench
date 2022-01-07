; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_radar_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_radar_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ath_regulatory = type { i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ath_regulatory*)* @ath_reg_apply_radar_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_reg_apply_radar_flags(%struct.wiphy* %0, %struct.ath_regulatory* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ath_regulatory*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ath_regulatory* %1, %struct.ath_regulatory** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %9, align 8
  %11 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, i64 %11
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %14 = icmp ne %struct.ieee80211_supported_band* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %18, align 8
  %20 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, i64 %20
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  store %struct.ieee80211_supported_band* %22, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %59, %16
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 1
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i64 %34
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %6, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %40 = call i32 @ath_is_radar_freq(i32 %38, %struct.ath_regulatory* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %59

43:                                               ; preds = %29
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %52 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %43
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %23

62:                                               ; preds = %15, %23
  ret void
}

declare dso_local i32 @ath_is_radar_freq(i32, %struct.ath_regulatory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
