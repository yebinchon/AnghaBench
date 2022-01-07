; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_6__*, %struct.ice_port_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ice_port_info = type { %struct.ice_dcbx_cfg }
%struct.ice_dcbx_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ice_aqc_get_phy_caps_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@ICE_AQC_PHY_AN_MODE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_TX_LINK_PAUSE = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_RX_LINK_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @ice_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ice_netdev_priv*, align 8
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %8 = alloca %struct.ice_vsi*, align 8
  %9 = alloca %struct.ice_dcbx_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ice_netdev_priv* %12, %struct.ice_netdev_priv** %5, align 8
  %13 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %14, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 1
  %17 = load %struct.ice_port_info*, %struct.ice_port_info** %16, align 8
  store %struct.ice_port_info* %17, %struct.ice_port_info** %6, align 8
  %18 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %18, i32 0, i32 0
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %19, align 8
  store %struct.ice_vsi* %20, %struct.ice_vsi** %8, align 8
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %26 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %25, i32 0, i32 0
  store %struct.ice_dcbx_cfg* %26, %struct.ice_dcbx_cfg** %9, align 8
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %8, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32* %32, i32 4, i32 %33)
  store %struct.ice_aqc_get_phy_caps_data* %34, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %35 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %36 = icmp ne %struct.ice_aqc_get_phy_caps_data* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %97

38:                                               ; preds = %2
  %39 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %40 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %41 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %42 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %39, i32 0, i32 %40, %struct.ice_aqc_get_phy_caps_data* %41, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %88

46:                                               ; preds = %38
  %47 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %48 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ICE_AQC_PHY_AN_MODE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %9, align 8
  %62 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %88

67:                                               ; preds = %57
  %68 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %69 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ICE_AQC_PHY_EN_TX_LINK_PAUSE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %79 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ICE_AQC_PHY_EN_RX_LINK_PAUSE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %66, %45
  %89 = load %struct.ice_vsi*, %struct.ice_vsi** %8, align 8
  %90 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %96 = call i32 @devm_kfree(i32* %94, %struct.ice_aqc_get_phy_caps_data* %95)
  br label %97

97:                                               ; preds = %88, %37
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_aqc_get_phy_caps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
