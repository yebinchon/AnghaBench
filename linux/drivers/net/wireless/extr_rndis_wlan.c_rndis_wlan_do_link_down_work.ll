; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_do_link_down_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_do_link_down_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @rndis_wlan_do_link_down_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_wlan_do_link_down_work(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.rndis_wlan_private*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %4)
  store %struct.rndis_wlan_private* %5, %struct.rndis_wlan_private** %3, align 8
  %6 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %7 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %12 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %14 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @eth_zero_addr(i32 %15)
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = call i32 @deauthenticate(%struct.usbnet* %17)
  %19 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @cfg80211_disconnected(i32 %21, i32 0, i32* null, i32 0, i32 1, i32 %22)
  br label %24

24:                                               ; preds = %10, %1
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_carrier_off(i32 %27)
  ret void
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @deauthenticate(%struct.usbnet*) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
