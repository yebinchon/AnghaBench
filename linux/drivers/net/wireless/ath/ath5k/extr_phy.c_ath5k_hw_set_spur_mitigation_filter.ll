; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_spur_mitigation_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_set_spur_mitigation_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32** }
%struct.ieee80211_channel = type { i64, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_EEPROM_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_EEPROM_BAND_5GHZ = common dso_local global i64 0, align 8
@AR5K_EEPROM_NO_SPUR = common dso_local global i32 0, align 4
@AR5K_SPUR_CHAN_WIDTH = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_SPUR_CHANS = common dso_local global i64 0, align 8
@AR5K_EEPROM_SPUR_CHAN_MASK = common dso_local global i32 0, align 4
@AR5K_SPUR_SYMBOL_WIDTH_BASE_100Hz = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@AR5K_PHY_BIN_MASK_CTL = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK_CTL_RATE = common dso_local global i32 0, align 4
@AR5K_PHY_IQ = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_PILOT_MASK_EN = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CHAN_MASK_EN = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_SPUR_FILT_EN = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_11_USE_SPUR_IN_AGC = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_11 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_7 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_8 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_8_PILOT_MASK_2 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_9 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_10 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_10_PILOT_MASK_2 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK_1 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK_2 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK_3 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK_CTL_MASK_4 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK2_1 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK2_2 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK2_3 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK2_4 = common dso_local global i32 0, align 4
@AR5K_PHY_BIN_MASK2_4_MASK_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_set_spur_mitigation_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_set_spur_mitigation_filter(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ath5k_eeprom_info*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %23, %struct.ath5k_eeprom_info** %5, align 8
  %24 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 16, i1 false)
  %25 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 2300
  %36 = mul nsw i32 %35, 10
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* @AR5K_EEPROM_BAND_2GHZ, align 8
  store i64 %37, i64* %18, align 8
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 4900
  %43 = mul nsw i32 %42, 10
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* @AR5K_EEPROM_BAND_5GHZ, align 8
  store i64 %44, i64* %18, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @AR5K_EEPROM_NO_SPUR, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @AR5K_SPUR_CHAN_WIDTH, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 129
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %45
  store i64 0, i64* %17, align 8
  br label %56

56:                                               ; preds = %98, %55
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @AR5K_EEPROM_N_SPUR_CHANS, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %56
  %61 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %62 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* %17, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %18, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @AR5K_EEPROM_NO_SPUR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i32, i32* @AR5K_EEPROM_SPUR_CHAN_MASK, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %101

77:                                               ; preds = %60
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @AR5K_EEPROM_SPUR_CHAN_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @AR5K_EEPROM_SPUR_CHAN_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @AR5K_EEPROM_SPUR_CHAN_MASK, align 4
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %101

97:                                               ; preds = %85, %77
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %17, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %17, align 8
  br label %56

101:                                              ; preds = %93, %73, %56
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %401

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %14, align 4
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %109 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %135 [
    i32 129, label %111
    i32 130, label %119
    i32 128, label %127
  ]

111:                                              ; preds = %104
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 %112, 16
  %114 = sdiv i32 %113, 25
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = ashr i32 %115, 10
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* @AR5K_SPUR_SYMBOL_WIDTH_BASE_100Hz, align 4
  %118 = mul nsw i32 %117, 2
  store i32 %118, i32* %10, align 4
  br label %157

119:                                              ; preds = %104
  %120 = load i32, i32* %14, align 4
  %121 = shl i32 %120, 18
  %122 = sdiv i32 %121, 25
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = ashr i32 %123, 10
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* @AR5K_SPUR_SYMBOL_WIDTH_BASE_100Hz, align 4
  %126 = sdiv i32 %125, 2
  store i32 %126, i32* %10, align 4
  br label %157

127:                                              ; preds = %104
  %128 = load i32, i32* %14, align 4
  %129 = shl i32 %128, 19
  %130 = sdiv i32 %129, 25
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 10
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @AR5K_SPUR_SYMBOL_WIDTH_BASE_100Hz, align 4
  %134 = sdiv i32 %133, 4
  store i32 %134, i32* %10, align 4
  br label %157

135:                                              ; preds = %104
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i32, i32* %14, align 4
  %143 = shl i32 %142, 17
  %144 = sdiv i32 %143, 25
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = ashr i32 %145, 10
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* @AR5K_SPUR_SYMBOL_WIDTH_BASE_100Hz, align 4
  store i32 %147, i32* %10, align 4
  br label %156

148:                                              ; preds = %135
  %149 = load i32, i32* %14, align 4
  %150 = shl i32 %149, 17
  %151 = sdiv i32 %150, 25
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %14, align 4
  %153 = shl i32 %152, 8
  %154 = sdiv i32 %153, 55
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* @AR5K_SPUR_SYMBOL_WIDTH_BASE_100Hz, align 4
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %148, %141
  br label %157

157:                                              ; preds = %156, %127, %119, %111
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %158, 1000
  %160 = shl i32 %159, 4
  %161 = load i32, i32* %10, align 4
  %162 = sdiv i32 %160, %161
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = and i32 %163, 15
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  store i64 3, i64* %16, align 8
  br label %168

167:                                              ; preds = %157
  store i64 4, i64* %16, align 8
  br label %168

168:                                              ; preds = %167, %166
  store i64 0, i64* %17, align 8
  br label %169

169:                                              ; preds = %309, %168
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %16, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %312

173:                                              ; preds = %169
  %174 = load i32, i32* %15, align 4
  %175 = sdiv i32 %174, 16
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %17, align 8
  %178 = add i64 %176, %177
  %179 = add i64 %178, 25
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %19, align 4
  %181 = load i64, i64* %17, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %173
  %184 = load i64, i64* %17, align 8
  %185 = load i64, i64* %16, align 8
  %186 = sub i64 %185, 1
  %187 = icmp eq i64 %184, %186
  br label %188

188:                                              ; preds = %183, %173
  %189 = phi i1 [ true, %173 ], [ %187, %183 ]
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 2
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %20, align 8
  %193 = load i32, i32* %19, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %219

195:                                              ; preds = %188
  %196 = load i32, i32* %19, align 4
  %197 = icmp sle i32 %196, 32
  br i1 %197, label %198, label %219

198:                                              ; preds = %195
  %199 = load i32, i32* %19, align 4
  %200 = icmp sle i32 %199, 25
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i32, i32* %19, align 4
  %203 = shl i32 1, %202
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  br label %218

207:                                              ; preds = %198
  %208 = load i32, i32* %19, align 4
  %209 = icmp sge i32 %208, 27
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %19, align 4
  %212 = sub nsw i32 %211, 1
  %213 = shl i32 1, %212
  %214 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %210, %207
  br label %218

218:                                              ; preds = %217, %201
  br label %233

219:                                              ; preds = %195, %188
  %220 = load i32, i32* %19, align 4
  %221 = icmp sge i32 %220, 33
  br i1 %221, label %222, label %232

222:                                              ; preds = %219
  %223 = load i32, i32* %19, align 4
  %224 = icmp sle i32 %223, 52
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %226, 33
  %228 = shl i32 1, %227
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %228
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %225, %222, %219
  br label %233

233:                                              ; preds = %232, %218
  %234 = load i32, i32* %19, align 4
  %235 = icmp sge i32 %234, -1
  br i1 %235, label %236, label %251

236:                                              ; preds = %233
  %237 = load i32, i32* %19, align 4
  %238 = icmp sle i32 %237, 14
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load i64, i64* %20, align 8
  %241 = load i32, i32* %19, align 4
  %242 = add nsw i32 %241, 1
  %243 = mul nsw i32 %242, 2
  %244 = zext i32 %243 to i64
  %245 = shl i64 %240, %244
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %247 = load i32, i32* %246, align 16
  %248 = sext i32 %247 to i64
  %249 = or i64 %248, %245
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 16
  br label %308

251:                                              ; preds = %236, %233
  %252 = load i32, i32* %19, align 4
  %253 = icmp sge i32 %252, 15
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i32, i32* %19, align 4
  %256 = icmp sle i32 %255, 30
  br i1 %256, label %257, label %269

257:                                              ; preds = %254
  %258 = load i64, i64* %20, align 8
  %259 = load i32, i32* %19, align 4
  %260 = sub nsw i32 %259, 15
  %261 = mul nsw i32 %260, 2
  %262 = zext i32 %261 to i64
  %263 = shl i64 %258, %262
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = or i64 %266, %263
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %264, align 4
  br label %307

269:                                              ; preds = %254, %251
  %270 = load i32, i32* %19, align 4
  %271 = icmp sge i32 %270, 31
  br i1 %271, label %272, label %287

272:                                              ; preds = %269
  %273 = load i32, i32* %19, align 4
  %274 = icmp sle i32 %273, 46
  br i1 %274, label %275, label %287

275:                                              ; preds = %272
  %276 = load i64, i64* %20, align 8
  %277 = load i32, i32* %19, align 4
  %278 = sub nsw i32 %277, 31
  %279 = mul nsw i32 %278, 2
  %280 = zext i32 %279 to i64
  %281 = shl i64 %276, %280
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = or i64 %284, %281
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %282, align 8
  br label %306

287:                                              ; preds = %272, %269
  %288 = load i32, i32* %19, align 4
  %289 = icmp sge i32 %288, 47
  br i1 %289, label %290, label %305

290:                                              ; preds = %287
  %291 = load i32, i32* %19, align 4
  %292 = icmp sle i32 %291, 53
  br i1 %292, label %293, label %305

293:                                              ; preds = %290
  %294 = load i64, i64* %20, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sub nsw i32 %295, 47
  %297 = mul nsw i32 %296, 2
  %298 = zext i32 %297 to i64
  %299 = shl i64 %294, %298
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = or i64 %302, %299
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  br label %305

305:                                              ; preds = %293, %290, %287
  br label %306

306:                                              ; preds = %305, %275
  br label %307

307:                                              ; preds = %306, %257
  br label %308

308:                                              ; preds = %307, %239
  br label %309

309:                                              ; preds = %308
  %310 = load i64, i64* %17, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %17, align 8
  br label %169

312:                                              ; preds = %169
  %313 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %314 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL, align 4
  %315 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL_RATE, align 4
  %316 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %313, i32 %314, i32 %315, i32 255)
  %317 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %318 = load i32, i32* @AR5K_PHY_IQ, align 4
  %319 = load i32, i32* @AR5K_PHY_IQ_PILOT_MASK_EN, align 4
  %320 = load i32, i32* @AR5K_PHY_IQ_CHAN_MASK_EN, align 4
  %321 = or i32 %319, %320
  %322 = load i32, i32* @AR5K_PHY_IQ_SPUR_FILT_EN, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %317, i32 %318, i32 %323)
  %325 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* @AR5K_PHY_TIMING_11_SPUR_DELTA_PHASE, align 4
  %328 = call i32 @AR5K_REG_SM(i32 %326, i32 %327)
  %329 = load i32, i32* %13, align 4
  %330 = load i32, i32* @AR5K_PHY_TIMING_11_SPUR_FREQ_SD, align 4
  %331 = call i32 @AR5K_REG_SM(i32 %329, i32 %330)
  %332 = or i32 %328, %331
  %333 = load i32, i32* @AR5K_PHY_TIMING_11_USE_SPUR_IN_AGC, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @AR5K_PHY_TIMING_11, align 4
  %336 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %325, i32 %334, i32 %335)
  %337 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @AR5K_PHY_TIMING_7, align 4
  %341 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %337, i32 %339, i32 %340)
  %342 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %343 = load i32, i32* @AR5K_PHY_TIMING_8, align 4
  %344 = load i32, i32* @AR5K_PHY_TIMING_8_PILOT_MASK_2, align 4
  %345 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %342, i32 %343, i32 %344, i32 %346)
  %348 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @AR5K_PHY_TIMING_9, align 4
  %352 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %348, i32 %350, i32 %351)
  %353 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %354 = load i32, i32* @AR5K_PHY_TIMING_10, align 4
  %355 = load i32, i32* @AR5K_PHY_TIMING_10_PILOT_MASK_2, align 4
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %353, i32 %354, i32 %355, i32 %357)
  %359 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %361 = load i32, i32* %360, align 16
  %362 = load i32, i32* @AR5K_PHY_BIN_MASK_1, align 4
  %363 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %359, i32 %361, i32 %362)
  %364 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %365 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @AR5K_PHY_BIN_MASK_2, align 4
  %368 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %364, i32 %366, i32 %367)
  %369 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %370 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @AR5K_PHY_BIN_MASK_3, align 4
  %373 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %369, i32 %371, i32 %372)
  %374 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %375 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL, align 4
  %376 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL_MASK_4, align 4
  %377 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %374, i32 %375, i32 %376, i32 %378)
  %380 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %382 = load i32, i32* %381, align 16
  %383 = load i32, i32* @AR5K_PHY_BIN_MASK2_1, align 4
  %384 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %380, i32 %382, i32 %383)
  %385 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @AR5K_PHY_BIN_MASK2_2, align 4
  %389 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %385, i32 %387, i32 %388)
  %390 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @AR5K_PHY_BIN_MASK2_3, align 4
  %394 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %390, i32 %392, i32 %393)
  %395 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %396 = load i32, i32* @AR5K_PHY_BIN_MASK2_4, align 4
  %397 = load i32, i32* @AR5K_PHY_BIN_MASK2_4_MASK_4, align 4
  %398 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %395, i32 %396, i32 %397, i32 %399)
  br label %465

401:                                              ; preds = %101
  %402 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %403 = load i32, i32* @AR5K_PHY_IQ, align 4
  %404 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %402, i32 %403)
  %405 = load i32, i32* @AR5K_PHY_IQ_SPUR_FILT_EN, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %464

408:                                              ; preds = %401
  %409 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %410 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL, align 4
  %411 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL_RATE, align 4
  %412 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %409, i32 %410, i32 %411, i32 0)
  %413 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %414 = load i32, i32* @AR5K_PHY_IQ, align 4
  %415 = load i32, i32* @AR5K_PHY_IQ_PILOT_MASK_EN, align 4
  %416 = load i32, i32* @AR5K_PHY_IQ_CHAN_MASK_EN, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @AR5K_PHY_IQ_SPUR_FILT_EN, align 4
  %419 = or i32 %417, %418
  %420 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %413, i32 %414, i32 %419)
  %421 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %422 = load i32, i32* @AR5K_PHY_TIMING_11, align 4
  %423 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %421, i32 0, i32 %422)
  %424 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %425 = load i32, i32* @AR5K_PHY_TIMING_7, align 4
  %426 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %424, i32 0, i32 %425)
  %427 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %428 = load i32, i32* @AR5K_PHY_TIMING_8, align 4
  %429 = load i32, i32* @AR5K_PHY_TIMING_8_PILOT_MASK_2, align 4
  %430 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %427, i32 %428, i32 %429, i32 0)
  %431 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %432 = load i32, i32* @AR5K_PHY_TIMING_9, align 4
  %433 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %431, i32 0, i32 %432)
  %434 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %435 = load i32, i32* @AR5K_PHY_TIMING_10, align 4
  %436 = load i32, i32* @AR5K_PHY_TIMING_10_PILOT_MASK_2, align 4
  %437 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %434, i32 %435, i32 %436, i32 0)
  %438 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %439 = load i32, i32* @AR5K_PHY_BIN_MASK_1, align 4
  %440 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %438, i32 0, i32 %439)
  %441 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %442 = load i32, i32* @AR5K_PHY_BIN_MASK_2, align 4
  %443 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %441, i32 0, i32 %442)
  %444 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %445 = load i32, i32* @AR5K_PHY_BIN_MASK_3, align 4
  %446 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %444, i32 0, i32 %445)
  %447 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %448 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL, align 4
  %449 = load i32, i32* @AR5K_PHY_BIN_MASK_CTL_MASK_4, align 4
  %450 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %447, i32 %448, i32 %449, i32 0)
  %451 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %452 = load i32, i32* @AR5K_PHY_BIN_MASK2_1, align 4
  %453 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %451, i32 0, i32 %452)
  %454 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %455 = load i32, i32* @AR5K_PHY_BIN_MASK2_2, align 4
  %456 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %454, i32 0, i32 %455)
  %457 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %458 = load i32, i32* @AR5K_PHY_BIN_MASK2_3, align 4
  %459 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %457, i32 0, i32 %458)
  %460 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %461 = load i32, i32* @AR5K_PHY_BIN_MASK2_4, align 4
  %462 = load i32, i32* @AR5K_PHY_BIN_MASK2_4_MASK_4, align 4
  %463 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %460, i32 %461, i32 %462, i32 0)
  br label %464

464:                                              ; preds = %408, %401
  br label %465

465:                                              ; preds = %464, %312
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #2

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #2

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #2

declare dso_local i32 @AR5K_REG_SM(i32, i32) #2

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #2

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
