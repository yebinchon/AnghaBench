; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32 }
%struct.virt_wifi_netdev_priv = type { i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"connect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_connect_params*)* @virt_wifi_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_wifi_connect(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.virt_wifi_netdev_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.virt_wifi_netdev_priv* %11, %struct.virt_wifi_netdev_priv** %8, align 8
  %12 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %8, align 8
  %13 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %8, align 8
  %26 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %25, i32 0, i32 1
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %27, 2
  %29 = call i32 @schedule_delayed_work(i32* %26, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %24
  %36 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %37 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %8, align 8
  %42 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %45 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ether_addr_copy(i32 %43, i32 %46)
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %8, align 8
  %50 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @eth_zero_addr(i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %55 = call i32 @wiphy_debug(%struct.wiphy* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %32, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wiphy_debug(%struct.wiphy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
