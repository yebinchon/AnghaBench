; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_netdev_features_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_netdev_features_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdev_features_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_features_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @NETIF_F_SG, align 4
  %4 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @NETIF_F_TSO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @NETIF_F_TSO6, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NETIF_F_LRO, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
