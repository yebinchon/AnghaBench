; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }
%struct.pch_gbe_adapter = type { %struct.pch_gbe_rx_ring*, %struct.pch_gbe_tx_ring* }
%struct.pch_gbe_rx_ring = type { i32 }
%struct.pch_gbe_tx_ring = type { i32 }

@PCH_GBE_MAX_RXD = common dso_local global i32 0, align 4
@PCH_GBE_MAX_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @pch_gbe_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca %struct.pch_gbe_tx_ring*, align 8
  %7 = alloca %struct.pch_gbe_rx_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.pch_gbe_adapter* %9, %struct.pch_gbe_adapter** %5, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 1
  %12 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %11, align 8
  store %struct.pch_gbe_tx_ring* %12, %struct.pch_gbe_tx_ring** %6, align 8
  %13 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %13, i32 0, i32 0
  %15 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %14, align 8
  store %struct.pch_gbe_rx_ring* %15, %struct.pch_gbe_rx_ring** %7, align 8
  %16 = load i32, i32* @PCH_GBE_MAX_RXD, align 4
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PCH_GBE_MAX_TXD, align 4
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %7, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
