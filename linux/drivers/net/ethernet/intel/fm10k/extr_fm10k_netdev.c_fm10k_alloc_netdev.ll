; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_alloc_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_alloc_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fm10k_info = type { i64 }
%struct.fm10k_intfc = type { i64 }

@MAX_QUEUES = common dso_local global i32 0, align 4
@fm10k_netdev_ops = common dso_local global i32 0, align 4
@DEFAULT_DEBUG_LEVEL_SHIFT = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@fm10k_mac_pf = common dso_local global i64 0, align 8
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_HW_L2FW_DOFFLOAD = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@FM10K_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @fm10k_alloc_netdev(%struct.fm10k_info* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fm10k_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.fm10k_info* %0, %struct.fm10k_info** %3, align 8
  %7 = load i32, i32* @MAX_QUEUES, align 4
  %8 = call %struct.net_device* @alloc_etherdev_mq(i32 8, i32 %7)
  store %struct.net_device* %8, %struct.net_device** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %109

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 7
  store i32* @fm10k_netdev_ops, i32** %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32 @fm10k_set_ethtool_ops(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %17)
  store %struct.fm10k_intfc* %18, %struct.fm10k_intfc** %5, align 8
  %19 = load i32, i32* @DEFAULT_DEBUG_LEVEL_SHIFT, align 4
  %20 = call i64 @BIT(i32 %19)
  %21 = sub nsw i64 %20, 1
  %22 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %23 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %25 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NETIF_F_SG, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NETIF_F_TSO, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NETIF_F_TSO6, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NETIF_F_RXHASH, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.fm10k_info*, %struct.fm10k_info** %3, align 8
  %44 = getelementptr inbounds %struct.fm10k_info, %struct.fm10k_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @fm10k_mac_pf, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %12
  %49 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %50 = load i32, i32* @NETIF_F_TSO, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NETIF_F_TSO6, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @NETIF_F_SG, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %48, %12
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @NETIF_F_HW_L2FW_DOFFLOAD, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %84 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @ETH_MIN_MTU, align 4
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @FM10K_MAX_JUMBO_FRAME_SIZE, align 4
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %108, %struct.net_device** %2, align 8
  br label %109

109:                                              ; preds = %69, %11
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %110
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @fm10k_set_ethtool_ops(%struct.net_device*) #1

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
