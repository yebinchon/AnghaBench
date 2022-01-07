; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_del_ipaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_del_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32 }
%struct.mtk_mac = type { i32, i32, i64*, %struct.mtk_eth* }
%struct.mtk_eth = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTK_MAX_LRO_IP_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @mtk_hwlro_del_ipaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hwlro_del_ipaddr(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.mtk_mac*, align 8
  %8 = alloca %struct.mtk_eth*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %12, %struct.ethtool_rx_flow_spec** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mtk_mac* @netdev_priv(%struct.net_device* %13)
  store %struct.mtk_mac* %14, %struct.mtk_mac** %7, align 8
  %15 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %16 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %15, i32 0, i32 3
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %16, align 8
  store %struct.mtk_eth* %17, %struct.mtk_eth** %8, align 8
  %18 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %27 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MTK_MAX_LRO_IP_CNT, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %44 = call i32 @mtk_hwlro_get_ip_cnt(%struct.mtk_mac* %43)
  %45 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %46 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mtk_eth*, %struct.mtk_eth** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @mtk_hwlro_inval_ipaddr(%struct.mtk_eth* %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %25, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mtk_hwlro_get_ip_cnt(%struct.mtk_mac*) #1

declare dso_local i32 @mtk_hwlro_inval_ipaddr(%struct.mtk_eth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
