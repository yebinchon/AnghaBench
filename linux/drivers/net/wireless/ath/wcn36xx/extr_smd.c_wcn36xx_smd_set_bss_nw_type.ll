; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_bss_nw_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_bss_nw_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wcn36xx_hal_config_bss_params = type { i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WCN36XX_HAL_11A_NW_TYPE = common dso_local global i32 0, align 4
@WCN36XX_HAL_11N_NW_TYPE = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WCN36XX_HAL_11G_NW_TYPE = common dso_local global i32 0, align 4
@WCN36XX_HAL_11B_NW_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx*, %struct.ieee80211_sta*, %struct.wcn36xx_hal_config_bss_params*)* @wcn36xx_smd_set_bss_nw_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_smd_set_bss_nw_type(%struct.wcn36xx* %0, %struct.ieee80211_sta* %1, %struct.wcn36xx_hal_config_bss_params* %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.wcn36xx_hal_config_bss_params*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.wcn36xx_hal_config_bss_params* %2, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %7 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %9 = call i64 @WCN36XX_BAND(%struct.wcn36xx* %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @WCN36XX_HAL_11A_NW_TYPE, align 4
  %13 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %14 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %17 = icmp ne %struct.ieee80211_sta* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @WCN36XX_HAL_11N_NW_TYPE, align 4
  %26 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %49

28:                                               ; preds = %18, %15
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %30 = icmp ne %struct.ieee80211_sta* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 127
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @WCN36XX_HAL_11G_NW_TYPE, align 4
  %42 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %31, %28
  %45 = load i32, i32* @WCN36XX_HAL_11B_NW_TYPE, align 4
  %46 = load %struct.wcn36xx_hal_config_bss_params*, %struct.wcn36xx_hal_config_bss_params** %6, align 8
  %47 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_params, %struct.wcn36xx_hal_config_bss_params* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49, %11
  ret void
}

declare dso_local i64 @WCN36XX_BAND(%struct.wcn36xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
