; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.rndis_wlan_private = type { i32, i32, %struct.usbnet* }
%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cfg80211.disconnect(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32)* @rndis_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_disconnect(%struct.wiphy* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rndis_wlan_private*, align 8
  %8 = alloca %struct.usbnet*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %9)
  store %struct.rndis_wlan_private* %10, %struct.rndis_wlan_private** %7, align 8
  %11 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %12 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %11, i32 0, i32 2
  %13 = load %struct.usbnet*, %struct.usbnet** %12, align 8
  store %struct.usbnet* %13, %struct.usbnet** %8, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @netdev_dbg(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %20 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %22 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @eth_zero_addr(i32 %23)
  %25 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %26 = call i32 @deauthenticate(%struct.usbnet* %25)
  ret i32 %26
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @deauthenticate(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
