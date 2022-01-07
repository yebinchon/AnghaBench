; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_change_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_change_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32 }
%struct.mwifiex_private = type { i64, %struct.station_parameters*, i32 }

@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@MWIFIEX_TDLS_CONFIG_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @mwifiex_cfg80211_change_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_change_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %12)
  store %struct.mwifiex_private* %13, %struct.mwifiex_private** %11, align 8
  %14 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %15 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %49

24:                                               ; preds = %4
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %11, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %11, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %24
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %49

38:                                               ; preds = %30
  %39 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %11, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 1
  store %struct.station_parameters* %39, %struct.station_parameters** %41, align 8
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @MWIFIEX_TDLS_CONFIG_LINK, align 4
  %45 = call i32 @mwifiex_tdls_oper(%struct.mwifiex_private* %42, i32* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %11, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 1
  store %struct.station_parameters* null, %struct.station_parameters** %47, align 8
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %38, %35, %21
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mwifiex_tdls_oper(%struct.mwifiex_private*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
