; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iq_cal_outlier_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iq_cal_outlier_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32**, i32*, i32 }
%struct.coeff = type { i32***, i32***, i32* }

@MAX_MEASUREMENT = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_STATUS_B0 = common dso_local global i32 0, align 4
@AR_PHY_CALIBRATED_GAINS_0 = common dso_local global i32 0, align 4
@MAX_MAG_DELTA = common dso_local global i32 0, align 4
@MAX_PHS_DELTA = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0 = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN = common dso_local global i32 0, align 4
@TXIQCAL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.coeff*, i32)* @ar9003_hw_tx_iq_cal_outlier_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_tx_iq_cal_outlier_detection(%struct.ath_hw* %0, %struct.coeff* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.coeff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ath9k_hw_cal_data*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.coeff* %1, %struct.coeff** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @MAX_MEASUREMENT, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = mul nuw i64 %17, %19
  %22 = alloca i32, i64 %21, align 16
  store i64 %17, i64* %13, align 8
  store i64 %19, i64* %14, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  %25 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %24, align 8
  store %struct.ath9k_hw_cal_data* %25, %struct.ath9k_hw_cal_data** %15, align 8
  %26 = bitcast i32* %22 to i32**
  %27 = mul nuw i64 %17, %19
  %28 = mul nuw i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32** %26, i32 0, i32 %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %87, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MAX_MEASUREMENT, align 4
  %34 = sdiv i32 %33, 2
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B0(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %19
  %44 = getelementptr inbounds i32, i32* %22, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %19
  %50 = getelementptr inbounds i32, i32* %22, i64 %49
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %38, i32* %51, align 4
  %52 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %53 = call i32 @AR_SREV_9485(%struct.ath_hw* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B1(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, %19
  %63 = getelementptr inbounds i32, i32* %22, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %19
  %69 = getelementptr inbounds i32, i32* %22, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %57, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B2(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 2
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %19
  %78 = getelementptr inbounds i32, i32* %22, i64 %77
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %19
  %84 = getelementptr inbounds i32, i32* %22, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %72, i32* %85, align 4
  br label %86

86:                                               ; preds = %55, %36
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %31

90:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %257, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %260

95:                                               ; preds = %91
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %257

104:                                              ; preds = %95
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = load i32, i32* @AR_PHY_TX_IQCAL_STATUS_B0, align 4
  %107 = load i32, i32* @AR_PHY_CALIBRATED_GAINS_0, align 4
  %108 = call i32 @REG_READ_FIELD(%struct.ath_hw* %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @MAX_MEASUREMENT, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @MAX_MEASUREMENT, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %112, %104
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = call i32 @AR_SREV_9550(%struct.ath_hw* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load %struct.coeff*, %struct.coeff** %5, align 8
  %123 = getelementptr inbounds %struct.coeff, %struct.coeff* %122, i32 0, i32 0
  %124 = load i32***, i32**** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32**, i32*** %124, i64 %126
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @MAX_MAG_DELTA, align 4
  %131 = call i32 @ar9003_hw_detect_outlier(i32** %128, i32 %129, i32 %130)
  %132 = load %struct.coeff*, %struct.coeff** %5, align 8
  %133 = getelementptr inbounds %struct.coeff, %struct.coeff* %132, i32 0, i32 1
  %134 = load i32***, i32**** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32**, i32*** %134, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @MAX_PHS_DELTA, align 4
  %141 = call i32 @ar9003_hw_detect_outlier(i32** %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %121, %118
  br label %143

143:                                              ; preds = %142, %114
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %242, %143
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %245

148:                                              ; preds = %144
  %149 = load %struct.coeff*, %struct.coeff** %5, align 8
  %150 = getelementptr inbounds %struct.coeff, %struct.coeff* %149, i32 0, i32 0
  %151 = load i32***, i32**** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32**, i32*** %151, i64 %153
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %10, align 4
  %162 = load %struct.coeff*, %struct.coeff** %5, align 8
  %163 = getelementptr inbounds %struct.coeff, %struct.coeff* %162, i32 0, i32 1
  %164 = load i32***, i32**** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32**, i32*** %164, i64 %166
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = and i32 %175, 127
  %177 = load i32, i32* %10, align 4
  %178 = and i32 %177, 127
  %179 = shl i32 %178, 7
  %180 = or i32 %176, %179
  %181 = load %struct.coeff*, %struct.coeff** %5, align 8
  %182 = getelementptr inbounds %struct.coeff, %struct.coeff* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %180, i32* %184, align 4
  %185 = load i32, i32* %8, align 4
  %186 = srem i32 %185, 2
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %148
  %189 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %19
  %193 = getelementptr inbounds i32, i32* %22, i64 %192
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE, align 4
  %199 = load %struct.coeff*, %struct.coeff** %5, align 8
  %200 = getelementptr inbounds %struct.coeff, %struct.coeff* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %189, i32 %197, i32 %198, i32 %203)
  br label %222

205:                                              ; preds = %148
  %206 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %208, %19
  %210 = getelementptr inbounds i32, i32* %22, i64 %209
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE, align 4
  %216 = load %struct.coeff*, %struct.coeff** %5, align 8
  %217 = getelementptr inbounds %struct.coeff, %struct.coeff* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %206, i32 %214, i32 %215, i32 %220)
  br label %222

222:                                              ; preds = %205, %188
  %223 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %224 = icmp ne %struct.ath9k_hw_cal_data* %223, null
  br i1 %224, label %225, label %241

225:                                              ; preds = %222
  %226 = load %struct.coeff*, %struct.coeff** %5, align 8
  %227 = getelementptr inbounds %struct.coeff, %struct.coeff* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %232 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %230, i32* %240, align 4
  br label %241

241:                                              ; preds = %225, %222
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %144

245:                                              ; preds = %144
  %246 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %247 = icmp ne %struct.ath9k_hw_cal_data* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %251 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  br label %256

256:                                              ; preds = %248, %245
  br label %257

257:                                              ; preds = %256, %103
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %91

260:                                              ; preds = %91
  %261 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %262 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3, align 4
  %263 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, align 4
  %264 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %261, i32 %262, i32 %263, i32 1)
  %265 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %266 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0, align 4
  %267 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, align 4
  %268 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %265, i32 %266, i32 %267, i32 1)
  %269 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %270 = icmp ne %struct.ath9k_hw_cal_data* %269, null
  br i1 %270, label %271, label %285

271:                                              ; preds = %260
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32, i32* @TXIQCAL_DONE, align 4
  %276 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %277 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %276, i32 0, i32 2
  %278 = call i32 @set_bit(i32 %275, i32* %277)
  br label %284

279:                                              ; preds = %271
  %280 = load i32, i32* @TXIQCAL_DONE, align 4
  %281 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %15, align 8
  %282 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %281, i32 0, i32 2
  %283 = call i32 @clear_bit(i32 %280, i32* %282)
  br label %284

284:                                              ; preds = %279, %274
  br label %285

285:                                              ; preds = %284, %260
  %286 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %286)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B0(i32) #2

declare dso_local i32 @AR_SREV_9485(%struct.ath_hw*) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B1(i32) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B2(i32) #2

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #2

declare dso_local i32 @AR_SREV_9550(%struct.ath_hw*) #2

declare dso_local i32 @ar9003_hw_detect_outlier(i32**, i32, i32) #2

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
