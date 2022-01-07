; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_dump_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_dump_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dump_station: %pM CID %d MID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32*, %struct.station_info*)* @wil_cfg80211_dump_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_dump_station(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.station_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.station_info*, align 8
  %12 = alloca %struct.wil6210_vif*, align 8
  %13 = alloca %struct.wil6210_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.station_info* %4, %struct.station_info** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %16)
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %12, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %19 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %18)
  store %struct.wil6210_priv* %19, %struct.wil6210_priv** %13, align 8
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %22 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @wil_find_cid_by_idx(%struct.wil6210_priv* %20, i32 %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @wil_cid_valid(%struct.wil6210_priv* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %5
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  %36 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ether_addr_copy(i32* %34, i32 %42)
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %48 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %45, i32 %46, i32 %49)
  %51 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.station_info*, %struct.station_info** %11, align 8
  %54 = call i32 @wil_cid_fill_sinfo(%struct.wil6210_vif* %51, i32 %52, %struct.station_info* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %33, %30
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_find_cid_by_idx(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_cid_valid(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32*, i32, i32) #1

declare dso_local i32 @wil_cid_fill_sinfo(%struct.wil6210_vif*, i32, %struct.station_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
