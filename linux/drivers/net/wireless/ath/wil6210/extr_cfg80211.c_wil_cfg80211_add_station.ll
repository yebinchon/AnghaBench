; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32, i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"add station %pM aid %d mid %d mask 0x%x set 0x%x\0A\00", align 1
@disable_ap_sme = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"not supported with AP SME enabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WIL_MAX_DMG_AID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"invalid aid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @wil_cfg80211_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_add_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca %struct.wil6210_vif*, align 8
  %11 = alloca %struct.wil6210_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %12)
  store %struct.wil6210_vif* %13, %struct.wil6210_vif** %10, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %14)
  store %struct.wil6210_priv* %15, %struct.wil6210_priv** %11, align 8
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %19 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %22 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %25 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %28 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %17, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* @disable_ap_sme, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %4
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %35 = call i32 @wil_err(%struct.wil6210_priv* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %56

38:                                               ; preds = %4
  %39 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %40 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WIL_MAX_DMG_AID, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %46 = call i32 @wil_err(%struct.wil6210_priv* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %56

49:                                               ; preds = %38
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %53 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wmi_new_sta(%struct.wil6210_vif* %50, i32* %51, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %44, %33
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wmi_new_sta(%struct.wil6210_vif*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
