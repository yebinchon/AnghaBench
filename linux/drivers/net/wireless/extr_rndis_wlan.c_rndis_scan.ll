; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i64, i32, i32, %struct.cfg80211_scan_request* }

@SCAN_DELAY_JIFFIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cfg80211.scan\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RNDIS_BCM4320A = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @rndis_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.usbnet*, align 8
  %8 = alloca %struct.rndis_wlan_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %5, align 8
  %11 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %12 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.usbnet* @netdev_priv(%struct.net_device* %16)
  store %struct.usbnet* %17, %struct.usbnet** %7, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %19 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %18)
  store %struct.rndis_wlan_private* %19, %struct.rndis_wlan_private** %8, align 8
  %20 = load i32, i32* @SCAN_DELAY_JIFFIES, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netdev_dbg(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %26 = call i32 @rndis_check_bssid_list(%struct.usbnet* %25, i32* null, i32* null)
  %27 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %28 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %27, i32 0, i32 3
  %29 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %28, align 8
  %30 = icmp ne %struct.cfg80211_scan_request* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %33 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %32, i32 0, i32 3
  %34 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %33, align 8
  %35 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %36 = icmp ne %struct.cfg80211_scan_request* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %31, %2
  %41 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %42 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %43 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %42, i32 0, i32 3
  store %struct.cfg80211_scan_request* %41, %struct.cfg80211_scan_request** %43, align 8
  %44 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %45 = call i32 @rndis_start_bssid_list_scan(%struct.usbnet* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %50 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RNDIS_BCM4320A, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @HZ, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %58 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %61 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %60, i32 0, i32 1
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @queue_delayed_work(i32 %59, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %40
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @rndis_check_bssid_list(%struct.usbnet*, i32*, i32*) #1

declare dso_local i32 @rndis_start_bssid_list_scan(%struct.usbnet*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
