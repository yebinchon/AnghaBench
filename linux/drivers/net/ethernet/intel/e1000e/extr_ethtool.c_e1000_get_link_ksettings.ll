; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i8*, i32, i64, i32, i32 }
%struct.e1000_adapter = type { i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@e1000_phy_ife = common dso_local global i64 0, align 8
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i8* null, align 8
@ETH_TP_MDI = common dso_local global i8* null, align 8
@ETH_TP_MDI_INVALID = common dso_local global i8* null, align 8
@AUTO_ALL_MODES = common dso_local global i64 0, align 8
@ETH_TP_MDI_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @e1000_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %5, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 2
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_media_type_copper, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %2
  %22 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %23 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SUPPORTED_TP, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e1000_phy_ife, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %21
  %42 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %21
  %47 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %53, %46
  %64 = load i32, i32* @PORT_TP, align 4
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  store i32 %64, i32* %67, align 8
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 4
  br label %90

75:                                               ; preds = %2
  %76 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %77 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %82 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @PORT_FIBRE, align 4
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 8
  br label %90

90:                                               ; preds = %75, %63
  %91 = load i32, i32* @SPEED_UNKNOWN, align 4
  store i32 %91, i32* %7, align 4
  %92 = load i64, i64* @DUPLEX_UNKNOWN, align 8
  %93 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %94 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i64 %92, i64* %95, align 8
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i64 @netif_running(%struct.net_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %90
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = call i64 @netif_carrier_ok(%struct.net_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %105 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %7, align 4
  %107 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  %111 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %103, %99
  br label %164

115:                                              ; preds = %90
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pm_runtime_suspended(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %163, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @STATUS, align 4
  %124 = call i32 @er32(i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @E1000_STATUS_LU, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %162

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @SPEED_1000, align 4
  store i32 %135, i32* %7, align 4
  br label %146

136:                                              ; preds = %129
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @SPEED_100, align 4
  store i32 %142, i32* %7, align 4
  br label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @SPEED_10, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %134
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @E1000_STATUS_FD, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i64, i64* @DUPLEX_FULL, align 8
  %153 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %154 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  store i64 %152, i64* %155, align 8
  br label %161

156:                                              ; preds = %146
  %157 = load i64, i64* @DUPLEX_HALF, align 8
  %158 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %159 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 4
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161, %122
  br label %163

163:                                              ; preds = %162, %115
  br label %164

164:                                              ; preds = %163, %114
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %167 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %170 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @e1000_media_type_fiber, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %164
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %177 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175, %164
  %182 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %185

183:                                              ; preds = %175
  %184 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %188 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 3
  store i32 %186, i32* %189, align 8
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @e1000_media_type_copper, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %215

196:                                              ; preds = %185
  %197 = load %struct.net_device*, %struct.net_device** %3, align 8
  %198 = call i64 @netif_carrier_ok(%struct.net_device* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %202 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i8*, i8** @ETH_TP_MDI_X, align 8
  br label %210

208:                                              ; preds = %200
  %209 = load i8*, i8** @ETH_TP_MDI, align 8
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i8* [ %207, %206 ], [ %209, %208 ]
  %212 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %213 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  store i8* %211, i8** %214, align 8
  br label %220

215:                                              ; preds = %196, %185
  %216 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %217 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %218 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  store i8* %216, i8** %219, align 8
  br label %220

220:                                              ; preds = %215, %210
  %221 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %222 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @AUTO_ALL_MODES, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load i64, i64* @ETH_TP_MDI_AUTO, align 8
  %229 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %230 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  store i64 %228, i64* %231, align 8
  br label %240

232:                                              ; preds = %220
  %233 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %234 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %238 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i64 %236, i64* %239, align 8
  br label %240

240:                                              ; preds = %232, %227
  %241 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %242 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @e1000_media_type_copper, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %249 = ptrtoint i8* %248 to i64
  %250 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %251 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  store i64 %249, i64* %252, align 8
  br label %253

253:                                              ; preds = %247, %240
  %254 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %255 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %257, i32 %258)
  %260 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %261 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %263, i32 %264)
  ret i32 0
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_suspended(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
