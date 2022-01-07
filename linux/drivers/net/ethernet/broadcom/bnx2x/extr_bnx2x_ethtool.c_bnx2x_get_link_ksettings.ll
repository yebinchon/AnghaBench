; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.bnx2x = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i64* }

@SUPPORTED_TP = common dso_local global i64 0, align 8
@SUPPORTED_FIBRE = common dso_local global i64 0, align 8
@ETH_PHY_SFP_1G_FIBER = common dso_local global i64 0, align 8
@SUPPORTED_10000baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_10000baseT_Full = common dso_local global i64 0, align 8
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@MF_FUNC_DIS = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE = common dso_local global i64 0, align 8
@ADVERTISED_Pause = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE = common dso_local global i64 0, align 8
@ADVERTISED_Asym_Pause = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_10THD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Full = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Half = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i64 0, align 8
@ETH_PHY_KR = common dso_local global i64 0, align 8
@ADVERTISED_1000baseKX_Full = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_2500baseX_Full = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_10000baseKR_Full = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_PARTNER_20GXFD_CAPABLE = common dso_local global i64 0, align 8
@ADVERTISED_20000baseKR2_Full = common dso_local global i64 0, align 8
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"ethtool_cmd: cmd %d\0A  supported 0x%x  advertising 0x%x  speed %u\0A  duplex %d  port %d  phy_address %d\0A  autoneg %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @bnx2x_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %5, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %10, i32 %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SUPPORTED_TP, align 8
  %39 = load i64, i64* @SUPPORTED_FIBRE, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %37, %40
  %42 = or i64 %28, %41
  store i64 %42, i64* %8, align 8
  %43 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %56 = call i64 @bnx2x_get_cur_phy_idx(%struct.bnx2x* %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @ETH_PHY_SFP_1G_FIBER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %2
  %64 = load i64, i64* @SUPPORTED_10000baseT_Full, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %8, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* @ADVERTISED_10000baseT_Full, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %9, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %63, %2
  %73 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %72
  %79 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %78
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MF_FUNC_DIS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %84
  %92 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %97 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %100 = call i64 @IS_MF(%struct.bnx2x* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %104 = call i32 @BP_NOMCP(%struct.bnx2x* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %108 = call i32 @bnx2x_get_mf_speed(%struct.bnx2x* %107)
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 4
  br label %120

112:                                              ; preds = %102, %91
  %113 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %114 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %118 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 4
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %106
  br label %130

121:                                              ; preds = %84, %78, %72
  %122 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %123 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %124 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @SPEED_UNKNOWN, align 4
  %127 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %128 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %121, %120
  %131 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %132 = call i32 @bnx2x_get_port_type(%struct.bnx2x* %131)
  %133 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %134 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 4
  %136 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %137 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %141 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %144 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %130
  %154 = load i32, i32* @AUTONEG_ENABLE, align 4
  %155 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %156 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 4
  br label %163

158:                                              ; preds = %130
  %159 = load i32, i32* @AUTONEG_DISABLE, align 4
  %160 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %161 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %165 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %297

171:                                              ; preds = %163
  %172 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %173 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %11, align 8
  %177 = load i64, i64* @ADVERTISED_Autoneg, align 8
  %178 = load i64, i64* %10, align 8
  %179 = or i64 %178, %177
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE, align 8
  %182 = and i64 %180, %181
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load i64, i64* @ADVERTISED_Pause, align 8
  %186 = load i64, i64* %10, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %10, align 8
  br label %188

188:                                              ; preds = %184, %171
  %189 = load i64, i64* %11, align 8
  %190 = load i64, i64* @LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE, align 8
  %191 = and i64 %189, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i64, i64* @ADVERTISED_Asym_Pause, align 8
  %195 = load i64, i64* %10, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %10, align 8
  br label %197

197:                                              ; preds = %193, %188
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* @LINK_STATUS_LINK_PARTNER_10THD_CAPABLE, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  %204 = load i64, i64* %10, align 8
  %205 = or i64 %204, %203
  store i64 %205, i64* %10, align 8
  br label %206

206:                                              ; preds = %202, %197
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* @LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE, align 8
  %209 = and i64 %207, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  %213 = load i64, i64* %10, align 8
  %214 = or i64 %213, %212
  store i64 %214, i64* %10, align 8
  br label %215

215:                                              ; preds = %211, %206
  %216 = load i64, i64* %11, align 8
  %217 = load i64, i64* @LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE, align 8
  %218 = and i64 %216, %217
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  %222 = load i64, i64* %10, align 8
  %223 = or i64 %222, %221
  store i64 %223, i64* %10, align 8
  br label %224

224:                                              ; preds = %220, %215
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* @LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE, align 8
  %227 = and i64 %225, %226
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  %231 = load i64, i64* %10, align 8
  %232 = or i64 %231, %230
  store i64 %232, i64* %10, align 8
  br label %233

233:                                              ; preds = %229, %224
  %234 = load i64, i64* %11, align 8
  %235 = load i64, i64* @LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE, align 8
  %236 = and i64 %234, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i64, i64* @ADVERTISED_1000baseT_Half, align 8
  %240 = load i64, i64* %10, align 8
  %241 = or i64 %240, %239
  store i64 %241, i64* %10, align 8
  br label %242

242:                                              ; preds = %238, %233
  %243 = load i64, i64* %11, align 8
  %244 = load i64, i64* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 8
  %245 = and i64 %243, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %242
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* @ETH_PHY_KR, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load i64, i64* @ADVERTISED_1000baseKX_Full, align 8
  %253 = load i64, i64* %10, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %10, align 8
  br label %259

255:                                              ; preds = %247
  %256 = load i64, i64* @ADVERTISED_1000baseT_Full, align 8
  %257 = load i64, i64* %10, align 8
  %258 = or i64 %257, %256
  store i64 %258, i64* %10, align 8
  br label %259

259:                                              ; preds = %255, %251
  br label %260

260:                                              ; preds = %259, %242
  %261 = load i64, i64* %11, align 8
  %262 = load i64, i64* @LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE, align 8
  %263 = and i64 %261, %262
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load i64, i64* @ADVERTISED_2500baseX_Full, align 8
  %267 = load i64, i64* %10, align 8
  %268 = or i64 %267, %266
  store i64 %268, i64* %10, align 8
  br label %269

269:                                              ; preds = %265, %260
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 8
  %272 = and i64 %270, %271
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %269
  %275 = load i64, i64* %7, align 8
  %276 = load i64, i64* @ETH_PHY_KR, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i64, i64* @ADVERTISED_10000baseKR_Full, align 8
  %280 = load i64, i64* %10, align 8
  %281 = or i64 %280, %279
  store i64 %281, i64* %10, align 8
  br label %286

282:                                              ; preds = %274
  %283 = load i64, i64* @ADVERTISED_10000baseT_Full, align 8
  %284 = load i64, i64* %10, align 8
  %285 = or i64 %284, %283
  store i64 %285, i64* %10, align 8
  br label %286

286:                                              ; preds = %282, %278
  br label %287

287:                                              ; preds = %286, %269
  %288 = load i64, i64* %11, align 8
  %289 = load i64, i64* @LINK_STATUS_LINK_PARTNER_20GXFD_CAPABLE, align 8
  %290 = and i64 %288, %289
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load i64, i64* @ADVERTISED_20000baseKR2_Full, align 8
  %294 = load i64, i64* %10, align 8
  %295 = or i64 %294, %293
  store i64 %295, i64* %10, align 8
  br label %296

296:                                              ; preds = %292, %287
  br label %297

297:                                              ; preds = %296, %163
  %298 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %299 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i64, i64* %8, align 8
  %303 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %301, i64 %302)
  %304 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %305 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i64, i64* %9, align 8
  %309 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %307, i64 %308)
  %310 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %311 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i64, i64* %10, align 8
  %315 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %313, i64 %314)
  %316 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %317 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %318 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* %9, align 8
  %323 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %324 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %328 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %332 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %336 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %340 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @DP(i32 %316, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %320, i64 %321, i64 %322, i32 %326, i32 %330, i32 %334, i32 %338, i32 %342)
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i64 @bnx2x_get_cur_phy_idx(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_mf_speed(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_port_type(%struct.bnx2x*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i64) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
