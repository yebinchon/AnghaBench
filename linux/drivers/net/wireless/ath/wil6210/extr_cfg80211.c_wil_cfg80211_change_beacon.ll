; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32 }
%struct.cfg80211_beacon_data = type { i32, i64 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"change_beacon, mid=%d\0A\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"privacy changed %d=>%d. Restarting AP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_beacon_data*)* @wil_cfg80211_change_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_change_beacon(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_beacon_data* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_beacon_data*, align 8
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.wil6210_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_beacon_data* %2, %struct.cfg80211_beacon_data** %6, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %13 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %12)
  store %struct.wil6210_priv* %13, %struct.wil6210_priv** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %17)
  store %struct.wil6210_vif* %18, %struct.wil6210_vif** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %20 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %21 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %25 = call i32 @wil_print_bcon_data(%struct.cfg80211_beacon_data* %24)
  %26 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %3
  %31 = load i32, i32* @WLAN_EID_RSN, align 4
  %32 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %36 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @cfg80211_find_ie(i32 %31, i64 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %30, %3
  %42 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %43 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32 %44, i32 %47, i32 %50)
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %56 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %58 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %41
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %65 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %72 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %75 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %79 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %82 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %85 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %88 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %89 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %92 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @_wil_cfg80211_start_ap(%struct.wiphy* %69, %struct.net_device* %70, i32 %73, i32 %76, i32 %77, i32 %80, i32 %83, i32 %86, %struct.cfg80211_beacon_data* %87, i32 %90, i32 %93)
  store i32 %94, i32* %10, align 4
  br label %99

95:                                               ; preds = %41
  %96 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %97 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %98 = call i32 @_wil_cfg80211_set_ies(%struct.wil6210_vif* %96, %struct.cfg80211_beacon_data* %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %62
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i32 @wil_print_bcon_data(%struct.cfg80211_beacon_data*) #1

declare dso_local i64 @cfg80211_find_ie(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @_wil_cfg80211_start_ap(%struct.wiphy*, %struct.net_device*, i32, i32, i32, i32, i32, i32, %struct.cfg80211_beacon_data*, i32, i32) #1

declare dso_local i32 @_wil_cfg80211_set_ies(%struct.wil6210_vif*, %struct.cfg80211_beacon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
