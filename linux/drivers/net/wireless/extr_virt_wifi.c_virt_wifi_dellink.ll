; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }
%struct.virt_wifi_netdev_priv = type { i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.list_head*)* @virt_wifi_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virt_wifi_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.virt_wifi_netdev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.virt_wifi_netdev_priv* %7, %struct.virt_wifi_netdev_priv** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @virt_wifi_cancel_scan(i32 %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %5, align 8
  %21 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @virt_wifi_cancel_connect(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netif_carrier_off(%struct.net_device* %24)
  %26 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %5, align 8
  %27 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_rx_handler_unregister(i32 %28)
  %30 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %5, align 8
  %31 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_upper_dev_unlink(i32 %32, %struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.list_head*, %struct.list_head** %4, align 8
  %37 = call i32 @unregister_netdevice_queue(%struct.net_device* %35, %struct.list_head* %36)
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = call i32 @module_put(i32 %38)
  ret void
}

declare dso_local %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @virt_wifi_cancel_scan(i32) #1

declare dso_local i32 @virt_wifi_cancel_connect(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netdev_rx_handler_unregister(i32) #1

declare dso_local i32 @netdev_upper_dev_unlink(i32, %struct.net_device*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
