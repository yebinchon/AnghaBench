; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32, i32 }

@supported = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@lp_advertising = common dso_local global i32 0, align 4
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@ICE_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@Backplane = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_TX_LINK_PAUSE = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_RX_LINK_PAUSE = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_REQ = common dso_local global i32 0, align 4
@FEC_BASER = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_528_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_544_REQ = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_TOPO_CAP = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ice_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %8 = alloca %struct.ice_link_status*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ice_netdev_priv* %13, %struct.ice_netdev_priv** %6, align 8
  %14 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  store %struct.ice_vsi* %16, %struct.ice_vsi** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %18 = load i32, i32* @supported, align 4
  %19 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %17, i32 %18)
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = load i32, i32* @advertising, align 4
  %22 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %20, i32 %21)
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %24 = load i32, i32* @lp_advertising, align 4
  %25 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %23, i32 %24)
  %26 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %27 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.ice_link_status* %30, %struct.ice_link_status** %8, align 8
  %31 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %32 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @ice_get_settings_link_up(%struct.ethtool_link_ksettings* %38, %struct.net_device* %39)
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @ice_get_settings_link_down(%struct.ethtool_link_ksettings* %42, %struct.net_device* %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %47 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ICE_AQ_AN_COMPLETED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %62 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %123 [
    i32 128, label %67
    i32 130, label %76
    i32 131, label %89
    i32 129, label %110
  ]

67:                                               ; preds = %56
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %69 = load i32, i32* @supported, align 4
  %70 = load i32, i32* @FIBRE, align 4
  %71 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @PORT_FIBRE, align 4
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %128

76:                                               ; preds = %56
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %78 = load i32, i32* @supported, align 4
  %79 = load i32, i32* @TP, align 4
  %80 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %77, i32 %78, i32 %79)
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %82 = load i32, i32* @advertising, align 4
  %83 = load i32, i32* @TP, align 4
  %84 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @PORT_TP, align 4
  %86 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %128

89:                                               ; preds = %56
  %90 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %91 = load i32, i32* @supported, align 4
  %92 = load i32, i32* @Autoneg, align 4
  %93 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %90, i32 %91, i32 %92)
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %95 = load i32, i32* @supported, align 4
  %96 = load i32, i32* @Backplane, align 4
  %97 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %94, i32 %95, i32 %96)
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %99 = load i32, i32* @advertising, align 4
  %100 = load i32, i32* @Autoneg, align 4
  %101 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %98, i32 %99, i32 %100)
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %103 = load i32, i32* @advertising, align 4
  %104 = load i32, i32* @Backplane, align 4
  %105 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %102, i32 %103, i32 %104)
  %106 = load i32, i32* @PORT_NONE, align 4
  %107 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  br label %128

110:                                              ; preds = %56
  %111 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %112 = load i32, i32* @supported, align 4
  %113 = load i32, i32* @FIBRE, align 4
  %114 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %111, i32 %112, i32 %113)
  %115 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %116 = load i32, i32* @advertising, align 4
  %117 = load i32, i32* @FIBRE, align 4
  %118 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %115, i32 %116, i32 %117)
  %119 = load i32, i32* @PORT_DA, align 4
  %120 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  br label %128

123:                                              ; preds = %56
  %124 = load i32, i32* @PORT_OTHER, align 4
  %125 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %110, %89, %76, %67
  %129 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %130 = load i32, i32* @supported, align 4
  %131 = load i32, i32* @Pause, align 4
  %132 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %129, i32 %130, i32 %131)
  %133 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %134 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32* %138, i32 8, i32 %139)
  store %struct.ice_aqc_get_phy_caps_data* %140, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %141 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %142 = icmp ne %struct.ice_aqc_get_phy_caps_data* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %128
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %320

146:                                              ; preds = %128
  %147 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %148 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %151 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %152 = call i32 @ice_aq_get_phy_caps(%struct.TYPE_10__* %149, i32 0, i32 %150, %struct.ice_aqc_get_phy_caps_data* %151, i32* null)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %11, align 4
  br label %310

158:                                              ; preds = %146
  %159 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %160 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ICE_AQC_PHY_EN_TX_LINK_PAUSE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %158
  %166 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %167 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @ICE_AQC_PHY_EN_RX_LINK_PAUSE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %174 = load i32, i32* @advertising, align 4
  %175 = load i32, i32* @Pause, align 4
  %176 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %173, i32 %174, i32 %175)
  %177 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %178 = load i32, i32* @advertising, align 4
  %179 = load i32, i32* @Asym_Pause, align 4
  %180 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %177, i32 %178, i32 %179)
  br label %220

181:                                              ; preds = %165, %158
  %182 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %183 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ICE_AQC_PHY_EN_TX_LINK_PAUSE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %190 = load i32, i32* @advertising, align 4
  %191 = load i32, i32* @Asym_Pause, align 4
  %192 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %189, i32 %190, i32 %191)
  br label %219

193:                                              ; preds = %181
  %194 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %195 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @ICE_AQC_PHY_EN_RX_LINK_PAUSE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %193
  %201 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %202 = load i32, i32* @advertising, align 4
  %203 = load i32, i32* @Pause, align 4
  %204 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %201, i32 %202, i32 %203)
  %205 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %206 = load i32, i32* @advertising, align 4
  %207 = load i32, i32* @Asym_Pause, align 4
  %208 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %205, i32 %206, i32 %207)
  br label %218

209:                                              ; preds = %193
  %210 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %211 = load i32, i32* @advertising, align 4
  %212 = load i32, i32* @Pause, align 4
  %213 = call i32 @ethtool_link_ksettings_del_link_mode(%struct.ethtool_link_ksettings* %210, i32 %211, i32 %212)
  %214 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %215 = load i32, i32* @advertising, align 4
  %216 = load i32, i32* @Asym_Pause, align 4
  %217 = call i32 @ethtool_link_ksettings_del_link_mode(%struct.ethtool_link_ksettings* %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %209, %200
  br label %219

219:                                              ; preds = %218, %188
  br label %220

220:                                              ; preds = %219, %172
  %221 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %222 = load i32, i32* @advertising, align 4
  %223 = load i32, i32* @FEC_NONE, align 4
  %224 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %221, i32 %222, i32 %223)
  %225 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %226 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %220
  %232 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %233 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_REQ, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %231, %220
  %239 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %240 = load i32, i32* @advertising, align 4
  %241 = load i32, i32* @FEC_BASER, align 4
  %242 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %238, %231
  %244 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %245 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_528_REQ, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %243
  %251 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %252 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_544_REQ, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %250, %243
  %258 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %259 = load i32, i32* @advertising, align 4
  %260 = load i32, i32* @FEC_RS, align 4
  %261 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %257, %250
  %263 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %264 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %263, i32 0, i32 1
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = load i32, i32* @ICE_AQC_REPORT_TOPO_CAP, align 4
  %267 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %268 = call i32 @ice_aq_get_phy_caps(%struct.TYPE_10__* %265, i32 0, i32 %266, %struct.ice_aqc_get_phy_caps_data* %267, i32* null)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %262
  %272 = load i32, i32* @EIO, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %11, align 4
  br label %310

274:                                              ; preds = %262
  %275 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %276 = load i32, i32* @supported, align 4
  %277 = load i32, i32* @FEC_NONE, align 4
  %278 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %275, i32 %276, i32 %277)
  %279 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %280 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %292, label %285

285:                                              ; preds = %274
  %286 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %287 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %285, %274
  %293 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %294 = load i32, i32* @supported, align 4
  %295 = load i32, i32* @FEC_BASER, align 4
  %296 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %293, i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %292, %285
  %298 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %299 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %297
  %305 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %306 = load i32, i32* @supported, align 4
  %307 = load i32, i32* @FEC_RS, align 4
  %308 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %305, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %304, %297
  br label %310

310:                                              ; preds = %309, %271, %155
  %311 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %312 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %311, i32 0, i32 0
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %318 = call i32 @devm_kfree(i32* %316, %struct.ice_aqc_get_phy_caps_data* %317)
  %319 = load i32, i32* %11, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %310, %143
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @ice_get_settings_link_up(%struct.ethtool_link_ksettings*, %struct.net_device*) #1

declare dso_local i32 @ice_get_settings_link_down(%struct.ethtool_link_ksettings*, %struct.net_device*) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.TYPE_10__*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @ethtool_link_ksettings_del_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_aqc_get_phy_caps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
