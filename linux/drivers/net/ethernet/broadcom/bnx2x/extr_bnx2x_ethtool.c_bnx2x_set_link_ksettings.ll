; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.bnx2x = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_9__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32*, i64*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"ethtool_cmd: cmd %d\0A  supported 0x%x  advertising 0x%x  speed %u\0A  duplex %d  port %d  phy_address %d\0A  autoneg %d\0A\00", align 1
@DUPLEX_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@REQ_BC_VER_4_SET_MF_BW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"To set speed BC %X or higher is required, please upgrade BC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"Speed setting should be in a range from 1%% to 100%% of actual line speed\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@SUPPORTED_TP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unsupported port type\0A\00", align 1
@PORT_HW_CFG_PHY_SELECTION_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SWAPPED_ENABLED = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_SECOND_PHY = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_FIRST_PHY = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"cfg_idx = %x\0A\00", align 1
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@EXT_PHY1 = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Autoneg not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Advertisement parameters are not supported\0A\00", align 1
@SPEED_AUTO_NEG = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseKX4_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseKR_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@ADVERTISED_20000baseKR2_Full = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_20G = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"10M full not supported\0A\00", align 1
@ADVERTISED_TP = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"10M half not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"100M full not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"100M half not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"1G half not supported\0A\00", align 1
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"1G full not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"2.5G half not supported\0A\00", align 1
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"2.5G full not supported\0A\00", align 1
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"10G half not supported\0A\00", align 1
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ETH_PHY_SFP_1G_FIBER = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"10G full not supported\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Unsupported speed %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"req_line_speed %d\0A  req_duplex %d  advertising 0x%x\0A\00", align 1
@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @bnx2x_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %18)
  store %struct.bnx2x* %19, %struct.bnx2x** %6, align 8
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %13, i32 %27)
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %7, i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %35 = call i64 @IS_MF_SD(%struct.bnx2x* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %820

38:                                               ; preds = %2
  %39 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @DP(i32 %39, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %49, i64 %53, i64 %57, i32 %61, i32 %65)
  %67 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %11, align 4
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @DUPLEX_UNKNOWN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %38
  %75 = load i64, i64* @DUPLEX_FULL, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %74, %38
  %77 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %78 = call i64 @IS_MF_SI(%struct.bnx2x* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %132

80:                                               ; preds = %76
  %81 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  store i32 10000, i32* %16, align 4
  br label %88

88:                                               ; preds = %87, %80
  %89 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @REQ_BC_VER_4_SET_MF_BW, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %97 = load i64, i64* @REQ_BC_VER_4_SET_MF_BW, align 8
  %98 = call i32 (i32, i8*, ...) @DP(i32 %96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %820

101:                                              ; preds = %88
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %102, 100
  %104 = load i32, i32* %16, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109, %101
  %113 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %114 = call i32 (i32, i8*, ...) @DP(i32 %113, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %820

117:                                              ; preds = %109
  %118 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %119 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %126 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  br label %131

127:                                              ; preds = %117
  %128 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @bnx2x_update_max_mf_config(%struct.bnx2x* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %123
  store i32 0, i32* %3, align 4
  br label %820

132:                                              ; preds = %76
  %133 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %134 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %133)
  store i32 %134, i32* %8, align 4
  %135 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %9, align 4
  %139 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %144 = call i64 @bnx2x_get_port_type(%struct.bnx2x* %143)
  %145 = icmp ne i64 %142, %144
  br i1 %145, label %146, label %267

146:                                              ; preds = %132
  %147 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %148 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  switch i64 %150, label %261 [
    i64 133, label %151
    i64 135, label %206
    i64 136, label %206
    i64 134, label %206
  ]

151:                                              ; preds = %146
  %152 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %153 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SUPPORTED_TP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %176, label %161

161:                                              ; preds = %151
  %162 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %163 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SUPPORTED_TP, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %173 = call i32 (i32, i8*, ...) @DP(i32 %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %820

176:                                              ; preds = %161, %151
  %177 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_MASK, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %180 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %178
  store i32 %183, i32* %181, align 8
  %184 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %185 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %176
  %192 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_SECOND_PHY, align 4
  %193 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %194 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %192
  store i32 %197, i32* %195, align 8
  br label %205

198:                                              ; preds = %176
  %199 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 4
  %200 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %201 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %199
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %198, %191
  br label %266

206:                                              ; preds = %146, %146, %146
  %207 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %208 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %231, label %216

216:                                              ; preds = %206
  %217 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %218 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %216
  %227 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %228 = call i32 (i32, i8*, ...) @DP(i32 %227, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %3, align 4
  br label %820

231:                                              ; preds = %216, %206
  %232 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_MASK, align 4
  %233 = xor i32 %232, -1
  %234 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %235 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %233
  store i32 %238, i32* %236, align 8
  %239 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %240 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %231
  %247 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 4
  %248 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %249 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %247
  store i32 %252, i32* %250, align 8
  br label %260

253:                                              ; preds = %231
  %254 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_SECOND_PHY, align 4
  %255 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %256 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %254
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %253, %246
  br label %266

261:                                              ; preds = %146
  %262 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %263 = call i32 (i32, i8*, ...) @DP(i32 %262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %3, align 4
  br label %820

266:                                              ; preds = %260, %205
  br label %267

267:                                              ; preds = %266, %132
  %268 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %269 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %10, align 4
  %272 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %273 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %272)
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %276 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  %278 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %279 = load i32, i32* %8, align 4
  %280 = call i32 (i32, i8*, ...) @DP(i32 %278, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %279)
  %281 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %282 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @AUTONEG_ENABLE, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %512

287:                                              ; preds = %267
  %288 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %289 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %17, align 4
  %296 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %297 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = load i64, i64* @EXT_PHY1, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %287
  %307 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %308 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* %17, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %17, align 4
  br label %312

312:                                              ; preds = %306, %287
  %313 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %314 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %312
  %325 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %326 = call i32 (i32, i8*, ...) @DP(i32 %325, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %3, align 4
  br label %820

329:                                              ; preds = %312
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %17, align 4
  %332 = xor i32 %331, -1
  %333 = and i32 %330, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %329
  %336 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %337 = call i32 (i32, i8*, ...) @DP(i32 %336, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %338 = load i32, i32* @EINVAL, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %3, align 4
  br label %820

340:                                              ; preds = %329
  %341 = load i32, i32* @SPEED_AUTO_NEG, align 4
  %342 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %343 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32 %341, i32* %348, align 4
  %349 = load i64, i64* %14, align 8
  %350 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %351 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 2
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %8, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  store i64 %349, i64* %356, align 8
  %357 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %358 = load i32, i32* %7, align 4
  %359 = or i32 %357, %358
  %360 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %361 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  store i32 %359, i32* %366, align 4
  %367 = load i32, i32* %7, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %511

369:                                              ; preds = %340
  %370 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %371 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 4
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 0, i32* %376, align 4
  %377 = load i32, i32* %7, align 4
  %378 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %392

381:                                              ; preds = %369
  %382 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF, align 4
  %383 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %384 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 4
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %382
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %381, %369
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %408

397:                                              ; preds = %392
  %398 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 4
  %399 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %400 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 4
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %8, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = or i32 %406, %398
  store i32 %407, i32* %405, align 4
  br label %408

408:                                              ; preds = %397, %392
  %409 = load i32, i32* %7, align 4
  %410 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %424

413:                                              ; preds = %408
  %414 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL, align 4
  %415 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %416 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 4
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = or i32 %422, %414
  store i32 %423, i32* %421, align 4
  br label %424

424:                                              ; preds = %413, %408
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %440

429:                                              ; preds = %424
  %430 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF, align 4
  %431 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %432 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 4
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %438, %430
  store i32 %439, i32* %437, align 4
  br label %440

440:                                              ; preds = %429, %424
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %456

445:                                              ; preds = %440
  %446 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %447 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %448 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 4
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %8, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %446
  store i32 %455, i32* %453, align 4
  br label %456

456:                                              ; preds = %445, %440
  %457 = load i32, i32* %7, align 4
  %458 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %459 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %460 = or i32 %458, %459
  %461 = and i32 %457, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %456
  %464 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %465 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %466 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 4
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %8, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = or i32 %472, %464
  store i32 %473, i32* %471, align 4
  br label %474

474:                                              ; preds = %463, %456
  %475 = load i32, i32* %7, align 4
  %476 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %477 = load i32, i32* @ADVERTISED_10000baseKX4_Full, align 4
  %478 = or i32 %476, %477
  %479 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %480 = or i32 %478, %479
  %481 = and i32 %475, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %494

483:                                              ; preds = %474
  %484 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %485 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %486 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 0, i32 4
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %8, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = or i32 %492, %484
  store i32 %493, i32* %491, align 4
  br label %494

494:                                              ; preds = %483, %474
  %495 = load i32, i32* %7, align 4
  %496 = load i32, i32* @ADVERTISED_20000baseKR2_Full, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %510

499:                                              ; preds = %494
  %500 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_20G, align 4
  %501 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %502 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 4
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = or i32 %508, %500
  store i32 %509, i32* %507, align 4
  br label %510

510:                                              ; preds = %499, %494
  br label %511

511:                                              ; preds = %510, %340
  br label %777

512:                                              ; preds = %267
  %513 = load i32, i32* %11, align 4
  switch i32 %513, label %746 [
    i32 132, label %514
    i32 131, label %561
    i32 130, label %608
    i32 128, label %654
    i32 129, label %684
  ]

514:                                              ; preds = %512
  %515 = load i64, i64* %14, align 8
  %516 = load i64, i64* @DUPLEX_FULL, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %539

518:                                              ; preds = %514
  %519 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %520 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %519, i32 0, i32 3
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 0
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %8, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %535, label %530

530:                                              ; preds = %518
  %531 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %532 = call i32 (i32, i8*, ...) @DP(i32 %531, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %533 = load i32, i32* @EINVAL, align 4
  %534 = sub nsw i32 0, %533
  store i32 %534, i32* %3, align 4
  br label %820

535:                                              ; preds = %518
  %536 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %537 = load i32, i32* @ADVERTISED_TP, align 4
  %538 = or i32 %536, %537
  store i32 %538, i32* %7, align 4
  br label %560

539:                                              ; preds = %514
  %540 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %541 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %540, i32 0, i32 3
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 0
  %543 = load i32*, i32** %542, align 8
  %544 = load i32, i32* %8, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %539
  %552 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %553 = call i32 (i32, i8*, ...) @DP(i32 %552, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %554 = load i32, i32* @EINVAL, align 4
  %555 = sub nsw i32 0, %554
  store i32 %555, i32* %3, align 4
  br label %820

556:                                              ; preds = %539
  %557 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %558 = load i32, i32* @ADVERTISED_TP, align 4
  %559 = or i32 %557, %558
  store i32 %559, i32* %7, align 4
  br label %560

560:                                              ; preds = %556, %535
  br label %752

561:                                              ; preds = %512
  %562 = load i64, i64* %14, align 8
  %563 = load i64, i64* @DUPLEX_FULL, align 8
  %564 = icmp eq i64 %562, %563
  br i1 %564, label %565, label %586

565:                                              ; preds = %561
  %566 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %567 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %566, i32 0, i32 3
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = load i32, i32* %8, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %569, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %575 = and i32 %573, %574
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %582, label %577

577:                                              ; preds = %565
  %578 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %579 = call i32 (i32, i8*, ...) @DP(i32 %578, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %580 = load i32, i32* @EINVAL, align 4
  %581 = sub nsw i32 0, %580
  store i32 %581, i32* %3, align 4
  br label %820

582:                                              ; preds = %565
  %583 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %584 = load i32, i32* @ADVERTISED_TP, align 4
  %585 = or i32 %583, %584
  store i32 %585, i32* %7, align 4
  br label %607

586:                                              ; preds = %561
  %587 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %588 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %587, i32 0, i32 3
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 0
  %590 = load i32*, i32** %589, align 8
  %591 = load i32, i32* %8, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %590, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %596 = and i32 %594, %595
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %603, label %598

598:                                              ; preds = %586
  %599 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %600 = call i32 (i32, i8*, ...) @DP(i32 %599, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %601 = load i32, i32* @EINVAL, align 4
  %602 = sub nsw i32 0, %601
  store i32 %602, i32* %3, align 4
  br label %820

603:                                              ; preds = %586
  %604 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %605 = load i32, i32* @ADVERTISED_TP, align 4
  %606 = or i32 %604, %605
  store i32 %606, i32* %7, align 4
  br label %607

607:                                              ; preds = %603, %582
  br label %752

608:                                              ; preds = %512
  %609 = load i64, i64* %14, align 8
  %610 = load i64, i64* @DUPLEX_FULL, align 8
  %611 = icmp ne i64 %609, %610
  br i1 %611, label %612, label %617

612:                                              ; preds = %608
  %613 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %614 = call i32 (i32, i8*, ...) @DP(i32 %613, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %615 = load i32, i32* @EINVAL, align 4
  %616 = sub nsw i32 0, %615
  store i32 %616, i32* %3, align 4
  br label %820

617:                                              ; preds = %608
  %618 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %619 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %618, i32 0, i32 3
  %620 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %619, i32 0, i32 0
  %621 = load i32*, i32** %620, align 8
  %622 = load i32, i32* %8, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %621, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %627 = and i32 %625, %626
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %617
  %630 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %631 = load i32, i32* @ADVERTISED_TP, align 4
  %632 = or i32 %630, %631
  store i32 %632, i32* %7, align 4
  br label %653

633:                                              ; preds = %617
  %634 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %635 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %634, i32 0, i32 3
  %636 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %635, i32 0, i32 0
  %637 = load i32*, i32** %636, align 8
  %638 = load i32, i32* %8, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32, i32* %637, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %643 = and i32 %641, %642
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %647

645:                                              ; preds = %633
  %646 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  store i32 %646, i32* %7, align 4
  br label %652

647:                                              ; preds = %633
  %648 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %649 = call i32 (i32, i8*, ...) @DP(i32 %648, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %650 = load i32, i32* @EINVAL, align 4
  %651 = sub nsw i32 0, %650
  store i32 %651, i32* %3, align 4
  br label %820

652:                                              ; preds = %645
  br label %653

653:                                              ; preds = %652, %629
  br label %752

654:                                              ; preds = %512
  %655 = load i64, i64* %14, align 8
  %656 = load i64, i64* @DUPLEX_FULL, align 8
  %657 = icmp ne i64 %655, %656
  br i1 %657, label %658, label %663

658:                                              ; preds = %654
  %659 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %660 = call i32 (i32, i8*, ...) @DP(i32 %659, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %661 = load i32, i32* @EINVAL, align 4
  %662 = sub nsw i32 0, %661
  store i32 %662, i32* %3, align 4
  br label %820

663:                                              ; preds = %654
  %664 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %665 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %664, i32 0, i32 3
  %666 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %665, i32 0, i32 0
  %667 = load i32*, i32** %666, align 8
  %668 = load i32, i32* %8, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i32, i32* %667, i64 %669
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %680, label %675

675:                                              ; preds = %663
  %676 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %677 = call i32 (i32, i8*, ...) @DP(i32 %676, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %678 = load i32, i32* @EINVAL, align 4
  %679 = sub nsw i32 0, %678
  store i32 %679, i32* %3, align 4
  br label %820

680:                                              ; preds = %663
  %681 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %682 = load i32, i32* @ADVERTISED_TP, align 4
  %683 = or i32 %681, %682
  store i32 %683, i32* %7, align 4
  br label %752

684:                                              ; preds = %512
  %685 = load i64, i64* %14, align 8
  %686 = load i64, i64* @DUPLEX_FULL, align 8
  %687 = icmp ne i64 %685, %686
  br i1 %687, label %688, label %693

688:                                              ; preds = %684
  %689 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %690 = call i32 (i32, i8*, ...) @DP(i32 %689, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %691 = load i32, i32* @EINVAL, align 4
  %692 = sub nsw i32 0, %691
  store i32 %692, i32* %3, align 4
  br label %820

693:                                              ; preds = %684
  %694 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %695 = call i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x* %694)
  store i32 %695, i32* %12, align 4
  %696 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %697 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %696, i32 0, i32 3
  %698 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %697, i32 0, i32 0
  %699 = load i32*, i32** %698, align 8
  %700 = load i32, i32* %8, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %699, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %705 = and i32 %703, %704
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %723

707:                                              ; preds = %693
  %708 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %709 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %708, i32 0, i32 2
  %710 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %709, i32 0, i32 3
  %711 = load %struct.TYPE_8__*, %struct.TYPE_8__** %710, align 8
  %712 = load i32, i32* %12, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %711, i64 %713
  %715 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %714, i32 0, i32 1
  %716 = load i32, i32* %715, align 8
  %717 = load i32, i32* @ETH_PHY_SFP_1G_FIBER, align 4
  %718 = icmp ne i32 %716, %717
  br i1 %718, label %719, label %723

719:                                              ; preds = %707
  %720 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %721 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %722 = or i32 %720, %721
  store i32 %722, i32* %7, align 4
  br label %745

723:                                              ; preds = %707, %693
  %724 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %725 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %724, i32 0, i32 3
  %726 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %725, i32 0, i32 0
  %727 = load i32*, i32** %726, align 8
  %728 = load i32, i32* %8, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32, i32* %727, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %733 = and i32 %731, %732
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %739

735:                                              ; preds = %723
  %736 = load i32, i32* @ADVERTISED_10000baseKR_Full, align 4
  %737 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %738 = or i32 %736, %737
  store i32 %738, i32* %7, align 4
  br label %744

739:                                              ; preds = %723
  %740 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %741 = call i32 (i32, i8*, ...) @DP(i32 %740, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %742 = load i32, i32* @EINVAL, align 4
  %743 = sub nsw i32 0, %742
  store i32 %743, i32* %3, align 4
  br label %820

744:                                              ; preds = %735
  br label %745

745:                                              ; preds = %744, %719
  br label %752

746:                                              ; preds = %512
  %747 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %748 = load i32, i32* %11, align 4
  %749 = call i32 (i32, i8*, ...) @DP(i32 %747, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %748)
  %750 = load i32, i32* @EINVAL, align 4
  %751 = sub nsw i32 0, %750
  store i32 %751, i32* %3, align 4
  br label %820

752:                                              ; preds = %745, %680, %653, %607, %560
  %753 = load i32, i32* %11, align 4
  %754 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %755 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %754, i32 0, i32 2
  %756 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %755, i32 0, i32 1
  %757 = load i32*, i32** %756, align 8
  %758 = load i32, i32* %8, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i32, i32* %757, i64 %759
  store i32 %753, i32* %760, align 4
  %761 = load i64, i64* %14, align 8
  %762 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %763 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %762, i32 0, i32 2
  %764 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %763, i32 0, i32 2
  %765 = load i64*, i64** %764, align 8
  %766 = load i32, i32* %8, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i64, i64* %765, i64 %767
  store i64 %761, i64* %768, align 8
  %769 = load i32, i32* %7, align 4
  %770 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %771 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %770, i32 0, i32 3
  %772 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %771, i32 0, i32 1
  %773 = load i32*, i32** %772, align 8
  %774 = load i32, i32* %8, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i32, i32* %773, i64 %775
  store i32 %769, i32* %776, align 4
  br label %777

777:                                              ; preds = %752, %511
  %778 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %779 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %780 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %779, i32 0, i32 2
  %781 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %780, i32 0, i32 1
  %782 = load i32*, i32** %781, align 8
  %783 = load i32, i32* %8, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, i32* %782, i64 %784
  %786 = load i32, i32* %785, align 4
  %787 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %788 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %787, i32 0, i32 2
  %789 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %788, i32 0, i32 2
  %790 = load i64*, i64** %789, align 8
  %791 = load i32, i32* %8, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i64, i64* %790, i64 %792
  %794 = load i64, i64* %793, align 8
  %795 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %796 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %795, i32 0, i32 3
  %797 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %796, i32 0, i32 1
  %798 = load i32*, i32** %797, align 8
  %799 = load i32, i32* %8, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds i32, i32* %798, i64 %800
  %802 = load i32, i32* %801, align 4
  %803 = call i32 (i32, i8*, ...) @DP(i32 %778, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 %786, i64 %794, i32 %802)
  %804 = load i32, i32* %10, align 4
  %805 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %806 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %805, i32 0, i32 2
  %807 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %806, i32 0, i32 0
  store i32 %804, i32* %807, align 8
  %808 = load %struct.net_device*, %struct.net_device** %4, align 8
  %809 = call i64 @netif_running(%struct.net_device* %808)
  %810 = icmp ne i64 %809, 0
  br i1 %810, label %811, label %819

811:                                              ; preds = %777
  %812 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %813 = load i32, i32* @STATS_EVENT_STOP, align 4
  %814 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %812, i32 %813)
  %815 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %816 = call i32 @bnx2x_force_link_reset(%struct.bnx2x* %815)
  %817 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %818 = call i32 @bnx2x_link_set(%struct.bnx2x* %817)
  br label %819

819:                                              ; preds = %811, %777
  store i32 0, i32* %3, align 4
  br label %820

820:                                              ; preds = %819, %746, %739, %688, %675, %658, %647, %612, %598, %577, %551, %530, %335, %324, %261, %226, %171, %131, %112, %95, %37
  %821 = load i32, i32* %3, align 4
  ret i32 %821
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @IS_MF_SI(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_update_max_mf_config(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_get_port_type(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_cur_phy_idx(%struct.bnx2x*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_force_link_reset(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_set(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
