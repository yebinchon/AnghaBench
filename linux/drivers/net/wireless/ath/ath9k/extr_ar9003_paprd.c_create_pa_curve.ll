; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_create_pa_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_create_pa_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_BIN = common dso_local global i32 0, align 4
@PAPRD_TABLE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @create_pa_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pa_curve(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
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
  %38 = alloca i32, align 4
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
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %67 = load i32, i32* @NUM_BIN, align 4
  %68 = add nsw i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %11, align 8
  %71 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %12, align 8
  %72 = load i32, i32* @NUM_BIN, align 4
  %73 = add nsw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %13, align 8
  %76 = load i32, i32* @NUM_BIN, align 4
  %77 = add nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %14, align 8
  %80 = load i32, i32* @NUM_BIN, align 4
  %81 = add nsw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %15, align 8
  %84 = load i32, i32* @NUM_BIN, align 4
  %85 = add nsw i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %16, align 8
  %88 = load i32, i32* @NUM_BIN, align 4
  %89 = add nsw i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %17, align 8
  %92 = load i32, i32* @NUM_BIN, align 4
  %93 = add nsw i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = alloca i32, i64 %94, align 16
  store i64 %94, i64* %22, align 8
  %96 = load i32, i32* @NUM_BIN, align 4
  %97 = add nsw i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = alloca i32, i64 %98, align 16
  store i64 %98, i64* %24, align 8
  store i32 0, i32* %54, align 4
  store i32 16, i32* %10, align 4
  store i32 5, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %100 = mul nuw i64 4, %78
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memset(i32* %79, i32 0, i32 %101)
  %103 = mul nuw i64 4, %69
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(i32* %71, i32 0, i32 %104)
  %106 = mul nuw i64 4, %74
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i32* %75, i32 0, i32 %107)
  %109 = mul nuw i64 4, %94
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i32* %95, i32 0, i32 %110)
  %112 = mul nuw i64 4, %98
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(i32* %99, i32 0, i32 %113)
  store i32 0, i32* %55, align 4
  br label %115

115:                                              ; preds = %232, %4
  %116 = load i32, i32* %55, align 4
  %117 = load i32, i32* @NUM_BIN, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %235

119:                                              ; preds = %115
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %55, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 65535
  store i32 %125, i32* %56, align 4
  %126 = load i32, i32* %56, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ule i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %232

130:                                              ; preds = %119
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %20, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %55, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 16
  %139 = and i32 %138, 65535
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %55, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 2047
  %146 = shl i32 %145, 16
  %147 = or i32 %139, %146
  store i32 %147, i32* %57, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %55, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 11
  %154 = and i32 %153, 31
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %55, align 4
  %157 = add nsw i32 %156, 23
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 65535
  %162 = shl i32 %161, 5
  %163 = or i32 %154, %162
  store i32 %163, i32* %58, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %55, align 4
  %166 = add nsw i32 %165, 23
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 16
  %171 = and i32 %170, 65535
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %55, align 4
  %174 = add nsw i32 %173, 23
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 2047
  %179 = shl i32 %178, 16
  %180 = or i32 %171, %179
  store i32 %180, i32* %59, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %57, align 4
  %183 = shl i32 %182, %181
  store i32 %183, i32* %57, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %58, align 4
  %186 = shl i32 %185, %184
  store i32 %186, i32* %58, align 4
  %187 = load i32, i32* %57, align 4
  %188 = load i32, i32* %56, align 4
  %189 = add i32 %187, %188
  %190 = load i32, i32* %56, align 4
  %191 = udiv i32 %189, %190
  %192 = add i32 %191, 32
  %193 = load i32, i32* %21, align 4
  %194 = lshr i32 %192, %193
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %71, i64 %196
  store i32 %194, i32* %197, align 4
  %198 = load i32, i32* %58, align 4
  %199 = load i32, i32* %56, align 4
  %200 = add i32 %198, %199
  %201 = load i32, i32* %56, align 4
  %202 = udiv i32 %200, %201
  %203 = add i32 %202, 32
  %204 = load i32, i32* %21, align 4
  %205 = lshr i32 %203, %204
  %206 = load i32, i32* %21, align 4
  %207 = shl i32 1, %206
  %208 = load i32, i32* %55, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add i32 %205, %209
  %211 = add i32 %210, 16
  %212 = load i32, i32* %20, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %75, i64 %213
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %59, align 4
  %216 = icmp uge i32 %215, 67108864
  br i1 %216, label %217, label %220

217:                                              ; preds = %130
  %218 = load i32, i32* %59, align 4
  %219 = sub i32 %218, 134217728
  store i32 %219, i32* %59, align 4
  br label %220

220:                                              ; preds = %217, %130
  %221 = load i32, i32* %59, align 4
  %222 = load i32, i32* %21, align 4
  %223 = shl i32 1, %222
  %224 = mul i32 %221, %223
  %225 = load i32, i32* %56, align 4
  %226 = add i32 %224, %225
  %227 = load i32, i32* %56, align 4
  %228 = udiv i32 %226, %227
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %79, i64 %230
  store i32 %228, i32* %231, align 4
  br label %232

232:                                              ; preds = %220, %129
  %233 = load i32, i32* %55, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %55, align 4
  br label %115

235:                                              ; preds = %115
  store i32 1, i32* %55, align 4
  br label %236

236:                                              ; preds = %246, %235
  %237 = load i32, i32* %55, align 4
  %238 = icmp slt i32 %237, 6
  br i1 %238, label %239, label %249

239:                                              ; preds = %236
  %240 = load i32, i32* %55, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %79, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %54, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %54, align 4
  br label %246

246:                                              ; preds = %239
  %247 = load i32, i32* %55, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %55, align 4
  br label %236

249:                                              ; preds = %236
  %250 = load i32, i32* %54, align 4
  %251 = sdiv i32 %250, 5
  store i32 %251, i32* %54, align 4
  store i32 1, i32* %55, align 4
  br label %252

252:                                              ; preds = %260, %249
  %253 = load i32, i32* %55, align 4
  %254 = icmp slt i32 %253, 6
  br i1 %254, label %255, label %263

255:                                              ; preds = %252
  %256 = load i32, i32* %54, align 4
  %257 = load i32, i32* %55, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %79, i64 %258
  store i32 %256, i32* %259, align 4
  br label %260

260:                                              ; preds = %255
  %261 = load i32, i32* %55, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %55, align 4
  br label %252

263:                                              ; preds = %252
  %264 = load i32, i32* %54, align 4
  %265 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %264, i32* %265, align 16
  store i32 0, i32* %55, align 4
  br label %266

266:                                              ; preds = %277, %263
  %267 = load i32, i32* %55, align 4
  %268 = load i32, i32* %20, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %270, label %280

270:                                              ; preds = %266
  %271 = load i32, i32* %54, align 4
  %272 = load i32, i32* %55, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %79, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, %271
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %270
  %278 = load i32, i32* %55, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %55, align 4
  br label %266

280:                                              ; preds = %266
  %281 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 0, i32* %281, align 16
  %282 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %282, align 16
  store i32 8, i32* %21, align 4
  %283 = getelementptr inbounds i32, i32* %71, i64 6
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds i32, i32* %71, i64 3
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %280
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1218

289:                                              ; preds = %280
  %290 = getelementptr inbounds i32, i32* %75, i64 6
  %291 = load i32, i32* %290, align 8
  %292 = getelementptr inbounds i32, i32* %75, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %291, %293
  %295 = mul nsw i32 %294, 1
  %296 = load i32, i32* %21, align 4
  %297 = shl i32 %295, %296
  %298 = getelementptr inbounds i32, i32* %71, i64 6
  %299 = load i32, i32* %298, align 8
  %300 = getelementptr inbounds i32, i32* %71, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %299, %301
  %303 = add nsw i32 %297, %302
  %304 = getelementptr inbounds i32, i32* %71, i64 6
  %305 = load i32, i32* %304, align 8
  %306 = getelementptr inbounds i32, i32* %71, i64 3
  %307 = load i32, i32* %306, align 4
  %308 = sub nsw i32 %305, %307
  %309 = sdiv i32 %303, %308
  store i32 %309, i32* %26, align 4
  %310 = load i32, i32* %26, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %289
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1218

313:                                              ; preds = %289
  %314 = load i32, i32* %26, align 4
  %315 = getelementptr inbounds i32, i32* %71, i64 0
  %316 = load i32, i32* %315, align 16
  %317 = getelementptr inbounds i32, i32* %71, i64 3
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %316, %318
  %320 = mul nsw i32 %314, %319
  %321 = load i32, i32* %21, align 4
  %322 = shl i32 1, %321
  %323 = add nsw i32 %320, %322
  %324 = load i32, i32* %21, align 4
  %325 = shl i32 1, %324
  %326 = sdiv i32 %323, %325
  %327 = getelementptr inbounds i32, i32* %75, i64 3
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %326, %328
  store i32 %329, i32* %27, align 4
  store i32 0, i32* %55, align 4
  br label %330

330:                                              ; preds = %344, %313
  %331 = load i32, i32* %55, align 4
  %332 = load i32, i32* %20, align 4
  %333 = icmp sle i32 %331, %332
  br i1 %333, label %334, label %347

334:                                              ; preds = %330
  %335 = load i32, i32* %55, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %75, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %27, align 4
  %340 = sub nsw i32 %338, %339
  %341 = load i32, i32* %55, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %95, i64 %342
  store i32 %340, i32* %343, align 4
  br label %344

344:                                              ; preds = %334
  %345 = load i32, i32* %55, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %55, align 4
  br label %330

347:                                              ; preds = %330
  store i32 0, i32* %55, align 4
  br label %348

348:                                              ; preds = %371, %347
  %349 = load i32, i32* %55, align 4
  %350 = icmp sle i32 %349, 3
  br i1 %350, label %351, label %374

351:                                              ; preds = %348
  %352 = load i32, i32* %55, align 4
  %353 = mul nsw i32 %352, 32
  %354 = load i32, i32* %55, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %95, i64 %355
  store i32 %353, i32* %356, align 4
  %357 = load i32, i32* %55, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %95, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %360, 1
  %362 = load i32, i32* %21, align 4
  %363 = shl i32 %361, %362
  %364 = load i32, i32* %26, align 4
  %365 = add nsw i32 %363, %364
  %366 = load i32, i32* %26, align 4
  %367 = sdiv i32 %365, %366
  %368 = load i32, i32* %55, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %71, i64 %369
  store i32 %367, i32* %370, align 4
  br label %371

371:                                              ; preds = %351
  %372 = load i32, i32* %55, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %55, align 4
  br label %348

374:                                              ; preds = %348
  %375 = load i32, i32* %20, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %95, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %374
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1218

381:                                              ; preds = %374
  %382 = load i32, i32* %20, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %71, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %21, align 4
  %387 = shl i32 1, %386
  %388 = load i32, i32* %20, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %95, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = mul nsw i32 %387, %391
  %393 = load i32, i32* %26, align 4
  %394 = add nsw i32 %392, %393
  %395 = load i32, i32* %26, align 4
  %396 = sdiv i32 %394, %395
  %397 = sub nsw i32 %385, %396
  store i32 %397, i32* %23, align 4
  %398 = load i32, i32* %23, align 4
  %399 = load i32, i32* %20, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %95, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %398, %402
  %404 = load i32, i32* %20, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %95, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = sdiv i32 %403, %407
  store i32 %408, i32* %28, align 4
  %409 = load i32, i32* %28, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %381
  store i32 10, i32* %29, align 4
  br label %418

412:                                              ; preds = %381
  %413 = load i32, i32* %28, align 4
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i32 9, i32* %29, align 4
  br label %417

416:                                              ; preds = %412
  store i32 8, i32* %29, align 4
  br label %417

417:                                              ; preds = %416, %415
  br label %418

418:                                              ; preds = %417, %411
  %419 = load i32, i32* %20, align 4
  %420 = icmp sgt i32 %419, 15
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  br label %425

422:                                              ; preds = %418
  %423 = load i32, i32* %20, align 4
  %424 = ashr i32 %423, 1
  br label %425

425:                                              ; preds = %422, %421
  %426 = phi i32 [ 7, %421 ], [ %424, %422 ]
  store i32 %426, i32* %30, align 4
  %427 = load i32, i32* %20, align 4
  %428 = load i32, i32* %30, align 4
  %429 = sub nsw i32 %427, %428
  store i32 %429, i32* %31, align 4
  store i32 8, i32* %21, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %55, align 4
  br label %430

430:                                              ; preds = %585, %425
  %431 = load i32, i32* %55, align 4
  %432 = load i32, i32* %31, align 4
  %433 = icmp sle i32 %431, %432
  br i1 %433, label %434, label %588

434:                                              ; preds = %430
  %435 = load i32, i32* %55, align 4
  %436 = load i32, i32* %30, align 4
  %437 = add nsw i32 %435, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %95, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %434
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1218

443:                                              ; preds = %434
  %444 = load i32, i32* %55, align 4
  %445 = load i32, i32* %30, align 4
  %446 = add nsw i32 %444, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %71, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* %21, align 4
  %451 = shl i32 1, %450
  %452 = load i32, i32* %55, align 4
  %453 = load i32, i32* %30, align 4
  %454 = add nsw i32 %452, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %95, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = mul nsw i32 %451, %457
  %459 = load i32, i32* %26, align 4
  %460 = add nsw i32 %458, %459
  %461 = load i32, i32* %26, align 4
  %462 = sdiv i32 %460, %461
  %463 = sub nsw i32 %449, %462
  store i32 %463, i32* %23, align 4
  %464 = load i32, i32* %23, align 4
  %465 = load i32, i32* %29, align 4
  %466 = shl i32 1, %465
  %467 = mul nsw i32 %464, %466
  %468 = load i32, i32* %55, align 4
  %469 = load i32, i32* %30, align 4
  %470 = add nsw i32 %468, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %95, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = add nsw i32 %467, %473
  %475 = load i32, i32* %55, align 4
  %476 = load i32, i32* %30, align 4
  %477 = add nsw i32 %475, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %95, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = sdiv i32 %474, %480
  %482 = load i32, i32* %55, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %99, i64 %483
  store i32 %481, i32* %484, align 4
  %485 = load i32, i32* %55, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %99, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %29, align 4
  %490 = shl i32 1, %489
  %491 = mul nsw i32 %488, %490
  %492 = load i32, i32* %55, align 4
  %493 = load i32, i32* %30, align 4
  %494 = add nsw i32 %492, %493
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %95, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = add nsw i32 %491, %497
  %499 = load i32, i32* %55, align 4
  %500 = load i32, i32* %30, align 4
  %501 = add nsw i32 %499, %500
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %95, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = sdiv i32 %498, %504
  %506 = load i32, i32* %55, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %99, i64 %507
  store i32 %505, i32* %508, align 4
  %509 = load i32, i32* %55, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %99, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %29, align 4
  %514 = shl i32 1, %513
  %515 = mul nsw i32 %512, %514
  %516 = load i32, i32* %55, align 4
  %517 = load i32, i32* %30, align 4
  %518 = add nsw i32 %516, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %95, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = add nsw i32 %515, %521
  %523 = load i32, i32* %55, align 4
  %524 = load i32, i32* %30, align 4
  %525 = add nsw i32 %523, %524
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %95, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = sdiv i32 %522, %528
  %530 = load i32, i32* %55, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %99, i64 %531
  store i32 %529, i32* %532, align 4
  %533 = load i32, i32* %55, align 4
  %534 = load i32, i32* %30, align 4
  %535 = add nsw i32 %533, %534
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %95, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* %55, align 4
  %540 = load i32, i32* %30, align 4
  %541 = add nsw i32 %539, %540
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %95, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = mul nsw i32 %538, %544
  %546 = load i32, i32* %21, align 4
  %547 = load i32, i32* %21, align 4
  %548 = mul nsw i32 %546, %547
  %549 = add nsw i32 %545, %548
  %550 = load i32, i32* %21, align 4
  %551 = load i32, i32* %21, align 4
  %552 = mul nsw i32 %550, %551
  %553 = sdiv i32 %549, %552
  store i32 %553, i32* %61, align 4
  %554 = load i32, i32* %55, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i32, i32* %99, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @abs(i32 %557)
  store i32 %558, i32* %63, align 4
  %559 = load i32, i32* %63, align 4
  %560 = load i32, i32* %25, align 4
  %561 = icmp ugt i32 %559, %560
  br i1 %561, label %562, label %564

562:                                              ; preds = %443
  %563 = load i32, i32* %63, align 4
  store i32 %563, i32* %25, align 4
  br label %564

564:                                              ; preds = %562, %443
  %565 = load i32, i32* %61, align 4
  %566 = load i32, i32* %61, align 4
  %567 = mul i32 %565, %566
  store i32 %567, i32* %62, align 4
  %568 = load i32, i32* %32, align 4
  %569 = load i32, i32* %61, align 4
  %570 = add i32 %568, %569
  store i32 %570, i32* %32, align 4
  %571 = load i32, i32* %33, align 4
  %572 = load i32, i32* %62, align 4
  %573 = add i32 %571, %572
  store i32 %573, i32* %33, align 4
  %574 = load i32, i32* %61, align 4
  %575 = load i32, i32* %31, align 4
  %576 = add nsw i32 %575, 1
  %577 = mul i32 %574, %576
  %578 = load i32, i32* %55, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %87, i64 %579
  store i32 %577, i32* %580, align 4
  %581 = load i32, i32* %61, align 4
  %582 = load i32, i32* %55, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %91, i64 %583
  store i32 %581, i32* %584, align 4
  br label %585

585:                                              ; preds = %564
  %586 = load i32, i32* %55, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %55, align 4
  br label %430

588:                                              ; preds = %430
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %55, align 4
  br label %589

589:                                              ; preds = %633, %588
  %590 = load i32, i32* %55, align 4
  %591 = load i32, i32* %31, align 4
  %592 = icmp sle i32 %590, %591
  br i1 %592, label %593, label %636

593:                                              ; preds = %589
  %594 = load i32, i32* %32, align 4
  %595 = load i32, i32* %55, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %87, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = sub nsw i32 %598, %594
  store i32 %599, i32* %597, align 4
  %600 = load i32, i32* %33, align 4
  %601 = load i32, i32* %32, align 4
  %602 = load i32, i32* %55, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %91, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = mul nsw i32 %601, %605
  %607 = sub nsw i32 %600, %606
  %608 = load i32, i32* %55, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %91, i64 %609
  store i32 %607, i32* %610, align 4
  %611 = load i32, i32* %55, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %87, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = call i32 @abs(i32 %614)
  store i32 %615, i32* %64, align 4
  %616 = load i32, i32* %64, align 4
  %617 = load i32, i32* %18, align 4
  %618 = icmp ugt i32 %616, %617
  br i1 %618, label %619, label %621

619:                                              ; preds = %593
  %620 = load i32, i32* %64, align 4
  store i32 %620, i32* %18, align 4
  br label %621

621:                                              ; preds = %619, %593
  %622 = load i32, i32* %55, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %91, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = call i32 @abs(i32 %625)
  store i32 %626, i32* %64, align 4
  %627 = load i32, i32* %64, align 4
  %628 = load i32, i32* %19, align 4
  %629 = icmp ugt i32 %627, %628
  br i1 %629, label %630, label %632

630:                                              ; preds = %621
  %631 = load i32, i32* %64, align 4
  store i32 %631, i32* %19, align 4
  br label %632

632:                                              ; preds = %630, %621
  br label %633

633:                                              ; preds = %632
  %634 = load i32, i32* %55, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %55, align 4
  br label %589

636:                                              ; preds = %589
  %637 = load i32, i32* %25, align 4
  %638 = call i32 @find_expn(i32 %637)
  %639 = call i32 @find_proper_scale(i32 %638, i32 10)
  store i32 %639, i32* %34, align 4
  %640 = load i32, i32* %18, align 4
  %641 = call i32 @find_expn(i32 %640)
  %642 = call i32 @find_proper_scale(i32 %641, i32 10)
  store i32 %642, i32* %35, align 4
  %643 = load i32, i32* %19, align 4
  %644 = call i32 @find_expn(i32 %643)
  %645 = call i32 @find_proper_scale(i32 %644, i32 10)
  store i32 %645, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %55, align 4
  br label %646

646:                                              ; preds = %703, %636
  %647 = load i32, i32* %55, align 4
  %648 = load i32, i32* %31, align 4
  %649 = icmp sle i32 %647, %648
  br i1 %649, label %650, label %706

650:                                              ; preds = %646
  %651 = load i32, i32* %55, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32, i32* %99, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* %34, align 4
  %656 = shl i32 1, %655
  %657 = sdiv i32 %654, %656
  %658 = load i32, i32* %55, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32, i32* %99, i64 %659
  store i32 %657, i32* %660, align 4
  %661 = load i32, i32* %55, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32, i32* %87, i64 %662
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %35, align 4
  %666 = shl i32 1, %665
  %667 = sdiv i32 %664, %666
  %668 = load i32, i32* %55, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i32, i32* %87, i64 %669
  store i32 %667, i32* %670, align 4
  %671 = load i32, i32* %55, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %91, i64 %672
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* %36, align 4
  %676 = shl i32 1, %675
  %677 = sdiv i32 %674, %676
  %678 = load i32, i32* %55, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i32, i32* %91, i64 %679
  store i32 %677, i32* %680, align 4
  %681 = load i32, i32* %37, align 4
  %682 = load i32, i32* %55, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %87, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = load i32, i32* %55, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %99, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = mul nsw i32 %685, %689
  %691 = add nsw i32 %681, %690
  store i32 %691, i32* %37, align 4
  %692 = load i32, i32* %38, align 4
  %693 = load i32, i32* %55, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, i32* %91, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* %55, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %99, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = mul nsw i32 %696, %700
  %702 = add nsw i32 %692, %701
  store i32 %702, i32* %38, align 4
  br label %703

703:                                              ; preds = %650
  %704 = load i32, i32* %55, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %55, align 4
  br label %646

706:                                              ; preds = %646
  %707 = load i32, i32* %33, align 4
  %708 = load i32, i32* %21, align 4
  %709 = sdiv i32 %707, %708
  %710 = load i32, i32* %31, align 4
  %711 = add nsw i32 %710, 1
  %712 = mul nsw i32 %709, %711
  %713 = load i32, i32* %32, align 4
  %714 = load i32, i32* %21, align 4
  %715 = sdiv i32 %713, %714
  %716 = load i32, i32* %32, align 4
  %717 = mul nsw i32 %715, %716
  %718 = sub nsw i32 %712, %717
  %719 = load i32, i32* %21, align 4
  %720 = mul nsw i32 %718, %719
  store i32 %720, i32* %39, align 4
  %721 = load i32, i32* %39, align 4
  %722 = call i32 @abs(i32 %721)
  %723 = call i32 @find_expn(i32 %722)
  %724 = call i32 @find_proper_scale(i32 %723, i32 10)
  store i32 %724, i32* %40, align 4
  %725 = load i32, i32* %39, align 4
  %726 = load i32, i32* %40, align 4
  %727 = shl i32 1, %726
  %728 = sdiv i32 %725, %727
  store i32 %728, i32* %39, align 4
  %729 = load i32, i32* %39, align 4
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %732

731:                                              ; preds = %706
  store i32 0, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1218

732:                                              ; preds = %706
  %733 = load i32, i32* %37, align 4
  %734 = call i32 @abs(i32 %733)
  %735 = call i32 @find_expn(i32 %734)
  %736 = call i32 @find_proper_scale(i32 %735, i32 10)
  store i32 %736, i32* %41, align 4
  %737 = load i32, i32* %38, align 4
  %738 = call i32 @abs(i32 %737)
  %739 = call i32 @find_expn(i32 %738)
  %740 = call i32 @find_proper_scale(i32 %739, i32 10)
  store i32 %740, i32* %42, align 4
  %741 = load i32, i32* %37, align 4
  %742 = load i32, i32* %41, align 4
  %743 = shl i32 1, %742
  %744 = sdiv i32 %741, %743
  store i32 %744, i32* %37, align 4
  %745 = load i32, i32* %38, align 4
  %746 = load i32, i32* %42, align 4
  %747 = shl i32 1, %746
  %748 = sdiv i32 %745, %747
  store i32 %748, i32* %38, align 4
  %749 = load i32, i32* %38, align 4
  %750 = shl i32 %749, 10
  %751 = load i32, i32* %39, align 4
  %752 = sdiv i32 %750, %751
  store i32 %752, i32* %43, align 4
  %753 = load i32, i32* %37, align 4
  %754 = shl i32 %753, 10
  %755 = load i32, i32* %39, align 4
  %756 = sdiv i32 %754, %755
  store i32 %756, i32* %44, align 4
  %757 = load i32, i32* %29, align 4
  %758 = mul nsw i32 3, %757
  %759 = load i32, i32* %34, align 4
  %760 = sub nsw i32 %758, %759
  %761 = load i32, i32* %35, align 4
  %762 = sub nsw i32 %760, %761
  %763 = load i32, i32* %41, align 4
  %764 = sub nsw i32 %762, %763
  %765 = add nsw i32 %764, 10
  %766 = load i32, i32* %40, align 4
  %767 = add nsw i32 %765, %766
  store i32 %767, i32* %45, align 4
  %768 = load i32, i32* %29, align 4
  %769 = mul nsw i32 3, %768
  %770 = load i32, i32* %34, align 4
  %771 = sub nsw i32 %769, %770
  %772 = load i32, i32* %36, align 4
  %773 = sub nsw i32 %771, %772
  %774 = load i32, i32* %42, align 4
  %775 = sub nsw i32 %773, %774
  %776 = add nsw i32 %775, 10
  %777 = load i32, i32* %40, align 4
  %778 = add nsw i32 %776, %777
  store i32 %778, i32* %46, align 4
  %779 = load i32, i32* %45, align 4
  %780 = sdiv i32 %779, 5
  store i32 %780, i32* %47, align 4
  %781 = load i32, i32* %46, align 4
  %782 = sdiv i32 %781, 3
  store i32 %782, i32* %48, align 4
  %783 = load i32, i32* %45, align 4
  %784 = load i32, i32* %47, align 4
  %785 = mul nsw i32 5, %784
  %786 = sub nsw i32 %783, %785
  store i32 %786, i32* %49, align 4
  %787 = load i32, i32* %46, align 4
  %788 = load i32, i32* %48, align 4
  %789 = mul nsw i32 3, %788
  %790 = sub nsw i32 %787, %789
  store i32 %790, i32* %50, align 4
  store i32 0, i32* %55, align 4
  br label %791

791:                                              ; preds = %910, %732
  %792 = load i32, i32* %55, align 4
  %793 = load i32, i32* @PAPRD_TABLE_SZ, align 4
  %794 = icmp slt i32 %792, %793
  br i1 %794, label %795, label %913

795:                                              ; preds = %791
  %796 = load i32, i32* %55, align 4
  %797 = mul nsw i32 %796, 32
  store i32 %797, i32* %53, align 4
  %798 = load i32, i32* %44, align 4
  %799 = load i32, i32* %53, align 4
  %800 = mul nsw i32 %798, %799
  %801 = ashr i32 %800, 6
  %802 = load i32, i32* %47, align 4
  %803 = ashr i32 %801, %802
  store i32 %803, i32* %51, align 4
  %804 = load i32, i32* %51, align 4
  %805 = load i32, i32* %53, align 4
  %806 = mul nsw i32 %804, %805
  %807 = load i32, i32* %47, align 4
  %808 = ashr i32 %806, %807
  store i32 %808, i32* %51, align 4
  %809 = load i32, i32* %51, align 4
  %810 = load i32, i32* %53, align 4
  %811 = mul nsw i32 %809, %810
  %812 = load i32, i32* %47, align 4
  %813 = ashr i32 %811, %812
  store i32 %813, i32* %51, align 4
  %814 = load i32, i32* %51, align 4
  %815 = load i32, i32* %53, align 4
  %816 = mul nsw i32 %814, %815
  %817 = load i32, i32* %47, align 4
  %818 = ashr i32 %816, %817
  store i32 %818, i32* %51, align 4
  %819 = load i32, i32* %51, align 4
  %820 = load i32, i32* %53, align 4
  %821 = mul nsw i32 %819, %820
  %822 = load i32, i32* %47, align 4
  %823 = ashr i32 %821, %822
  store i32 %823, i32* %51, align 4
  %824 = load i32, i32* %51, align 4
  %825 = load i32, i32* %49, align 4
  %826 = ashr i32 %824, %825
  store i32 %826, i32* %51, align 4
  %827 = load i32, i32* %43, align 4
  %828 = load i32, i32* %53, align 4
  %829 = mul nsw i32 %827, %828
  %830 = load i32, i32* %48, align 4
  %831 = ashr i32 %829, %830
  store i32 %831, i32* %52, align 4
  %832 = load i32, i32* %52, align 4
  %833 = load i32, i32* %53, align 4
  %834 = mul nsw i32 %832, %833
  %835 = load i32, i32* %48, align 4
  %836 = ashr i32 %834, %835
  store i32 %836, i32* %52, align 4
  %837 = load i32, i32* %52, align 4
  %838 = load i32, i32* %53, align 4
  %839 = mul nsw i32 %837, %838
  %840 = load i32, i32* %48, align 4
  %841 = ashr i32 %839, %840
  store i32 %841, i32* %52, align 4
  %842 = load i32, i32* %52, align 4
  %843 = load i32, i32* %50, align 4
  %844 = ashr i32 %842, %843
  store i32 %844, i32* %52, align 4
  %845 = load i32, i32* %51, align 4
  %846 = load i32, i32* %52, align 4
  %847 = add nsw i32 %845, %846
  %848 = load i32, i32* %53, align 4
  %849 = mul nsw i32 256, %848
  %850 = load i32, i32* %26, align 4
  %851 = sdiv i32 %849, %850
  %852 = add nsw i32 %847, %851
  %853 = load i32, i32* %55, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, i32* %83, i64 %854
  store i32 %852, i32* %855, align 4
  %856 = load i32, i32* %55, align 4
  %857 = icmp sge i32 %856, 2
  br i1 %857, label %858, label %893

858:                                              ; preds = %795
  %859 = load i32, i32* %55, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32, i32* %83, i64 %860
  %862 = load i32, i32* %861, align 4
  %863 = load i32, i32* %55, align 4
  %864 = sub nsw i32 %863, 1
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i32, i32* %83, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = sub nsw i32 %862, %867
  store i32 %868, i32* %53, align 4
  %869 = load i32, i32* %53, align 4
  %870 = icmp slt i32 %869, 0
  br i1 %870, label %871, label %892

871:                                              ; preds = %858
  %872 = load i32, i32* %55, align 4
  %873 = sub nsw i32 %872, 1
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds i32, i32* %83, i64 %874
  %876 = load i32, i32* %875, align 4
  %877 = load i32, i32* %55, align 4
  %878 = sub nsw i32 %877, 1
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i32, i32* %83, i64 %879
  %881 = load i32, i32* %880, align 4
  %882 = load i32, i32* %55, align 4
  %883 = sub nsw i32 %882, 2
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds i32, i32* %83, i64 %884
  %886 = load i32, i32* %885, align 4
  %887 = sub nsw i32 %881, %886
  %888 = add nsw i32 %876, %887
  %889 = load i32, i32* %55, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds i32, i32* %83, i64 %890
  store i32 %888, i32* %891, align 4
  br label %892

892:                                              ; preds = %871, %858
  br label %893

893:                                              ; preds = %892, %795
  %894 = load i32, i32* %55, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i32, i32* %83, i64 %895
  %897 = load i32, i32* %896, align 4
  %898 = icmp slt i32 %897, 1400
  br i1 %898, label %899, label %904

899:                                              ; preds = %893
  %900 = load i32, i32* %55, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32* %83, i64 %901
  %903 = load i32, i32* %902, align 4
  br label %905

904:                                              ; preds = %893
  br label %905

905:                                              ; preds = %904, %899
  %906 = phi i32 [ %903, %899 ], [ 1400, %904 ]
  %907 = load i32, i32* %55, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i32, i32* %83, i64 %908
  store i32 %906, i32* %909, align 4
  br label %910

910:                                              ; preds = %905
  %911 = load i32, i32* %55, align 4
  %912 = add nsw i32 %911, 1
  store i32 %912, i32* %55, align 4
  br label %791

913:                                              ; preds = %791
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %55, align 4
  br label %914

914:                                              ; preds = %991, %913
  %915 = load i32, i32* %55, align 4
  %916 = load i32, i32* %31, align 4
  %917 = icmp sle i32 %915, %916
  br i1 %917, label %918, label %994

918:                                              ; preds = %914
  %919 = load i32, i32* %55, align 4
  %920 = load i32, i32* %30, align 4
  %921 = add nsw i32 %919, %920
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds i32, i32* %79, i64 %922
  %924 = load i32, i32* %923, align 4
  %925 = load i32, i32* %29, align 4
  %926 = shl i32 %924, %925
  %927 = load i32, i32* %55, align 4
  %928 = load i32, i32* %30, align 4
  %929 = add nsw i32 %927, %928
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i32, i32* %95, i64 %930
  %932 = load i32, i32* %931, align 4
  %933 = add nsw i32 %926, %932
  %934 = load i32, i32* %55, align 4
  %935 = load i32, i32* %30, align 4
  %936 = add nsw i32 %934, %935
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds i32, i32* %95, i64 %937
  %939 = load i32, i32* %938, align 4
  %940 = sdiv i32 %933, %939
  store i32 %940, i32* %65, align 4
  %941 = load i32, i32* %65, align 4
  %942 = load i32, i32* %29, align 4
  %943 = shl i32 %941, %942
  %944 = load i32, i32* %55, align 4
  %945 = load i32, i32* %30, align 4
  %946 = add nsw i32 %944, %945
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i32, i32* %95, i64 %947
  %949 = load i32, i32* %948, align 4
  %950 = add nsw i32 %943, %949
  %951 = load i32, i32* %55, align 4
  %952 = load i32, i32* %30, align 4
  %953 = add nsw i32 %951, %952
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i32, i32* %95, i64 %954
  %956 = load i32, i32* %955, align 4
  %957 = sdiv i32 %950, %956
  store i32 %957, i32* %65, align 4
  %958 = load i32, i32* %65, align 4
  %959 = load i32, i32* %29, align 4
  %960 = shl i32 %958, %959
  %961 = load i32, i32* %55, align 4
  %962 = load i32, i32* %30, align 4
  %963 = add nsw i32 %961, %962
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds i32, i32* %95, i64 %964
  %966 = load i32, i32* %965, align 4
  %967 = add nsw i32 %960, %966
  %968 = load i32, i32* %55, align 4
  %969 = load i32, i32* %30, align 4
  %970 = add nsw i32 %968, %969
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds i32, i32* %95, i64 %971
  %973 = load i32, i32* %972, align 4
  %974 = sdiv i32 %967, %973
  store i32 %974, i32* %65, align 4
  %975 = load i32, i32* %37, align 4
  %976 = load i32, i32* %55, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds i32, i32* %87, i64 %977
  %979 = load i32, i32* %978, align 4
  %980 = load i32, i32* %65, align 4
  %981 = mul nsw i32 %979, %980
  %982 = add nsw i32 %975, %981
  store i32 %982, i32* %37, align 4
  %983 = load i32, i32* %38, align 4
  %984 = load i32, i32* %55, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i32, i32* %91, i64 %985
  %987 = load i32, i32* %986, align 4
  %988 = load i32, i32* %65, align 4
  %989 = mul nsw i32 %987, %988
  %990 = add nsw i32 %983, %989
  store i32 %990, i32* %38, align 4
  br label %991

991:                                              ; preds = %918
  %992 = load i32, i32* %55, align 4
  %993 = add nsw i32 %992, 1
  store i32 %993, i32* %55, align 4
  br label %914

994:                                              ; preds = %914
  %995 = load i32, i32* %37, align 4
  %996 = call i32 @abs(i32 %995)
  %997 = call i32 @find_expn(i32 %996)
  %998 = call i32 @find_proper_scale(i32 %997, i32 10)
  store i32 %998, i32* %41, align 4
  %999 = load i32, i32* %38, align 4
  %1000 = call i32 @abs(i32 %999)
  %1001 = call i32 @find_expn(i32 %1000)
  %1002 = call i32 @find_proper_scale(i32 %1001, i32 10)
  store i32 %1002, i32* %42, align 4
  %1003 = load i32, i32* %37, align 4
  %1004 = load i32, i32* %41, align 4
  %1005 = shl i32 1, %1004
  %1006 = sdiv i32 %1003, %1005
  store i32 %1006, i32* %37, align 4
  %1007 = load i32, i32* %38, align 4
  %1008 = load i32, i32* %42, align 4
  %1009 = shl i32 1, %1008
  %1010 = sdiv i32 %1007, %1009
  store i32 %1010, i32* %38, align 4
  %1011 = load i32, i32* %38, align 4
  %1012 = shl i32 %1011, 10
  %1013 = load i32, i32* %39, align 4
  %1014 = sdiv i32 %1012, %1013
  store i32 %1014, i32* %43, align 4
  %1015 = load i32, i32* %37, align 4
  %1016 = shl i32 %1015, 10
  %1017 = load i32, i32* %39, align 4
  %1018 = sdiv i32 %1016, %1017
  store i32 %1018, i32* %44, align 4
  %1019 = load i32, i32* %29, align 4
  %1020 = mul nsw i32 3, %1019
  %1021 = load i32, i32* %34, align 4
  %1022 = sub nsw i32 %1020, %1021
  %1023 = load i32, i32* %35, align 4
  %1024 = sub nsw i32 %1022, %1023
  %1025 = load i32, i32* %41, align 4
  %1026 = sub nsw i32 %1024, %1025
  %1027 = add nsw i32 %1026, 10
  %1028 = load i32, i32* %40, align 4
  %1029 = add nsw i32 %1027, %1028
  %1030 = add nsw i32 %1029, 5
  store i32 %1030, i32* %45, align 4
  %1031 = load i32, i32* %29, align 4
  %1032 = mul nsw i32 3, %1031
  %1033 = load i32, i32* %34, align 4
  %1034 = sub nsw i32 %1032, %1033
  %1035 = load i32, i32* %36, align 4
  %1036 = sub nsw i32 %1034, %1035
  %1037 = load i32, i32* %42, align 4
  %1038 = sub nsw i32 %1036, %1037
  %1039 = add nsw i32 %1038, 10
  %1040 = load i32, i32* %40, align 4
  %1041 = add nsw i32 %1039, %1040
  %1042 = add nsw i32 %1041, 5
  store i32 %1042, i32* %46, align 4
  %1043 = load i32, i32* %45, align 4
  %1044 = sdiv i32 %1043, 5
  store i32 %1044, i32* %47, align 4
  %1045 = load i32, i32* %46, align 4
  %1046 = sdiv i32 %1045, 3
  store i32 %1046, i32* %48, align 4
  %1047 = load i32, i32* %45, align 4
  %1048 = load i32, i32* %47, align 4
  %1049 = mul nsw i32 5, %1048
  %1050 = sub nsw i32 %1047, %1049
  store i32 %1050, i32* %49, align 4
  %1051 = load i32, i32* %46, align 4
  %1052 = load i32, i32* %48, align 4
  %1053 = mul nsw i32 3, %1052
  %1054 = sub nsw i32 %1051, %1053
  store i32 %1054, i32* %50, align 4
  store i32 0, i32* %55, align 4
  br label %1055

1055:                                             ; preds = %1212, %994
  %1056 = load i32, i32* %55, align 4
  %1057 = load i32, i32* @PAPRD_TABLE_SZ, align 4
  %1058 = icmp slt i32 %1056, %1057
  br i1 %1058, label %1059, label %1215

1059:                                             ; preds = %1055
  %1060 = load i32, i32* %55, align 4
  %1061 = icmp eq i32 %1060, 4
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1059
  br label %1212

1063:                                             ; preds = %1059
  %1064 = load i32, i32* %55, align 4
  %1065 = mul nsw i32 %1064, 32
  store i32 %1065, i32* %53, align 4
  %1066 = load i32, i32* %44, align 4
  %1067 = icmp sgt i32 %1066, 0
  br i1 %1067, label %1068, label %1080

1068:                                             ; preds = %1063
  %1069 = load i32, i32* %44, align 4
  %1070 = load i32, i32* %53, align 4
  %1071 = mul nsw i32 %1069, %1070
  %1072 = sub nsw i32 %1071, 64
  %1073 = ashr i32 %1072, 6
  %1074 = load i32, i32* %47, align 4
  %1075 = shl i32 1, %1074
  %1076 = sub nsw i32 %1073, %1075
  %1077 = load i32, i32* %47, align 4
  %1078 = shl i32 1, %1077
  %1079 = sdiv i32 %1076, %1078
  store i32 %1079, i32* %51, align 4
  br label %1092

1080:                                             ; preds = %1063
  %1081 = load i32, i32* %44, align 4
  %1082 = load i32, i32* %53, align 4
  %1083 = mul nsw i32 %1081, %1082
  %1084 = sub nsw i32 %1083, 64
  %1085 = ashr i32 %1084, 6
  %1086 = load i32, i32* %47, align 4
  %1087 = shl i32 1, %1086
  %1088 = add nsw i32 %1085, %1087
  %1089 = load i32, i32* %47, align 4
  %1090 = shl i32 1, %1089
  %1091 = sdiv i32 %1088, %1090
  store i32 %1091, i32* %51, align 4
  br label %1092

1092:                                             ; preds = %1080, %1068
  %1093 = load i32, i32* %51, align 4
  %1094 = load i32, i32* %53, align 4
  %1095 = mul nsw i32 %1093, %1094
  %1096 = load i32, i32* %47, align 4
  %1097 = shl i32 1, %1096
  %1098 = sdiv i32 %1095, %1097
  store i32 %1098, i32* %51, align 4
  %1099 = load i32, i32* %51, align 4
  %1100 = load i32, i32* %53, align 4
  %1101 = mul nsw i32 %1099, %1100
  %1102 = load i32, i32* %47, align 4
  %1103 = shl i32 1, %1102
  %1104 = sdiv i32 %1101, %1103
  store i32 %1104, i32* %51, align 4
  %1105 = load i32, i32* %51, align 4
  %1106 = load i32, i32* %53, align 4
  %1107 = mul nsw i32 %1105, %1106
  %1108 = load i32, i32* %47, align 4
  %1109 = shl i32 1, %1108
  %1110 = sdiv i32 %1107, %1109
  store i32 %1110, i32* %51, align 4
  %1111 = load i32, i32* %51, align 4
  %1112 = load i32, i32* %53, align 4
  %1113 = mul nsw i32 %1111, %1112
  %1114 = load i32, i32* %47, align 4
  %1115 = shl i32 1, %1114
  %1116 = sdiv i32 %1113, %1115
  store i32 %1116, i32* %51, align 4
  %1117 = load i32, i32* %51, align 4
  %1118 = load i32, i32* %49, align 4
  %1119 = shl i32 1, %1118
  %1120 = sdiv i32 %1117, %1119
  store i32 %1120, i32* %51, align 4
  %1121 = load i32, i32* %44, align 4
  %1122 = icmp sgt i32 %1121, 0
  br i1 %1122, label %1123, label %1133

1123:                                             ; preds = %1092
  %1124 = load i32, i32* %43, align 4
  %1125 = load i32, i32* %53, align 4
  %1126 = mul nsw i32 %1124, %1125
  %1127 = load i32, i32* %48, align 4
  %1128 = shl i32 1, %1127
  %1129 = sub nsw i32 %1126, %1128
  %1130 = load i32, i32* %48, align 4
  %1131 = shl i32 1, %1130
  %1132 = sdiv i32 %1129, %1131
  store i32 %1132, i32* %52, align 4
  br label %1143

1133:                                             ; preds = %1092
  %1134 = load i32, i32* %43, align 4
  %1135 = load i32, i32* %53, align 4
  %1136 = mul nsw i32 %1134, %1135
  %1137 = load i32, i32* %48, align 4
  %1138 = shl i32 1, %1137
  %1139 = add nsw i32 %1136, %1138
  %1140 = load i32, i32* %48, align 4
  %1141 = shl i32 1, %1140
  %1142 = sdiv i32 %1139, %1141
  store i32 %1142, i32* %52, align 4
  br label %1143

1143:                                             ; preds = %1133, %1123
  %1144 = load i32, i32* %52, align 4
  %1145 = load i32, i32* %53, align 4
  %1146 = mul nsw i32 %1144, %1145
  %1147 = load i32, i32* %48, align 4
  %1148 = shl i32 1, %1147
  %1149 = sdiv i32 %1146, %1148
  store i32 %1149, i32* %52, align 4
  %1150 = load i32, i32* %52, align 4
  %1151 = load i32, i32* %53, align 4
  %1152 = mul nsw i32 %1150, %1151
  %1153 = load i32, i32* %48, align 4
  %1154 = shl i32 1, %1153
  %1155 = sdiv i32 %1152, %1154
  store i32 %1155, i32* %52, align 4
  %1156 = load i32, i32* %52, align 4
  %1157 = load i32, i32* %50, align 4
  %1158 = shl i32 1, %1157
  %1159 = sdiv i32 %1156, %1158
  store i32 %1159, i32* %52, align 4
  %1160 = load i32, i32* %55, align 4
  %1161 = icmp slt i32 %1160, 4
  br i1 %1161, label %1162, label %1163

1162:                                             ; preds = %1143
  store i32 0, i32* %66, align 4
  br label %1176

1163:                                             ; preds = %1143
  %1164 = load i32, i32* %51, align 4
  %1165 = load i32, i32* %52, align 4
  %1166 = add nsw i32 %1164, %1165
  store i32 %1166, i32* %66, align 4
  %1167 = load i32, i32* %66, align 4
  %1168 = icmp slt i32 %1167, -150
  br i1 %1168, label %1169, label %1170

1169:                                             ; preds = %1163
  store i32 -150, i32* %66, align 4
  br label %1175

1170:                                             ; preds = %1163
  %1171 = load i32, i32* %66, align 4
  %1172 = icmp sgt i32 %1171, 150
  br i1 %1172, label %1173, label %1174

1173:                                             ; preds = %1170
  store i32 150, i32* %66, align 4
  br label %1174

1174:                                             ; preds = %1173, %1170
  br label %1175

1175:                                             ; preds = %1174, %1169
  br label %1176

1176:                                             ; preds = %1175, %1162
  %1177 = load i32, i32* %55, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i32, i32* %83, i64 %1178
  %1180 = load i32, i32* %1179, align 4
  %1181 = and i32 %1180, 2047
  %1182 = shl i32 %1181, 11
  %1183 = load i32, i32* %66, align 4
  %1184 = and i32 %1183, 2047
  %1185 = add nsw i32 %1182, %1184
  %1186 = load i32*, i32** %8, align 8
  %1187 = load i32, i32* %55, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds i32, i32* %1186, i64 %1188
  store i32 %1185, i32* %1189, align 4
  %1190 = load i32, i32* %55, align 4
  %1191 = icmp eq i32 %1190, 5
  br i1 %1191, label %1192, label %1211

1192:                                             ; preds = %1176
  %1193 = load i32, i32* %66, align 4
  %1194 = add nsw i32 %1193, 2
  %1195 = ashr i32 %1194, 1
  store i32 %1195, i32* %66, align 4
  %1196 = load i32, i32* %55, align 4
  %1197 = sub nsw i32 %1196, 1
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds i32, i32* %83, i64 %1198
  %1200 = load i32, i32* %1199, align 4
  %1201 = and i32 %1200, 2047
  %1202 = shl i32 %1201, 11
  %1203 = load i32, i32* %66, align 4
  %1204 = and i32 %1203, 2047
  %1205 = add nsw i32 %1202, %1204
  %1206 = load i32*, i32** %8, align 8
  %1207 = load i32, i32* %55, align 4
  %1208 = sub nsw i32 %1207, 1
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds i32, i32* %1206, i64 %1209
  store i32 %1205, i32* %1210, align 4
  br label %1211

1211:                                             ; preds = %1192, %1176
  br label %1212

1212:                                             ; preds = %1211, %1062
  %1213 = load i32, i32* %55, align 4
  %1214 = add nsw i32 %1213, 1
  store i32 %1214, i32* %55, align 4
  br label %1055

1215:                                             ; preds = %1055
  %1216 = load i32, i32* %26, align 4
  %1217 = load i32*, i32** %9, align 8
  store i32 %1216, i32* %1217, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %60, align 4
  br label %1218

1218:                                             ; preds = %1215, %731, %442, %380, %312, %288
  %1219 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %1219)
  %1220 = load i32, i32* %5, align 4
  ret i32 %1220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @abs(i32) #2

declare dso_local i32 @find_proper_scale(i32, i32) #2

declare dso_local i32 @find_expn(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
