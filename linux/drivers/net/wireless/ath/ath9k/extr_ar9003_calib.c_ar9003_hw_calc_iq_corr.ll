; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calc_iq_corr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calc_iq_corr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Divide by 0:\0Aa0_d0=%d\0Aa0_d1=%d\0Aa2_d0=%d\0Aa1_d1=%d\0A\00", align 1
@DELPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Divide by 0: mag1=%d, mag2=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Call to ar9003_hw_solve_iq_cal() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"chain %d: mag mismatch=%d phase mismatch=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Divide by 0: mag_tx=%d, res_scale=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"tx chain %d: mag corr=%d  phase corr=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"tx chain %d: iq corr coeff=%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Divide by 0: mag_rx=%d, res_scale=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"rx chain %d: mag corr=%d  phase corr=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"rx chain %d: iq corr coeff=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32*, i32*)* @ar9003_hw_calc_iq_corr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_calc_iq_corr(%struct.ath_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [4 x i32], align 16
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 32768, i32* %45, align 4
  store i32 256, i32* %46, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %50)
  store %struct.ath_common* %51, %struct.ath_common** %49, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 4095
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 4095
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = shl i32 %69, 8
  %71 = add nsw i32 %65, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 2048
  br i1 %73, label %74, label %79

74:                                               ; preds = %4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 4095, %75
  %77 = add nsw i32 %76, 1
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 2048
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 4095, %83
  %85 = add nsw i32 %84, 1
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %12, align 4
  %89 = icmp sgt i32 %88, 2048
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 4095, %91
  %93 = add nsw i32 %92, 1
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 4095
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 4095
  store i32 %104, i32* %14, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 12
  %109 = and i32 %108, 4095
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 2048
  br i1 %111, label %112, label %117

112:                                              ; preds = %95
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 4095, %113
  %115 = add nsw i32 %114, 1
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %112, %95
  %118 = load i32, i32* %15, align 4
  %119 = icmp sgt i32 %118, 2048
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 4095, %121
  %123 = add nsw i32 %122, 1
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 24
  %130 = and i32 %129, 255
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 15
  %135 = shl i32 %134, 8
  %136 = add nsw i32 %130, %135
  store i32 %136, i32* %16, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 4
  %141 = and i32 %140, 4095
  store i32 %141, i32* %17, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 4095
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp sgt i32 %146, 2048
  br i1 %147, label %148, label %153

148:                                              ; preds = %125
  %149 = load i32, i32* %16, align 4
  %150 = sub nsw i32 4095, %149
  %151 = add nsw i32 %150, 1
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %148, %125
  %154 = load i32, i32* %17, align 4
  %155 = icmp sgt i32 %154, 2048
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %17, align 4
  %158 = sub nsw i32 4095, %157
  %159 = add nsw i32 %158, 1
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i32, i32* %18, align 4
  %163 = icmp sgt i32 %162, 2048
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %18, align 4
  %166 = sub nsw i32 4095, %165
  %167 = add nsw i32 %166, 1
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 12
  %174 = and i32 %173, 4095
  store i32 %174, i32* %19, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 24
  %179 = and i32 %178, 255
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 5
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 15
  %184 = shl i32 %183, 8
  %185 = add nsw i32 %179, %184
  store i32 %185, i32* %20, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 5
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 4
  %190 = and i32 %189, 4095
  store i32 %190, i32* %21, align 4
  %191 = load i32, i32* %19, align 4
  %192 = icmp sgt i32 %191, 2048
  br i1 %192, label %193, label %198

193:                                              ; preds = %169
  %194 = load i32, i32* %19, align 4
  %195 = sub nsw i32 4095, %194
  %196 = add nsw i32 %195, 1
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %193, %169
  %199 = load i32, i32* %20, align 4
  %200 = icmp sgt i32 %199, 2048
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* %20, align 4
  %203 = sub nsw i32 4095, %202
  %204 = add nsw i32 %203, 1
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %20, align 4
  br label %206

206:                                              ; preds = %201, %198
  %207 = load i32, i32* %21, align 4
  %208 = icmp sgt i32 %207, 2048
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i32, i32* %21, align 4
  %211 = sub nsw i32 4095, %210
  %212 = add nsw i32 %211, 1
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %21, align 4
  br label %214

214:                                              ; preds = %209, %206
  %215 = load i32, i32* %11, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %14, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %17, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %20, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223, %220, %217, %214
  %227 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %228 = load i32, i32* @CALIBRATE, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %20, align 4
  %233 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %227, i32 %228, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %229, i32 %230, i32 %231, i32 %232)
  store i32 0, i32* %5, align 4
  br label %521

234:                                              ; preds = %223
  %235 = load i32, i32* %11, align 4
  %236 = icmp slt i32 %235, 1024
  br i1 %236, label %278, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %11, align 4
  %239 = icmp sgt i32 %238, 2047
  br i1 %239, label %278, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %17, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %278, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %20, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %278, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp sle i32 %247, %248
  br i1 %249, label %278, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %278, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %13, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %278, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %15, align 4
  %261 = icmp sle i32 %259, %260
  br i1 %261, label %278, label %262

262:                                              ; preds = %258
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %16, align 4
  %265 = icmp sle i32 %263, %264
  br i1 %265, label %278, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %18, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %278, label %270

270:                                              ; preds = %266
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %19, align 4
  %273 = icmp sle i32 %271, %272
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %21, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %274, %270, %266, %262, %258, %254, %250, %246, %243, %240, %237, %234
  store i32 0, i32* %5, align 4
  br label %521

279:                                              ; preds = %274
  %280 = load i32, i32* %10, align 4
  %281 = mul nsw i32 %280, 32768
  %282 = load i32, i32* %11, align 4
  %283 = sdiv i32 %281, %282
  store i32 %283, i32* %22, align 4
  %284 = load i32, i32* %12, align 4
  %285 = mul nsw i32 %284, 32768
  %286 = load i32, i32* %11, align 4
  %287 = sdiv i32 %285, %286
  store i32 %287, i32* %26, align 4
  %288 = load i32, i32* %13, align 4
  %289 = mul nsw i32 %288, 32768
  %290 = load i32, i32* %14, align 4
  %291 = sdiv i32 %289, %290
  store i32 %291, i32* %24, align 4
  %292 = load i32, i32* %15, align 4
  %293 = mul nsw i32 %292, 32768
  %294 = load i32, i32* %14, align 4
  %295 = sdiv i32 %293, %294
  store i32 %295, i32* %28, align 4
  %296 = load i32, i32* %16, align 4
  %297 = mul nsw i32 %296, 32768
  %298 = load i32, i32* %17, align 4
  %299 = sdiv i32 %297, %298
  store i32 %299, i32* %23, align 4
  %300 = load i32, i32* %18, align 4
  %301 = mul nsw i32 %300, 32768
  %302 = load i32, i32* %17, align 4
  %303 = sdiv i32 %301, %302
  store i32 %303, i32* %27, align 4
  %304 = load i32, i32* %19, align 4
  %305 = mul nsw i32 %304, 32768
  %306 = load i32, i32* %20, align 4
  %307 = sdiv i32 %305, %306
  store i32 %307, i32* %25, align 4
  %308 = load i32, i32* %21, align 4
  %309 = mul nsw i32 %308, 32768
  %310 = load i32, i32* %20, align 4
  %311 = sdiv i32 %309, %310
  store i32 %311, i32* %29, align 4
  %312 = load i32, i32* %22, align 4
  %313 = load i32, i32* %24, align 4
  %314 = sub nsw i32 %312, %313
  %315 = mul nsw i32 %314, 256
  %316 = load i32, i32* @DELPT, align 4
  %317 = sdiv i32 %315, %316
  store i32 %317, i32* %30, align 4
  %318 = load i32, i32* %28, align 4
  %319 = load i32, i32* %26, align 4
  %320 = sub nsw i32 %318, %319
  %321 = mul nsw i32 %320, 256
  %322 = load i32, i32* @DELPT, align 4
  %323 = sdiv i32 %321, %322
  store i32 %323, i32* %31, align 4
  %324 = load i32, i32* %23, align 4
  %325 = load i32, i32* %25, align 4
  %326 = sub nsw i32 %324, %325
  %327 = mul nsw i32 %326, 256
  %328 = load i32, i32* @DELPT, align 4
  %329 = sdiv i32 %327, %328
  store i32 %329, i32* %32, align 4
  %330 = load i32, i32* %29, align 4
  %331 = load i32, i32* %27, align 4
  %332 = sub nsw i32 %330, %331
  %333 = mul nsw i32 %332, 256
  %334 = load i32, i32* @DELPT, align 4
  %335 = sdiv i32 %333, %334
  store i32 %335, i32* %33, align 4
  %336 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %337 = load i32, i32* %31, align 4
  %338 = load i32, i32* %30, align 4
  %339 = call i32 @ar9003_hw_find_mag_approx(%struct.ath_hw* %336, i32 %337, i32 %338)
  store i32 %339, i32* %47, align 4
  %340 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %341 = load i32, i32* %33, align 4
  %342 = load i32, i32* %32, align 4
  %343 = call i32 @ar9003_hw_find_mag_approx(%struct.ath_hw* %340, i32 %341, i32 %342)
  store i32 %343, i32* %48, align 4
  %344 = load i32, i32* %47, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %279
  %347 = load i32, i32* %48, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %346, %279
  %350 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %351 = load i32, i32* @CALIBRATE, align 4
  %352 = load i32, i32* %47, align 4
  %353 = load i32, i32* %48, align 4
  %354 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %350, i32 %351, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %352, i32 %353)
  store i32 0, i32* %5, align 4
  br label %521

355:                                              ; preds = %346
  %356 = load i32, i32* %30, align 4
  %357 = mul nsw i32 %356, 32768
  %358 = load i32, i32* %47, align 4
  %359 = sdiv i32 %357, %358
  store i32 %359, i32* %30, align 4
  %360 = load i32, i32* %31, align 4
  %361 = mul nsw i32 %360, 32768
  %362 = load i32, i32* %47, align 4
  %363 = sdiv i32 %361, %362
  store i32 %363, i32* %31, align 4
  %364 = load i32, i32* %32, align 4
  %365 = mul nsw i32 %364, 32768
  %366 = load i32, i32* %48, align 4
  %367 = sdiv i32 %365, %366
  store i32 %367, i32* %32, align 4
  %368 = load i32, i32* %33, align 4
  %369 = mul nsw i32 %368, 32768
  %370 = load i32, i32* %48, align 4
  %371 = sdiv i32 %369, %370
  store i32 %371, i32* %33, align 4
  %372 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %373 = load i32, i32* %30, align 4
  %374 = load i32, i32* %31, align 4
  %375 = load i32, i32* %32, align 4
  %376 = load i32, i32* %33, align 4
  %377 = load i32, i32* %22, align 4
  %378 = load i32, i32* %26, align 4
  %379 = load i32, i32* %23, align 4
  %380 = load i32, i32* %27, align 4
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 0
  %382 = call i32 @ar9003_hw_solve_iq_cal(%struct.ath_hw* %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380, i32* %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %355
  %385 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %386 = load i32, i32* @CALIBRATE, align 4
  %387 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %385, i32 %386, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %521

388:                                              ; preds = %355
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 0
  %390 = load i32, i32* %389, align 16
  store i32 %390, i32* %34, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 1
  %392 = load i32, i32* %391, align 4
  store i32 %392, i32* %35, align 4
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 2
  %394 = load i32, i32* %393, align 8
  store i32 %394, i32* %36, align 4
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 3
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %37, align 4
  %397 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %398 = load i32, i32* @CALIBRATE, align 4
  %399 = load i32, i32* %7, align 4
  %400 = load i32, i32* %34, align 4
  %401 = sdiv i32 %400, 32768
  %402 = load i32, i32* %35, align 4
  %403 = sdiv i32 %402, 32768
  %404 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %397, i32 %398, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %399, i32 %401, i32 %403)
  %405 = load i32, i32* %34, align 4
  %406 = icmp eq i32 32768, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %388
  %408 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %409 = load i32, i32* @CALIBRATE, align 4
  %410 = load i32, i32* %34, align 4
  %411 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %408, i32 %409, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %410, i32 32768)
  store i32 0, i32* %5, align 4
  br label %521

412:                                              ; preds = %388
  %413 = load i32, i32* %34, align 4
  %414 = mul nsw i32 %413, 32768
  %415 = load i32, i32* %34, align 4
  %416 = sub nsw i32 32768, %415
  %417 = sdiv i32 %414, %416
  store i32 %417, i32* %39, align 4
  %418 = load i32, i32* %35, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %40, align 4
  %420 = load i32, i32* %39, align 4
  %421 = mul nsw i32 %420, 128
  %422 = sdiv i32 %421, 32768
  store i32 %422, i32* %43, align 4
  %423 = load i32, i32* %40, align 4
  %424 = mul nsw i32 %423, 256
  %425 = sdiv i32 %424, 32768
  store i32 %425, i32* %44, align 4
  %426 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %427 = load i32, i32* @CALIBRATE, align 4
  %428 = load i32, i32* %7, align 4
  %429 = load i32, i32* %43, align 4
  %430 = load i32, i32* %44, align 4
  %431 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %426, i32 %427, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %428, i32 %429, i32 %430)
  %432 = load i32, i32* %44, align 4
  %433 = icmp slt i32 %432, -63
  br i1 %433, label %434, label %435

434:                                              ; preds = %412
  store i32 -63, i32* %44, align 4
  br label %435

435:                                              ; preds = %434, %412
  %436 = load i32, i32* %44, align 4
  %437 = icmp sgt i32 %436, 63
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i32 63, i32* %44, align 4
  br label %439

439:                                              ; preds = %438, %435
  %440 = load i32, i32* %43, align 4
  %441 = icmp slt i32 %440, -63
  br i1 %441, label %442, label %443

442:                                              ; preds = %439
  store i32 -63, i32* %43, align 4
  br label %443

443:                                              ; preds = %442, %439
  %444 = load i32, i32* %43, align 4
  %445 = icmp sgt i32 %444, 63
  br i1 %445, label %446, label %447

446:                                              ; preds = %443
  store i32 63, i32* %43, align 4
  br label %447

447:                                              ; preds = %446, %443
  %448 = load i32, i32* %43, align 4
  %449 = mul nsw i32 %448, 128
  %450 = load i32, i32* %44, align 4
  %451 = and i32 127, %450
  %452 = add nsw i32 %449, %451
  %453 = load i32*, i32** %9, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 0
  store i32 %452, i32* %454, align 4
  %455 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %456 = load i32, i32* @CALIBRATE, align 4
  %457 = load i32, i32* %7, align 4
  %458 = load i32*, i32** %9, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 0
  %460 = load i32, i32* %459, align 4
  %461 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %455, i32 %456, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %457, i32 %460)
  %462 = load i32, i32* %36, align 4
  %463 = sub nsw i32 0, %462
  %464 = icmp eq i32 %463, 32768
  br i1 %464, label %465, label %470

465:                                              ; preds = %447
  %466 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %467 = load i32, i32* @CALIBRATE, align 4
  %468 = load i32, i32* %36, align 4
  %469 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %466, i32 %467, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %468, i32 32768)
  store i32 0, i32* %5, align 4
  br label %521

470:                                              ; preds = %447
  %471 = load i32, i32* %36, align 4
  %472 = sub nsw i32 0, %471
  %473 = mul nsw i32 %472, 32768
  %474 = load i32, i32* %36, align 4
  %475 = add nsw i32 32768, %474
  %476 = sdiv i32 %473, %475
  store i32 %476, i32* %41, align 4
  %477 = load i32, i32* %37, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %42, align 4
  %479 = load i32, i32* %41, align 4
  %480 = mul nsw i32 %479, 128
  %481 = sdiv i32 %480, 32768
  store i32 %481, i32* %43, align 4
  %482 = load i32, i32* %42, align 4
  %483 = mul nsw i32 %482, 256
  %484 = sdiv i32 %483, 32768
  store i32 %484, i32* %44, align 4
  %485 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %486 = load i32, i32* @CALIBRATE, align 4
  %487 = load i32, i32* %7, align 4
  %488 = load i32, i32* %43, align 4
  %489 = load i32, i32* %44, align 4
  %490 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %485, i32 %486, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %487, i32 %488, i32 %489)
  %491 = load i32, i32* %44, align 4
  %492 = icmp slt i32 %491, -63
  br i1 %492, label %493, label %494

493:                                              ; preds = %470
  store i32 -63, i32* %44, align 4
  br label %494

494:                                              ; preds = %493, %470
  %495 = load i32, i32* %44, align 4
  %496 = icmp sgt i32 %495, 63
  br i1 %496, label %497, label %498

497:                                              ; preds = %494
  store i32 63, i32* %44, align 4
  br label %498

498:                                              ; preds = %497, %494
  %499 = load i32, i32* %43, align 4
  %500 = icmp slt i32 %499, -63
  br i1 %500, label %501, label %502

501:                                              ; preds = %498
  store i32 -63, i32* %43, align 4
  br label %502

502:                                              ; preds = %501, %498
  %503 = load i32, i32* %43, align 4
  %504 = icmp sgt i32 %503, 63
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  store i32 63, i32* %43, align 4
  br label %506

506:                                              ; preds = %505, %502
  %507 = load i32, i32* %43, align 4
  %508 = mul nsw i32 %507, 128
  %509 = load i32, i32* %44, align 4
  %510 = and i32 127, %509
  %511 = add nsw i32 %508, %510
  %512 = load i32*, i32** %9, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 1
  store i32 %511, i32* %513, align 4
  %514 = load %struct.ath_common*, %struct.ath_common** %49, align 8
  %515 = load i32, i32* @CALIBRATE, align 4
  %516 = load i32, i32* %7, align 4
  %517 = load i32*, i32** %9, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 1
  %519 = load i32, i32* %518, align 4
  %520 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %514, i32 %515, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %516, i32 %519)
  store i32 1, i32* %5, align 4
  br label %521

521:                                              ; preds = %506, %465, %407, %384, %349, %278, %226
  %522 = load i32, i32* %5, align 4
  ret i32 %522
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9003_hw_find_mag_approx(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_solve_iq_cal(%struct.ath_hw*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
