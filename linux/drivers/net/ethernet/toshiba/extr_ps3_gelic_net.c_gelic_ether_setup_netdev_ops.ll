; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_ether_setup_netdev_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_ether_setup_netdev_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32*, i32 }
%struct.napi_struct = type { i32 }

@GELIC_NET_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@gelic_net_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@gelic_ether_ethtool_ops = common dso_local global i32 0, align 4
@gelic_netdevice_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.napi_struct*)* @gelic_ether_setup_netdev_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_ether_setup_netdev_ops(%struct.net_device* %0, %struct.napi_struct* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.napi_struct*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %4, align 8
  %5 = load i32, i32* @GELIC_NET_WATCHDOG_TIMEOUT, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %10 = load i32, i32* @gelic_net_poll, align 4
  %11 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %12 = call i32 @netif_napi_add(%struct.net_device* %8, %struct.napi_struct* %9, i32 %10, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store i32* @gelic_ether_ethtool_ops, i32** %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store i32* @gelic_netdevice_ops, i32** %16, align 8
  ret void
}

declare dso_local i32 @netif_napi_add(%struct.net_device*, %struct.napi_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
