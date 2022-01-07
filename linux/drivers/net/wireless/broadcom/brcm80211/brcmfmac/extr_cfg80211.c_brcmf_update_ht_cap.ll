; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@WLC_BW_40MHZ_BIT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_16 = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, i32*, i32)* @brcmf_update_ht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_update_ht_cap(%struct.ieee80211_supported_band* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WLC_BW_40MHZ_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %19, %3
  %33 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_16, align 4
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @memset(i32 %57, i32 255, i32 %58)
  %60 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
