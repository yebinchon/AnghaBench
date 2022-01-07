; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_add_ipaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_hwlro_add_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_mac = type { i32, i32*, i32, %struct.mtk_eth* }
%struct.mtk_eth = type { i32 }

@TCP_V4_FLOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MTK_MAX_LRO_IP_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @mtk_hwlro_add_ipaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hwlro_add_ipaddr(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
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
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_V4_FLOW, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %25 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %23, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %30
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htonl(i32 %43)
  %45 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %46 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %44, i32* %52, align 4
  %53 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %54 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MTK_MAX_LRO_IP_CNT, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %63 = call i32 @mtk_hwlro_get_ip_cnt(%struct.mtk_mac* %62)
  %64 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %65 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mtk_eth*, %struct.mtk_eth** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %69 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mtk_hwlro_val_ipaddr(%struct.mtk_eth* %66, i32 %67, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %38, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mtk_hwlro_get_ip_cnt(%struct.mtk_mac*) #1

declare dso_local i32 @mtk_hwlro_val_ipaddr(%struct.mtk_eth*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
