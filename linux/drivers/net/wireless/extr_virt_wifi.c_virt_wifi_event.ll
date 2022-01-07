; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32*)* }
%struct.virt_wifi_netdev_priv = type { %struct.net_device* }

@list_kill = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @virt_wifi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_wifi_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.virt_wifi_netdev_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load i32, i32* @list_kill, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call i32 @netif_is_virt_wifi_dev(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  switch i64 %21, label %43 [
    i64 128, label %22
  ]

22:                                               ; preds = %20
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.virt_wifi_netdev_priv* @rtnl_dereference(i32 %25)
  store %struct.virt_wifi_netdev_priv* %26, %struct.virt_wifi_netdev_priv** %9, align 8
  %27 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %9, align 8
  %28 = icmp ne %struct.virt_wifi_netdev_priv* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %9, align 8
  %33 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %10, align 8
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = call i32 %39(%struct.net_device* %40, i32* @list_kill)
  %42 = call i32 @unregister_netdevice_many(i32* @list_kill)
  br label %43

43:                                               ; preds = %20, %31
  %44 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %29, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @netif_is_virt_wifi_dev(%struct.net_device*) #1

declare dso_local %struct.virt_wifi_netdev_priv* @rtnl_dereference(i32) #1

declare dso_local i32 @unregister_netdevice_many(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
