; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_del_parameters = type { i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"del_station: %pM, reason=%d mid=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.station_del_parameters*)* @wil_cfg80211_del_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_del_station(%struct.wiphy* %0, %struct.net_device* %1, %struct.station_del_parameters* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.station_del_parameters*, align 8
  %7 = alloca %struct.wil6210_vif*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.station_del_parameters* %2, %struct.station_del_parameters** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %9)
  store %struct.wil6210_vif* %10, %struct.wil6210_vif** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %11)
  store %struct.wil6210_priv* %12, %struct.wil6210_priv** %8, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %14 = load %struct.station_del_parameters*, %struct.station_del_parameters** %6, align 8
  %15 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.station_del_parameters*, %struct.station_del_parameters** %6, align 8
  %18 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %21 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %28 = load %struct.station_del_parameters*, %struct.station_del_parameters** %6, align 8
  %29 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.station_del_parameters*, %struct.station_del_parameters** %6, align 8
  %32 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wil6210_disconnect(%struct.wil6210_vif* %27, i32 %30, i32 %33)
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %36 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret i32 0
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil6210_disconnect(%struct.wil6210_vif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
