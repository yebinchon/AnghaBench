; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_get_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_get_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32 }
%struct.rndis_wlan_private = type { i32, %struct.usbnet* }
%struct.usbnet = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_info*)* @rndis_get_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_get_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_info*, align 8
  %10 = alloca %struct.rndis_wlan_private*, align 8
  %11 = alloca %struct.usbnet*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_info* %3, %struct.station_info** %9, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %13 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %12)
  store %struct.rndis_wlan_private* %13, %struct.rndis_wlan_private** %10, align 8
  %14 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %10, align 8
  %15 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %14, i32 0, i32 1
  %16 = load %struct.usbnet*, %struct.usbnet** %15, align 8
  store %struct.usbnet* %16, %struct.usbnet** %11, align 8
  %17 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %10, align 8
  %18 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @ether_addr_equal(i32 %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.usbnet*, %struct.usbnet** %11, align 8
  %28 = load %struct.station_info*, %struct.station_info** %9, align 8
  %29 = call i32 @rndis_fill_station_info(%struct.usbnet* %27, %struct.station_info* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @rndis_fill_station_info(%struct.usbnet*, %struct.station_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
