; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.be_adapter = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@BE_IF_FLAGS_RSS = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@BE_MAX_GSO_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@be_netdev_ops = common dso_local global i32 0, align 4
@be_ethtool_ops = common dso_local global i32 0, align 4
@BE_MIN_MTU = common dso_local global i32 0, align 4
@BE_MAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @be_netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_netdev_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.be_adapter* %5, %struct.be_adapter** %3, align 8
  %6 = load i32, i32* @NETIF_F_SG, align 4
  %7 = load i32, i32* @NETIF_F_TSO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @NETIF_F_TSO6, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = call i32 @be_if_cap_flags(%struct.be_adapter* %25)
  %27 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @NETIF_F_RXHASH, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @NETIF_F_SG, align 4
  %49 = load i32, i32* @NETIF_F_TSO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NETIF_F_TSO6, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @IFF_MULTICAST, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load i64, i64* @BE_MAX_GSO_SIZE, align 8
  %73 = load i64, i64* @ETH_HLEN, align 8
  %74 = sub nsw i64 %72, %73
  %75 = call i32 @netif_set_gso_max_size(%struct.net_device* %71, i64 %74)
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 6
  store i32* @be_netdev_ops, i32** %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 5
  store i32* @be_ethtool_ops, i32** %79, align 8
  %80 = load i32, i32* @BE_MIN_MTU, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @BE_MAX_MTU, align 4
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be_if_cap_flags(%struct.be_adapter*) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
