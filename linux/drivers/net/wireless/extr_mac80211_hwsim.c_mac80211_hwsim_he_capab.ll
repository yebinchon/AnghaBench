; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_he_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_he_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64, i32, %struct.ieee80211_sband_iftype_data* }
%struct.ieee80211_sband_iftype_data = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@he_capa_2ghz = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@he_capa_5ghz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*)* @mac80211_hwsim_he_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_he_capab(%struct.ieee80211_supported_band* %0) #0 {
  %2 = alloca %struct.ieee80211_supported_band*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %2, align 8
  %4 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64, i64* @he_capa_2ghz, align 8
  %11 = call i32 @ARRAY_SIZE(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @he_capa_2ghz, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_sband_iftype_data*
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %14, i32 0, i32 2
  store %struct.ieee80211_sband_iftype_data* %13, %struct.ieee80211_sband_iftype_data** %15, align 8
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i64, i64* @he_capa_5ghz, align 8
  %24 = call i32 @ARRAY_SIZE(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i64, i64* @he_capa_5ghz, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_sband_iftype_data*
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 2
  store %struct.ieee80211_sband_iftype_data* %26, %struct.ieee80211_sband_iftype_data** %28, align 8
  br label %30

29:                                               ; preds = %16
  br label %35

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
