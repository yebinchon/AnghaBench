; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_wireless.c_gelic_wl_setup_netdev_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_wireless.c_gelic_wl_setup_netdev_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32*, i32*, i32*, i32 }
%struct.gelic_wl_info = type { i32 }

@GELIC_NET_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@gelic_wl_ethtool_ops = common dso_local global i32 0, align 4
@gelic_wl_netdevice_ops = common dso_local global i32 0, align 4
@gelic_wl_wext_handler_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gelic_wl_setup_netdev_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_wl_setup_netdev_ops(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gelic_wl_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @netdev_priv(%struct.net_device* %4)
  %6 = call %struct.gelic_wl_info* @port_wl(i32 %5)
  store %struct.gelic_wl_info* %6, %struct.gelic_wl_info** %3, align 8
  %7 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %3, align 8
  %8 = icmp ne %struct.gelic_wl_info* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @GELIC_NET_WATCHDOG_TIMEOUT, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 3
  store i32* @gelic_wl_ethtool_ops, i32** %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  store i32* @gelic_wl_netdevice_ops, i32** %18, align 8
  %19 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %3, align 8
  %20 = getelementptr inbounds %struct.gelic_wl_info, %struct.gelic_wl_info* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  store i32* @gelic_wl_wext_handler_def, i32** %24, align 8
  ret void
}

declare dso_local %struct.gelic_wl_info* @port_wl(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
