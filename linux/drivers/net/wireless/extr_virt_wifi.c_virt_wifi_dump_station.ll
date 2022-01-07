; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_dump_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_dump_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32 }
%struct.virt_wifi_netdev_priv = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dump_station\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@fake_router_bssid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32*, %struct.station_info*)* @virt_wifi_dump_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_wifi_dump_station(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.station_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.station_info*, align 8
  %12 = alloca %struct.virt_wifi_netdev_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.station_info* %4, %struct.station_info** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = call %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.virt_wifi_netdev_priv* %14, %struct.virt_wifi_netdev_priv** %12, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %16 = call i32 @wiphy_debug(%struct.wiphy* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %21 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @fake_router_bssid, align 4
  %30 = call i32 @ether_addr_copy(i32* %28, i32 %29)
  %31 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = load i32, i32* @fake_router_bssid, align 4
  %34 = load %struct.station_info*, %struct.station_info** %11, align 8
  %35 = call i32 @virt_wifi_get_station(%struct.wiphy* %31, %struct.net_device* %32, i32 %33, %struct.station_info* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %27, %24
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wiphy_debug(%struct.wiphy*, i8*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @virt_wifi_get_station(%struct.wiphy*, %struct.net_device*, i32, %struct.station_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
