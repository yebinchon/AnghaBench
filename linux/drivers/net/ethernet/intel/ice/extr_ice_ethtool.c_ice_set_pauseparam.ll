; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i64, %struct.ice_port_info*, %struct.ice_pf* }
%struct.ice_port_info = type { %struct.TYPE_7__, %struct.ice_dcbx_cfg, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.ice_dcbx_cfg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32 }
%struct.ice_pf = type { i32, %struct.ice_hw }
%struct.ice_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32 }

@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Changing flow control parameters only supported for PF VSI\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICE_AQC_PHY_AN_MODE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"To change autoneg please use: ethtool -s <dev> autoneg <on|off>\0A\00", align 1
@__ICE_DOWN = common dso_local global i32 0, align 4
@ICE_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Autoneg did not complete so changing settings may not result in an actual change.\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Priority flow control enabled. Cannot set link flow control.\0A\00", align 1
@ICE_FC_FULL = common dso_local global i32 0, align 4
@ICE_FC_RX_PAUSE = common dso_local global i32 0, align 4
@ICE_FC_TX_PAUSE = common dso_local global i32 0, align 4
@ICE_FC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ICE_SET_FC_AQ_FAIL_GET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"Set fc failed on the get_phy_capabilities call with err %d aq_err %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ICE_SET_FC_AQ_FAIL_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"Set fc failed on the set_phy_config call with err %d aq_err %d\0A\00", align 1
@ICE_SET_FC_AQ_FAIL_UPDATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"Set fc failed on the get_link_info call with err %d aq_err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ice_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %8 = alloca %struct.ice_link_status*, align 8
  %9 = alloca %struct.ice_pf*, align 8
  %10 = alloca %struct.ice_dcbx_cfg*, align 8
  %11 = alloca %struct.ice_vsi*, align 8
  %12 = alloca %struct.ice_hw*, align 8
  %13 = alloca %struct.ice_port_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.ice_netdev_priv* %20, %struct.ice_netdev_priv** %6, align 8
  %21 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %21, i32 0, i32 0
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %22, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 2
  %25 = load %struct.ice_pf*, %struct.ice_pf** %24, align 8
  store %struct.ice_pf* %25, %struct.ice_pf** %9, align 8
  %26 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %27 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %26, i32 0, i32 0
  %28 = load %struct.ice_vsi*, %struct.ice_vsi** %27, align 8
  store %struct.ice_vsi* %28, %struct.ice_vsi** %11, align 8
  %29 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %30 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %29, i32 0, i32 1
  store %struct.ice_hw* %30, %struct.ice_hw** %12, align 8
  store i32 0, i32* %17, align 4
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %32 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %31, i32 0, i32 1
  %33 = load %struct.ice_port_info*, %struct.ice_port_info** %32, align 8
  store %struct.ice_port_info* %33, %struct.ice_port_info** %13, align 8
  %34 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %35 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.ice_link_status* %36, %struct.ice_link_status** %8, align 8
  %37 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %38 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %37, i32 0, i32 1
  store %struct.ice_dcbx_cfg* %38, %struct.ice_dcbx_cfg** %10, align 8
  %39 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %40 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %45 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ICE_VSI_PF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %2
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %274

54:                                               ; preds = %2
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.ice_aqc_get_phy_caps_data* @kzalloc(i32 4, i32 %55)
  store %struct.ice_aqc_get_phy_caps_data* %56, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %57 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %58 = icmp ne %struct.ice_aqc_get_phy_caps_data* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %274

62:                                               ; preds = %54
  %63 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %64 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %65 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %66 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %63, i32 0, i32 %64, %struct.ice_aqc_get_phy_caps_data* %65, i32* null)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %71 = call i32 @kfree(%struct.ice_aqc_get_phy_caps_data* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %274

74:                                               ; preds = %62
  %75 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %76 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ICE_AQC_PHY_AN_MODE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i64, i64* @AUTONEG_ENABLE, align 8
  br label %85

83:                                               ; preds = %74
  %84 = load i64, i64* @AUTONEG_DISABLE, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  store i64 %86, i64* %18, align 8
  %87 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %88 = call i32 @kfree(%struct.ice_aqc_get_phy_caps_data* %87)
  %89 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %18, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %95, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %274

99:                                               ; preds = %85
  %100 = load i32, i32* @__ICE_DOWN, align 4
  %101 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %102 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @test_bit(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %99
  %107 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %108 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ICE_AQ_AN_COMPLETED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %114, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %106, %99
  %117 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %10, align 8
  %118 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %123, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @EOPNOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %274

127:                                              ; preds = %116
  %128 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %134 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* @ICE_FC_FULL, align 4
  %139 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %140 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  br label %193

142:                                              ; preds = %132, %127
  %143 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %144 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* @ICE_FC_RX_PAUSE, align 4
  %154 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %155 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  br label %192

157:                                              ; preds = %147, %142
  %158 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %159 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %164 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* @ICE_FC_TX_PAUSE, align 4
  %169 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %170 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  br label %191

172:                                              ; preds = %162, %157
  %173 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %174 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %172
  %178 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %179 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @ICE_FC_NONE, align 4
  %184 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %185 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  br label %190

187:                                              ; preds = %177, %172
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %274

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %167
  br label %192

192:                                              ; preds = %191, %152
  br label %193

193:                                              ; preds = %192, %137
  %194 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %195 = call i32 @ice_print_link_msg(%struct.ice_vsi* %194, i32 0)
  %196 = load %struct.net_device*, %struct.net_device** %4, align 8
  %197 = call i32 @netif_carrier_off(%struct.net_device* %196)
  %198 = load %struct.net_device*, %struct.net_device** %4, align 8
  %199 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %198)
  %200 = load %struct.ice_port_info*, %struct.ice_port_info** %13, align 8
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @ice_set_fc(%struct.ice_port_info* %200, i32* %15, i32 %201)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @ICE_SET_FC_AQ_FAIL_GET, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %193
  %208 = load %struct.net_device*, %struct.net_device** %4, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %211 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %208, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %209, i32 %213)
  %215 = load i32, i32* @EAGAIN, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %17, align 4
  br label %249

217:                                              ; preds = %193
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @ICE_SET_FC_AQ_FAIL_SET, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load %struct.net_device*, %struct.net_device** %4, align 8
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %226 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %223, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %224, i32 %228)
  %230 = load i32, i32* @EAGAIN, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %17, align 4
  br label %248

232:                                              ; preds = %217
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* @ICE_SET_FC_AQ_FAIL_UPDATE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %232
  %238 = load %struct.net_device*, %struct.net_device** %4, align 8
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %241 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %238, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %239, i32 %243)
  %245 = load i32, i32* @EAGAIN, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %17, align 4
  br label %247

247:                                              ; preds = %237, %232
  br label %248

248:                                              ; preds = %247, %222
  br label %249

249:                                              ; preds = %248, %207
  %250 = load i32, i32* @__ICE_DOWN, align 4
  %251 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %252 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @test_bit(i32 %250, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %272, label %256

256:                                              ; preds = %249
  %257 = call i32 @msleep(i32 75)
  %258 = load i32, i32* @__ICE_DOWN, align 4
  %259 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %260 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @test_bit(i32 %258, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %256
  %265 = load %struct.net_device*, %struct.net_device** %4, align 8
  %266 = call i32 @ice_nway_reset(%struct.net_device* %265)
  store i32 %266, i32* %3, align 4
  br label %274

267:                                              ; preds = %256
  %268 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %269 = call i32 @ice_down(%struct.ice_vsi* %268)
  %270 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %271 = call i32 @ice_up(%struct.ice_vsi* %270)
  br label %272

272:                                              ; preds = %267, %249
  %273 = load i32, i32* %17, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %272, %264, %187, %122, %94, %69, %59, %49
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @kfree(%struct.ice_aqc_get_phy_caps_data*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_print_link_msg(%struct.ice_vsi*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @ice_set_fc(%struct.ice_port_info*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ice_nway_reset(%struct.net_device*) #1

declare dso_local i32 @ice_down(%struct.ice_vsi*) #1

declare dso_local i32 @ice_up(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
