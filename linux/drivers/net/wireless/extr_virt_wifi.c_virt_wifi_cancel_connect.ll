; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_cancel_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_cancel_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.virt_wifi_netdev_priv = type { i32, i32, i32 }

@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @virt_wifi_cancel_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virt_wifi_cancel_connect(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.virt_wifi_netdev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.virt_wifi_netdev_priv* %5, %struct.virt_wifi_netdev_priv** %3, align 8
  %6 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %3, align 8
  %7 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %6, i32 0, i32 2
  %8 = call i64 @cancel_delayed_work_sync(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @cfg80211_connect_result(i32 %13, i32 %16, i32* null, i32 0, i32* null, i32 0, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cfg80211_connect_result(i32, i32, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
