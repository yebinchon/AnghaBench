; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_sta_ht_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_sta_ht_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.wcn36xx_hal_config_sta_params = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i64 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LSIG_TXOP_PROT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DELAY_BA = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta*, %struct.wcn36xx_hal_config_sta_params*)* @wcn36xx_smd_set_sta_ht_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_smd_set_sta_ht_params(%struct.ieee80211_sta* %0, %struct.wcn36xx_hal_config_sta_params* %1) #0 {
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.wcn36xx_hal_config_sta_params*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  store %struct.wcn36xx_hal_config_sta_params* %1, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %6 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %20, i32 0, i32 10
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %24 = call i8* @is_cap_supported(i64 %22, i32 %23)
  %25 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %26 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @IEEE80211_HT_CAP_LSIG_TXOP_PROT, align 4
  %29 = call i8* @is_cap_supported(i64 %27, i32 %28)
  %30 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %46 = call i8* @is_cap_supported(i64 %44, i32 %45)
  %47 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %48 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %51 = call i8* @is_cap_supported(i64 %49, i32 %50)
  %52 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %53 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %56 = call i8* @is_cap_supported(i64 %54, i32 %55)
  %57 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %61 = call i8* @is_cap_supported(i64 %59, i32 %60)
  %62 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %63 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* @IEEE80211_HT_CAP_DELAY_BA, align 4
  %66 = call i8* @is_cap_supported(i64 %64, i32 %65)
  %67 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %68 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %71 = call i8* @is_cap_supported(i64 %69, i32 %70)
  %72 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %4, align 8
  %73 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %11, %2
  ret void
}

declare dso_local i8* @is_cap_supported(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
