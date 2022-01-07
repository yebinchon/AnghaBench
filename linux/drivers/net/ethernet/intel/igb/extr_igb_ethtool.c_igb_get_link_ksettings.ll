; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { %struct.e1000_sfp_flags }
%struct.e1000_sfp_flags = type { i64 }

@E1000_STATUS = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@e1000_i354 = common dso_local global i64 0, align 8
@E1000_DEV_ID_I354_BACKPLANE_2_5GBPS = common dso_local global i64 0, align 8
@E1000_STATUS_2P5_SKU_OVER = common dso_local global i32 0, align 4
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i32 0, align 4
@ETH_TP_MDI = common dso_local global i32 0, align 4
@ETH_TP_MDI_INVALID = common dso_local global i32 0, align 4
@AUTO_ALL_MODES = common dso_local global i64 0, align 8
@ETH_TP_MDI_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @igb_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.e1000_dev_spec_82575*, align 8
  %8 = alloca %struct.e1000_sfp_flags*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.igb_adapter* %14, %struct.igb_adapter** %5, align 8
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  store %struct.e1000_hw* %16, %struct.e1000_hw** %6, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %19, %struct.e1000_dev_spec_82575** %7, align 8
  %20 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %7, align 8
  %21 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %20, i32 0, i32 0
  store %struct.e1000_sfp_flags* %21, %struct.e1000_sfp_flags** %8, align 8
  %22 = load i32, i32* @E1000_STATUS, align 4
  %23 = call i32 @rd32(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_media_type_copper, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %2
  %31 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %32 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SUPPORTED_TP, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SUPPORTED_Pause, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %30
  %53 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %52, %30
  %63 = load i32, i32* @PORT_TP, align 4
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 8
  br label %145

74:                                               ; preds = %2
  %75 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %76 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SUPPORTED_Pause, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %83 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %12, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @e1000_i354, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %74
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @E1000_DEV_ID_I354_BACKPLANE_2_5GBPS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @E1000_STATUS_2P5_SKU_OVER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %102, %97, %91
  br label %118

118:                                              ; preds = %117, %74
  %119 = load %struct.e1000_sfp_flags*, %struct.e1000_sfp_flags** %8, align 8
  %120 = getelementptr inbounds %struct.e1000_sfp_flags, %struct.e1000_sfp_flags* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %123, %118
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %132 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %136, %130
  %141 = load i32, i32* @PORT_FIBRE, align 4
  %142 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %143 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 5
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %62
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load i32, i32* @ADVERTISED_Pause, align 4
  %153 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %12, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %151, %145
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  switch i32 %162, label %177 [
    i32 130, label %163
    i32 129, label %167
    i32 128, label %173
  ]

163:                                              ; preds = %158
  %164 = load i32, i32* @ADVERTISED_Pause, align 4
  %165 = load i32, i32* %12, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %12, align 4
  br label %184

167:                                              ; preds = %158
  %168 = load i32, i32* @ADVERTISED_Pause, align 4
  %169 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %184

173:                                              ; preds = %158
  %174 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %175 = load i32, i32* %12, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %184

177:                                              ; preds = %158
  %178 = load i32, i32* @ADVERTISED_Pause, align 4
  %179 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %12, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %177, %173, %167, %163
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @E1000_STATUS_LU, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %242

189:                                              ; preds = %184
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @E1000_STATUS_2P5_SKU, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @E1000_STATUS_2P5_SKU_OVER, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* @SPEED_2500, align 4
  store i32 %200, i32* %10, align 4
  br label %219

201:                                              ; preds = %194, %189
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @SPEED_1000, align 4
  store i32 %207, i32* %10, align 4
  br label %218

208:                                              ; preds = %201
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @SPEED_100, align 4
  store i32 %214, i32* %10, align 4
  br label %217

215:                                              ; preds = %208
  %216 = load i32, i32* @SPEED_10, align 4
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %215, %213
  br label %218

218:                                              ; preds = %217, %206
  br label %219

219:                                              ; preds = %218, %199
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @E1000_STATUS_FD, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %219
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %226 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @e1000_media_type_copper, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %224, %219
  %232 = load i32, i32* @DUPLEX_FULL, align 4
  %233 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %234 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 4
  store i32 %232, i32* %235, align 8
  br label %241

236:                                              ; preds = %224
  %237 = load i32, i32* @DUPLEX_HALF, align 4
  %238 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %239 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 4
  store i32 %237, i32* %240, align 8
  br label %241

241:                                              ; preds = %236, %231
  br label %248

242:                                              ; preds = %184
  %243 = load i32, i32* @SPEED_UNKNOWN, align 4
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %245 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %246 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 4
  store i32 %244, i32* %247, align 8
  br label %248

248:                                              ; preds = %242, %241
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %251 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  %253 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %254 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @e1000_media_type_fiber, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %265, label %259

259:                                              ; preds = %248
  %260 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %261 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %259, %248
  %266 = load i32, i32* @AUTONEG_ENABLE, align 4
  %267 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %268 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 3
  store i32 %266, i32* %269, align 4
  br label %275

270:                                              ; preds = %259
  %271 = load i32, i32* @AUTONEG_DISABLE, align 4
  %272 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %273 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  store i32 %271, i32* %274, align 4
  br label %275

275:                                              ; preds = %270, %265
  %276 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %277 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @e1000_media_type_copper, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %297

282:                                              ; preds = %275
  %283 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %284 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i32, i32* @ETH_TP_MDI_X, align 4
  br label %292

290:                                              ; preds = %282
  %291 = load i32, i32* @ETH_TP_MDI, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %294 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %295 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  store i32 %293, i32* %296, align 8
  br label %302

297:                                              ; preds = %275
  %298 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %299 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %300 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 2
  store i32 %298, i32* %301, align 8
  br label %302

302:                                              ; preds = %297, %292
  %303 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %304 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @AUTO_ALL_MODES, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %302
  %310 = load i64, i64* @ETH_TP_MDI_AUTO, align 8
  %311 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %312 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  store i64 %310, i64* %313, align 8
  br label %322

314:                                              ; preds = %302
  %315 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %316 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %320 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  store i64 %318, i64* %321, align 8
  br label %322

322:                                              ; preds = %314, %309
  %323 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %324 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %11, align 4
  %328 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %326, i32 %327)
  %329 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %330 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %12, align 4
  %334 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %332, i32 %333)
  ret i32 0
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
