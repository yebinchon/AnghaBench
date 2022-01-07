; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVRTSD_MSK_10G = common dso_local global i32 0, align 4
@ADVERTISED_1000baseKX_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i8* null, align 8
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i8* null, align 8
@PORT_DA = common dso_local global i8* null, align 8
@PORT_NONE = common dso_local global i8* null, align 8
@PORT_OTHER = common dso_local global i8* null, align 8
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_5000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ixgbe_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 1
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %9, i32 %18)
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.0*
  %27 = call i32 %24(%struct.ixgbe_hw.0* %26, i32* %7, i32* %8)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 171
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = call i32 @ixgbe_get_supported_10gtypes(%struct.ixgbe_hw* %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 169
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ixgbe_isbackplane(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %36
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 172
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 170
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 170
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %91 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 172
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 171
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ADVRTSD_MSK_10G, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 169
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @ADVERTISED_1000baseKX_Full, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %113
  br label %152

135:                                              ; preds = %71
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, 171
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %148, %144
  br label %151

151:                                              ; preds = %150, %141, %135
  br label %152

152:                                              ; preds = %151, %134
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* @AUTONEG_ENABLE, align 4
  %163 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %164 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 8
  br label %171

166:                                              ; preds = %152
  %167 = load i32, i32* @AUTONEG_DISABLE, align 4
  %168 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %169 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %155
  %172 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %173 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  switch i32 %176, label %274 [
    i32 146, label %177
    i32 163, label %177
    i32 144, label %177
    i32 161, label %177
    i32 162, label %177
    i32 154, label %188
    i32 159, label %199
    i32 150, label %199
    i32 149, label %199
    i32 152, label %199
    i32 153, label %199
    i32 151, label %199
    i32 148, label %199
    i32 156, label %199
    i32 158, label %199
    i32 157, label %199
    i32 155, label %199
    i32 143, label %262
    i32 145, label %273
    i32 160, label %273
    i32 147, label %273
  ]

177:                                              ; preds = %171, %171, %171, %171, %171
  %178 = load i32, i32* @SUPPORTED_TP, align 4
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* @ADVERTISED_TP, align 4
  %182 = load i32, i32* %10, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %10, align 4
  %184 = load i8*, i8** @PORT_TP, align 8
  %185 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %186 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  store i8* %184, i8** %187, align 8
  br label %285

188:                                              ; preds = %171
  %189 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load i8*, i8** @PORT_FIBRE, align 8
  %196 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %197 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 2
  store i8* %195, i8** %198, align 8
  br label %285

199:                                              ; preds = %171, %171, %171, %171, %171, %171, %171, %171, %171, %171, %171
  %200 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %201 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  switch i32 %204, label %250 [
    i32 136, label %205
    i32 135, label %205
    i32 134, label %205
    i32 131, label %216
    i32 133, label %216
    i32 130, label %216
    i32 129, label %216
    i32 138, label %216
    i32 137, label %216
    i32 140, label %216
    i32 139, label %216
    i32 132, label %227
    i32 142, label %238
    i32 141, label %238
    i32 128, label %249
  ]

205:                                              ; preds = %199, %199, %199
  %206 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %207 = load i32, i32* %9, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %210 = load i32, i32* %10, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %10, align 4
  %212 = load i8*, i8** @PORT_DA, align 8
  %213 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %214 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  store i8* %212, i8** %215, align 8
  br label %261

216:                                              ; preds = %199, %199, %199, %199, %199, %199, %199, %199
  %217 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %218 = load i32, i32* %9, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %221 = load i32, i32* %10, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %10, align 4
  %223 = load i8*, i8** @PORT_FIBRE, align 8
  %224 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %225 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  store i8* %223, i8** %226, align 8
  br label %261

227:                                              ; preds = %199
  %228 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %229 = load i32, i32* %9, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %232 = load i32, i32* %10, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %10, align 4
  %234 = load i8*, i8** @PORT_NONE, align 8
  %235 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %236 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  store i8* %234, i8** %237, align 8
  br label %261

238:                                              ; preds = %199, %199
  %239 = load i32, i32* @SUPPORTED_TP, align 4
  %240 = load i32, i32* %9, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* @ADVERTISED_TP, align 4
  %243 = load i32, i32* %10, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load i8*, i8** @PORT_TP, align 8
  %246 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %247 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  store i8* %245, i8** %248, align 8
  br label %261

249:                                              ; preds = %199
  br label %250

250:                                              ; preds = %199, %249
  %251 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %252 = load i32, i32* %9, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %255 = load i32, i32* %10, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %10, align 4
  %257 = load i8*, i8** @PORT_OTHER, align 8
  %258 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %259 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  store i8* %257, i8** %260, align 8
  br label %261

261:                                              ; preds = %250, %238, %227, %216, %205
  br label %285

262:                                              ; preds = %171
  %263 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %264 = load i32, i32* %9, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %267 = load i32, i32* %10, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %10, align 4
  %269 = load i8*, i8** @PORT_NONE, align 8
  %270 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %271 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  store i8* %269, i8** %272, align 8
  br label %285

273:                                              ; preds = %171, %171, %171
  br label %274

274:                                              ; preds = %171, %273
  %275 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %276 = load i32, i32* %9, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %279 = load i32, i32* %10, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %10, align 4
  %281 = load i8*, i8** @PORT_OTHER, align 8
  %282 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %283 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  store i8* %281, i8** %284, align 8
  br label %285

285:                                              ; preds = %274, %262, %261, %188, %177
  %286 = load i32, i32* @SUPPORTED_Pause, align 4
  %287 = load i32, i32* %9, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %9, align 4
  %289 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %290 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  switch i32 %292, label %307 [
    i32 166, label %293
    i32 165, label %297
    i32 164, label %303
  ]

293:                                              ; preds = %285
  %294 = load i32, i32* @ADVERTISED_Pause, align 4
  %295 = load i32, i32* %10, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %10, align 4
  br label %314

297:                                              ; preds = %285
  %298 = load i32, i32* @ADVERTISED_Pause, align 4
  %299 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* %10, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %10, align 4
  br label %314

303:                                              ; preds = %285
  %304 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %305 = load i32, i32* %10, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %10, align 4
  br label %314

307:                                              ; preds = %285
  %308 = load i32, i32* @ADVERTISED_Pause, align 4
  %309 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %310 = or i32 %308, %309
  %311 = xor i32 %310, -1
  %312 = load i32, i32* %10, align 4
  %313 = and i32 %312, %311
  store i32 %313, i32* %10, align 4
  br label %314

314:                                              ; preds = %307, %303, %297, %293
  %315 = load %struct.net_device*, %struct.net_device** %3, align 8
  %316 = call i64 @netif_carrier_ok(%struct.net_device* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %358

318:                                              ; preds = %314
  %319 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %320 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  switch i32 %321, label %352 [
    i32 171, label %322
    i32 167, label %327
    i32 168, label %332
    i32 169, label %337
    i32 172, label %342
    i32 170, label %347
  ]

322:                                              ; preds = %318
  %323 = load i32, i32* @SPEED_10000, align 4
  %324 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %325 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  store i32 %323, i32* %326, align 4
  br label %353

327:                                              ; preds = %318
  %328 = load i32, i32* @SPEED_5000, align 4
  %329 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %330 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  store i32 %328, i32* %331, align 4
  br label %353

332:                                              ; preds = %318
  %333 = load i32, i32* @SPEED_2500, align 4
  %334 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %335 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 1
  store i32 %333, i32* %336, align 4
  br label %353

337:                                              ; preds = %318
  %338 = load i32, i32* @SPEED_1000, align 4
  %339 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %340 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 1
  store i32 %338, i32* %341, align 4
  br label %353

342:                                              ; preds = %318
  %343 = load i32, i32* @SPEED_100, align 4
  %344 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %345 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  store i32 %343, i32* %346, align 4
  br label %353

347:                                              ; preds = %318
  %348 = load i32, i32* @SPEED_10, align 4
  %349 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %350 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  store i32 %348, i32* %351, align 4
  br label %353

352:                                              ; preds = %318
  br label %353

353:                                              ; preds = %352, %347, %342, %337, %332, %327, %322
  %354 = load i32, i32* @DUPLEX_FULL, align 4
  %355 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %356 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  store i32 %354, i32* %357, align 8
  br label %367

358:                                              ; preds = %314
  %359 = load i32, i32* @SPEED_UNKNOWN, align 4
  %360 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %361 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 1
  store i32 %359, i32* %362, align 4
  %363 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %364 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %365 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  store i32 %363, i32* %366, align 8
  br label %367

367:                                              ; preds = %358, %353
  %368 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %369 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %9, align 4
  %373 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %371, i32 %372)
  %374 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %375 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %10, align 4
  %379 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %377, i32 %378)
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @ixgbe_get_supported_10gtypes(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_isbackplane(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
