; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_set_power_per_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_set_power_per_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { i32*, i32* }
%struct.ath9k_channel = type { i64 }
%struct.ath_common = type { i32 }
%struct.chan_centers = type { i64, i64, i64 }

@ar9003_hw_set_power_per_rate_table.ctlModesFor11a = internal constant [4 x i64] [i64 137, i64 129, i64 136, i64 128], align 16
@ar9003_hw_set_power_per_rate_table.ctlModesFor11g = internal constant [6 x i64] [i64 135, i64 133, i64 131, i64 134, i64 132, i64 130], align 16
@SUB_NUM_CTL_MODES_AT_2G_40 = common dso_local global i64 0, align 8
@SUB_NUM_CTL_MODES_AT_5G_40 = common dso_local global i64 0, align 8
@EXT_ADDITIVE = common dso_local global i64 0, align 8
@REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"LOOP-Mode ctlMode %d < %d, isHt40CtlMode %d, EXT_ADDITIVE %d\0A\00", align 1
@AR9300_NUM_CTLS_2G = common dso_local global i32 0, align 4
@AR9300_NUM_CTLS_5G = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"LOOP-Ctlidx %d: cfgCtl 0x%2.2x pCtlMode 0x%2.2x ctlIndex 0x%2.2x chan %d\0A\00", align 1
@CTL_MODE_M = common dso_local global i64 0, align 8
@SD_NO_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"SEL-Min ctlMode %d pCtlMode %d 2xMaxEdge %d sP %d minCtlPwr %d\0A\00", align 1
@ALL_TARGET_LEGACY_1L_5L = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_11S = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_6_24 = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_54 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_0_8_16 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_23 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_0_8_16 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32*, i64, i32, i64)* @ar9003_hw_set_power_per_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_set_power_per_rate_table(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca %struct.ar9300_eeprom*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.chan_centers, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %29 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %30 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %29)
  store %struct.ath_common* %30, %struct.ath_common** %13, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.ar9300_eeprom* %33, %struct.ar9300_eeprom** %14, align 8
  store i64 0, i64* %17, align 8
  %34 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %35 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %34)
  store i32 %35, i32* %27, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %37 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %38 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %36, %struct.ath9k_channel* %37, %struct.chan_centers* %23)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @ath9k_hw_get_scaled_power(%struct.ath_hw* %39, i64 %40, i32 %41)
  store i64 %42, i64* %17, align 8
  %43 = load i32, i32* %27, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %6
  %46 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([6 x i64], [6 x i64]* @ar9003_hw_set_power_per_rate_table.ctlModesFor11g, i64 0, i64 0))
  %47 = load i64, i64* @SUB_NUM_CTL_MODES_AT_2G_40, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %19, align 8
  store i64* getelementptr inbounds ([6 x i64], [6 x i64]* @ar9003_hw_set_power_per_rate_table.ctlModesFor11g, i64 0, i64 0), i64** %20, align 8
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %50 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([6 x i64], [6 x i64]* @ar9003_hw_set_power_per_rate_table.ctlModesFor11g, i64 0, i64 0))
  store i64 %53, i64* %19, align 8
  br label %54

54:                                               ; preds = %52, %45
  br label %65

55:                                               ; preds = %6
  %56 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([4 x i64], [4 x i64]* @ar9003_hw_set_power_per_rate_table.ctlModesFor11a, i64 0, i64 0))
  %57 = load i64, i64* @SUB_NUM_CTL_MODES_AT_5G_40, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %19, align 8
  store i64* getelementptr inbounds ([4 x i64], [4 x i64]* @ar9003_hw_set_power_per_rate_table.ctlModesFor11a, i64 0, i64 0), i64** %20, align 8
  %59 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %60 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([4 x i64], [4 x i64]* @ar9003_hw_set_power_per_rate_table.ctlModesFor11a, i64 0, i64 0))
  store i64 %63, i64* %19, align 8
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %54
  store i64 0, i64* %21, align 8
  br label %66

66:                                               ; preds = %397, %65
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* %19, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %400

70:                                               ; preds = %66
  %71 = load i64*, i64** %20, align 8
  %72 = load i64, i64* %21, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 128
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i64*, i64** %20, align 8
  %78 = load i64, i64* %21, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 130
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ true, %70 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %28, align 4
  %85 = load i32, i32* %28, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %23, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %22, align 8
  br label %105

90:                                               ; preds = %82
  %91 = load i64*, i64** %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @EXT_ADDITIVE, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %23, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %22, align 8
  br label %104

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %23, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %22, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %107 = load i32, i32* @REGULATORY, align 4
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i32, i32* %28, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %20, align 8
  %113 = load i64, i64* %21, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @EXT_ADDITIVE, align 8
  %117 = and i64 %115, %116
  %118 = call i32 (%struct.ath_common*, i32, i8*, i64, i64, i64, i64, ...) @ath_dbg(%struct.ath_common* %106, i32 %107, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %109, i64 %111, i64 %117)
  %119 = load i32, i32* %27, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %105
  %122 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %123 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %24, align 8
  %125 = load i32, i32* @AR9300_NUM_CTLS_2G, align 4
  store i32 %125, i32* %25, align 4
  br label %131

126:                                              ; preds = %105
  %127 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %128 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %24, align 8
  %130 = load i32, i32* @AR9300_NUM_CTLS_5G, align 4
  store i32 %130, i32* %25, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i64, i64* @MAX_RATE_POWER, align 8
  store i64 %132, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %229, %131
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %25, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32*, i32** %24, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %137, %133
  %145 = phi i1 [ false, %133 ], [ %143, %137 ]
  br i1 %145, label %146, label %232

146:                                              ; preds = %144
  %147 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %148 = load i32, i32* @REGULATORY, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %10, align 8
  %152 = load i64*, i64** %20, align 8
  %153 = load i64, i64* %21, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i32*, i32** %24, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %163 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (%struct.ath_common*, i32, i8*, i64, i64, i64, i64, ...) @ath_dbg(%struct.ath_common* %147, i32 %148, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %150, i64 %151, i64 %155, i64 %161, i64 %164)
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* @CTL_MODE_M, align 8
  %168 = xor i64 %167, -1
  %169 = and i64 %166, %168
  %170 = load i64*, i64** %20, align 8
  %171 = load i64, i64* %21, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @CTL_MODE_M, align 8
  %175 = and i64 %173, %174
  %176 = or i64 %169, %175
  %177 = load i32*, i32** %24, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp eq i64 %176, %182
  br i1 %183, label %208, label %184

184:                                              ; preds = %146
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* @CTL_MODE_M, align 8
  %187 = xor i64 %186, -1
  %188 = and i64 %185, %187
  %189 = load i64*, i64** %20, align 8
  %190 = load i64, i64* %21, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CTL_MODE_M, align 8
  %194 = and i64 %192, %193
  %195 = or i64 %188, %194
  %196 = load i32*, i32** %24, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* @CTL_MODE_M, align 8
  %203 = and i64 %201, %202
  %204 = load i32, i32* @SD_NO_CTL, align 4
  %205 = sext i32 %204 to i64
  %206 = or i64 %203, %205
  %207 = icmp eq i64 %195, %206
  br i1 %207, label %208, label %228

208:                                              ; preds = %184, %146
  %209 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %210 = load i64, i64* %22, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %27, align 4
  %213 = call i64 @ar9003_hw_get_max_edge_power(%struct.ar9300_eeprom* %209, i64 %210, i32 %211, i32 %212)
  store i64 %213, i64* %26, align 8
  %214 = load i64, i64* %10, align 8
  %215 = load i64, i64* @CTL_MODE_M, align 8
  %216 = xor i64 %215, -1
  %217 = and i64 %214, %216
  %218 = load i32, i32* @SD_NO_CTL, align 4
  %219 = sext i32 %218 to i64
  %220 = icmp eq i64 %217, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %208
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* %26, align 8
  %224 = call i64 @min(i64 %222, i64 %223)
  store i64 %224, i64* %15, align 8
  br label %227

225:                                              ; preds = %208
  %226 = load i64, i64* %26, align 8
  store i64 %226, i64* %15, align 8
  br label %232

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %184
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %133

232:                                              ; preds = %225, %144
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* %17, align 8
  %235 = call i64 @min(i64 %233, i64 %234)
  %236 = trunc i64 %235 to i32
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %18, align 8
  %238 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %239 = load i32, i32* @REGULATORY, align 4
  %240 = load i64, i64* %21, align 8
  %241 = load i64*, i64** %20, align 8
  %242 = load i64, i64* %21, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load i64, i64* %17, align 8
  %247 = load i64, i64* %18, align 8
  %248 = call i32 (%struct.ath_common*, i32, i8*, i64, i64, i64, i64, ...) @ath_dbg(%struct.ath_common* %238, i32 %239, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %240, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64*, i64** %20, align 8
  %250 = load i64, i64* %21, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  %252 = load i64, i64* %251, align 8
  switch i64 %252, label %395 [
    i64 135, label %253
    i64 137, label %277
    i64 133, label %277
    i64 129, label %301
    i64 131, label %301
    i64 128, label %348
    i64 130, label %348
  ]

253:                                              ; preds = %232
  %254 = load i32, i32* @ALL_TARGET_LEGACY_1L_5L, align 4
  store i32 %254, i32* %16, align 4
  br label %255

255:                                              ; preds = %273, %253
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* @ALL_TARGET_LEGACY_11S, align 4
  %258 = icmp sle i32 %256, %257
  br i1 %258, label %259, label %276

259:                                              ; preds = %255
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %18, align 8
  %267 = call i64 @min(i64 %265, i64 %266)
  %268 = trunc i64 %267 to i32
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  br label %273

273:                                              ; preds = %259
  %274 = load i32, i32* %16, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %16, align 4
  br label %255

276:                                              ; preds = %255
  br label %396

277:                                              ; preds = %232, %232
  %278 = load i32, i32* @ALL_TARGET_LEGACY_6_24, align 4
  store i32 %278, i32* %16, align 4
  br label %279

279:                                              ; preds = %297, %277
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* @ALL_TARGET_LEGACY_54, align 4
  %282 = icmp sle i32 %280, %281
  br i1 %282, label %283, label %300

283:                                              ; preds = %279
  %284 = load i32*, i32** %9, align 8
  %285 = load i32, i32* %16, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* %18, align 8
  %291 = call i64 @min(i64 %289, i64 %290)
  %292 = trunc i64 %291 to i32
  %293 = load i32*, i32** %9, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %292, i32* %296, align 4
  br label %297

297:                                              ; preds = %283
  %298 = load i32, i32* %16, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %16, align 4
  br label %279

300:                                              ; preds = %279
  br label %396

301:                                              ; preds = %232, %232
  %302 = load i32, i32* @ALL_TARGET_HT20_0_8_16, align 4
  store i32 %302, i32* %16, align 4
  br label %303

303:                                              ; preds = %344, %301
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* @ALL_TARGET_HT20_23, align 4
  %306 = icmp sle i32 %304, %305
  br i1 %306, label %307, label %347

307:                                              ; preds = %303
  %308 = load i32*, i32** %9, align 8
  %309 = load i32, i32* %16, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = load i64, i64* %18, align 8
  %315 = call i64 @min(i64 %313, i64 %314)
  %316 = trunc i64 %315 to i32
  %317 = load i32*, i32** %9, align 8
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %316, i32* %320, align 4
  %321 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %322 = call i32 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %343

324:                                              ; preds = %307
  %325 = load i32*, i32** %9, align 8
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %332 = load i64*, i64** %20, align 8
  %333 = load i64, i64* %21, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = call i64 @ar9003_mci_get_max_txpower(%struct.ath_hw* %331, i64 %335)
  %337 = call i64 @min(i64 %330, i64 %336)
  %338 = trunc i64 %337 to i32
  %339 = load i32*, i32** %9, align 8
  %340 = load i32, i32* %16, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 %338, i32* %342, align 4
  br label %343

343:                                              ; preds = %324, %307
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %16, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %16, align 4
  br label %303

347:                                              ; preds = %303
  br label %396

348:                                              ; preds = %232, %232
  %349 = load i32, i32* @ALL_TARGET_HT40_0_8_16, align 4
  store i32 %349, i32* %16, align 4
  br label %350

350:                                              ; preds = %391, %348
  %351 = load i32, i32* %16, align 4
  %352 = load i32, i32* @ALL_TARGET_HT40_23, align 4
  %353 = icmp sle i32 %351, %352
  br i1 %353, label %354, label %394

354:                                              ; preds = %350
  %355 = load i32*, i32** %9, align 8
  %356 = load i32, i32* %16, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = load i64, i64* %18, align 8
  %362 = call i64 @min(i64 %360, i64 %361)
  %363 = trunc i64 %362 to i32
  %364 = load i32*, i32** %9, align 8
  %365 = load i32, i32* %16, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 %363, i32* %367, align 4
  %368 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %369 = call i32 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %390

371:                                              ; preds = %354
  %372 = load i32*, i32** %9, align 8
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %379 = load i64*, i64** %20, align 8
  %380 = load i64, i64* %21, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = call i64 @ar9003_mci_get_max_txpower(%struct.ath_hw* %378, i64 %382)
  %384 = call i64 @min(i64 %377, i64 %383)
  %385 = trunc i64 %384 to i32
  %386 = load i32*, i32** %9, align 8
  %387 = load i32, i32* %16, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  store i32 %385, i32* %389, align 4
  br label %390

390:                                              ; preds = %371, %354
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %16, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %16, align 4
  br label %350

394:                                              ; preds = %350
  br label %396

395:                                              ; preds = %232
  br label %396

396:                                              ; preds = %395, %394, %347, %300, %276
  br label %397

397:                                              ; preds = %396
  %398 = load i64, i64* %21, align 8
  %399 = add i64 %398, 1
  store i64 %399, i64* %21, align 8
  br label %66

400:                                              ; preds = %66
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i64 @ath9k_hw_get_scaled_power(%struct.ath_hw*, i64, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @ar9003_hw_get_max_edge_power(%struct.ar9300_eeprom*, i64, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i64 @ar9003_mci_get_max_txpower(%struct.ath_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
