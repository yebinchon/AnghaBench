; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_eth_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_eth_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i64, i32, i64, i32, i32 }

@LBS_CONNECTED = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lbs_eth_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_eth_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  store %struct.lbs_private* %6, %struct.lbs_private** %3, align 8
  %7 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LBS_CONNECTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %15 = call i32 @lbs_disconnect(%struct.lbs_private* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_stop_queue(%struct.net_device* %20)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 4
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = call i32 @lbs_update_mcast(%struct.lbs_private* %25)
  %27 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 3
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %36 = call i32 @lbs_scan_done(%struct.lbs_private* %35)
  br label %37

37:                                               ; preds = %34, %16
  %38 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netif_carrier_off(i32 %40)
  %42 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %43 = call i32 @lbs_iface_active(%struct.lbs_private* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = call i32 @lbs_stop_iface(%struct.lbs_private* %46)
  br label %48

48:                                               ; preds = %45, %37
  ret i32 0
}

declare dso_local i32 @lbs_disconnect(%struct.lbs_private*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lbs_update_mcast(%struct.lbs_private*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @lbs_scan_done(%struct.lbs_private*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @lbs_iface_active(%struct.lbs_private*) #1

declare dso_local i32 @lbs_stop_iface(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
