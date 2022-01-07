; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32 }
%struct.mwifiex_private = type { i64, i32 }

@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@MWIFIEX_TDLS_CREATE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @mwifiex_cfg80211_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_add_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %11)
  store %struct.mwifiex_private* %12, %struct.mwifiex_private** %10, align 8
  %13 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %14 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %42

23:                                               ; preds = %4
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @MWIFIEX_TDLS_CREATE_LINK, align 4
  %41 = call i32 @mwifiex_tdls_oper(%struct.mwifiex_private* %38, i32* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %34, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
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
