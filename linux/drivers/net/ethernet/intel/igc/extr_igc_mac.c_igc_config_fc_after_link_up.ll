; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_config_fc_after_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_config_fc_after_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.TYPE_8__, %struct.igc_mac_info, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i8*, i64 }
%struct.igc_mac_info = type { %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i64 (%struct.igc_hw.0*, i64*, i64*)* }
%struct.igc_hw.0 = type opaque
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.igc_hw.1*, i32, i64*)* }
%struct.igc_hw.1 = type opaque

@igc_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error forcing flow control settings\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", align 1
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i64 0, align 8
@NWAY_LPAR_PAUSE = common dso_local global i64 0, align 8
@igc_fc_full = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@igc_fc_rx_pause = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i64 0, align 8
@NWAY_LPAR_ASM_DIR = common dso_local global i64 0, align 8
@igc_fc_tx_pause = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", align 1
@igc_fc_none = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igc_config_fc_after_link_up(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.igc_mac_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %10 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %11 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %10, i32 0, i32 1
  store %struct.igc_mac_info* %11, %struct.igc_mac_info** %6, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.igc_mac_info*, %struct.igc_mac_info** %6, align 8
  %13 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %18 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @igc_media_type_copper, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %25 = call i64 @igc_force_mac_fc(%struct.igc_hw* %24)
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %23, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %255

32:                                               ; preds = %27
  %33 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %34 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @igc_media_type_copper, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %254

39:                                               ; preds = %32
  %40 = load %struct.igc_mac_info*, %struct.igc_mac_info** %6, align 8
  %41 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %254

44:                                               ; preds = %39
  %45 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %46 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64 (%struct.igc_hw.1*, i32, i64*)*, i64 (%struct.igc_hw.1*, i32, i64*)** %48, align 8
  %50 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %51 = bitcast %struct.igc_hw* %50 to %struct.igc_hw.1*
  %52 = load i32, i32* @PHY_STATUS, align 4
  %53 = call i64 %49(%struct.igc_hw.1* %51, i32 %52, i64* %3)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %255

57:                                               ; preds = %44
  %58 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %59 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64 (%struct.igc_hw.1*, i32, i64*)*, i64 (%struct.igc_hw.1*, i32, i64*)** %61, align 8
  %63 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %64 = bitcast %struct.igc_hw* %63 to %struct.igc_hw.1*
  %65 = load i32, i32* @PHY_STATUS, align 4
  %66 = call i64 %62(%struct.igc_hw.1* %64, i32 %65, i64* %3)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %255

70:                                               ; preds = %57
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @MII_SR_AUTONEG_COMPLETE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = call i32 @hw_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %255

77:                                               ; preds = %70
  %78 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %79 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64 (%struct.igc_hw.1*, i32, i64*)*, i64 (%struct.igc_hw.1*, i32, i64*)** %81, align 8
  %83 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %84 = bitcast %struct.igc_hw* %83 to %struct.igc_hw.1*
  %85 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %86 = call i64 %82(%struct.igc_hw.1* %84, i32 %85, i64* %4)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %255

90:                                               ; preds = %77
  %91 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %92 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64 (%struct.igc_hw.1*, i32, i64*)*, i64 (%struct.igc_hw.1*, i32, i64*)** %94, align 8
  %96 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %97 = bitcast %struct.igc_hw* %96 to %struct.igc_hw.1*
  %98 = load i32, i32* @PHY_LP_ABILITY, align 4
  %99 = call i64 %95(%struct.igc_hw.1* %97, i32 %98, i64* %5)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %255

103:                                              ; preds = %90
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %103
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %115 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @igc_fc_full, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i64, i64* @igc_fc_full, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %124 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %133

127:                                              ; preds = %113
  %128 = load i8*, i8** @igc_fc_rx_pause, align 8
  %129 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %130 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  %132 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %127, %120
  br label %223

134:                                              ; preds = %108, %103
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %161, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* @NWAY_AR_ASM_DIR, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @NWAY_LPAR_ASM_DIR, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i64, i64* @igc_fc_tx_pause, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %158 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %222

161:                                              ; preds = %149, %144, %139, %134
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* @NWAY_AR_ASM_DIR, align 8
  %169 = and i64 %167, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %174 = and i64 %172, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %171
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* @NWAY_LPAR_ASM_DIR, align 8
  %179 = and i64 %177, %178
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i8*, i8** @igc_fc_rx_pause, align 8
  %183 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %184 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %221

187:                                              ; preds = %176, %171, %166, %161
  %188 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %189 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @igc_fc_none, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %207, label %194

194:                                              ; preds = %187
  %195 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %196 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @igc_fc_tx_pause, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %194
  %202 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %203 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201, %194, %187
  %208 = load i64, i64* @igc_fc_none, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %211 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store i8* %209, i8** %212, align 8
  %213 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %220

214:                                              ; preds = %201
  %215 = load i8*, i8** @igc_fc_rx_pause, align 8
  %216 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %217 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i8* %215, i8** %218, align 8
  %219 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %220

220:                                              ; preds = %214, %207
  br label %221

221:                                              ; preds = %220, %181
  br label %222

222:                                              ; preds = %221, %154
  br label %223

223:                                              ; preds = %222, %133
  %224 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %225 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.igc_mac_info, %struct.igc_mac_info* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i64 (%struct.igc_hw.0*, i64*, i64*)*, i64 (%struct.igc_hw.0*, i64*, i64*)** %227, align 8
  %229 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %230 = bitcast %struct.igc_hw* %229 to %struct.igc_hw.0*
  %231 = call i64 %228(%struct.igc_hw.0* %230, i64* %7, i64* %8)
  store i64 %231, i64* %9, align 8
  %232 = load i64, i64* %9, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %223
  %235 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %255

236:                                              ; preds = %223
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* @HALF_DUPLEX, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load i64, i64* @igc_fc_none, align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %244 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  store i8* %242, i8** %245, align 8
  br label %246

246:                                              ; preds = %240, %236
  %247 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %248 = call i64 @igc_force_mac_fc(%struct.igc_hw* %247)
  store i64 %248, i64* %9, align 8
  %249 = load i64, i64* %9, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %255

253:                                              ; preds = %246
  br label %254

254:                                              ; preds = %253, %39, %32
  br label %255

255:                                              ; preds = %254, %251, %234, %102, %89, %75, %69, %56, %30
  ret i64 0
}

declare dso_local i64 @igc_force_mac_fc(%struct.igc_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
