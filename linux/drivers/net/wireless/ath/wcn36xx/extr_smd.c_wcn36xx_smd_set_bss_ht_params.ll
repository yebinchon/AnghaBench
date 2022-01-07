; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_bss_ht_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_bss_ht_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.wcn36xx_hal_config_bss_params = type { i32, i32, i64, i64, i8*, i8*, i64 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LSIG_TXOP_PROT = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wcn36xx_hal_config_bss_params*)* @wcn36xx_smd_set_bss_ht_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_smd_set_bss_ht_params(%struct.ieee80211_vif* %0, %struct.ieee80211_sta* %1, %struct.wcn36xx_hal_config_bss_params* %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.wcn36xx_hal_config_bss_params*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.wcn36xx_hal_config_bss_params* %2, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %9 = icmp ne %struct.ieee80211_sta* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %3
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %26 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %29 = call i8* @is_cap_supported(i64 %27, i32 %28)
  %30 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @IEEE80211_HT_CAP_LSIG_TXOP_PROT, align 4
  %34 = call i8* @is_cap_supported(i64 %32, i32 %33)
  %35 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %54 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %56 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %16, %10, %3
  ret void
}

declare dso_local i8* @is_cap_supported(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
