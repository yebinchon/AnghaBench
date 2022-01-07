; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_change_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_change_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32 }
%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i64, i32 }

@AP_NETWORK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CFG80211_STA_AP_MLME_CLIENT = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@WMI_AP_MLME_AUTHORIZE = common dso_local global i32 0, align 4
@WMI_AP_MLME_UNAUTHORIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @ath6kl_change_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_change_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca %struct.ath6kl*, align 8
  %11 = alloca %struct.ath6kl_vif*, align 8
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.ath6kl* @ath6kl_priv(%struct.net_device* %13)
  store %struct.ath6kl* %14, %struct.ath6kl** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %15)
  store %struct.ath6kl_vif* %16, %struct.ath6kl_vif** %11, align 8
  %17 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %18 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AP_NETWORK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %4
  %26 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %27 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %28 = load i32, i32* @CFG80211_STA_AP_MLME_CLIENT, align 4
  %29 = call i32 @cfg80211_check_station_change(%struct.wiphy* %26, %struct.station_parameters* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %25
  %35 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %36 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %47 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WMI_AP_MLME_AUTHORIZE, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @ath6kl_wmi_ap_set_mlme(i32 %45, i32 %48, i32 %49, i32* %50, i32 0)
  store i32 %51, i32* %5, align 4
  br label %62

52:                                               ; preds = %34
  %53 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %54 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %57 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WMI_AP_MLME_UNAUTHORIZE, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @ath6kl_wmi_ap_set_mlme(i32 %55, i32 %58, i32 %59, i32* %60, i32 0)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %42, %32, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.ath6kl* @ath6kl_priv(%struct.net_device*) #1

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cfg80211_check_station_change(%struct.wiphy*, %struct.station_parameters*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath6kl_wmi_ap_set_mlme(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
