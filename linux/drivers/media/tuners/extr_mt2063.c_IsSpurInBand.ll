; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_IsSpurInBand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_IsSpurInBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT2063_AvoidSpursData_t = type { i32, i32, i32, i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MT2063_AvoidSpursData_t*, i32*, i32*)* @IsSpurInBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsSpurInBand(%struct.MT2063_AvoidSpursData_t* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MT2063_AvoidSpursData_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  store %struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_AvoidSpursData_t** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %32 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %33 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %36 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %39 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %42 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %48 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %52 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @UINT_MAX, align 4
  %57 = sdiv i32 %56, 2
  %58 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %59 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %57, %60
  %62 = sdiv i32 %55, %61
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  %64 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = load i32*, i32** %6, align 8
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @gcd(i32 %66, i32 %67)
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @gcd(i32 %69, i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @max(i32 %71, i32 %72)
  store i32 %73, i32* %26, align 4
  %74 = load i32, i32* %26, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %29, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @gcd(i32 %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @max(i32 %78, i32 %79)
  store i32 %80, i32* %27, align 4
  %81 = load i32, i32* %27, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %31, align 4
  %83 = load i32, i32* %25, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @gcd(i32 %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @max(i32 %85, i32 %86)
  store i32 %87, i32* %28, align 4
  %88 = load i32, i32* %28, align 4
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %30, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @DIV_ROUND_UP(i32 %92, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %382, %3
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %101 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %99, %102
  br i1 %103, label %104, label %385

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %29, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %26, align 4
  %110 = sdiv i32 %108, %109
  %111 = mul nsw i32 %105, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %29, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %26, align 4
  %116 = sdiv i32 %114, %115
  %117 = sub nsw i32 %111, %116
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %29, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %26, align 4
  %122 = sdiv i32 %120, %121
  %123 = sdiv i32 %117, %122
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %5, align 8
  %126 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %104
  br label %385

130:                                              ; preds = %104
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %29, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %26, align 4
  %136 = sdiv i32 %134, %135
  %137 = mul nsw i32 %131, %136
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %29, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %26, align 4
  %142 = sdiv i32 %140, %141
  %143 = add nsw i32 %137, %142
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %29, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %26, align 4
  %148 = sdiv i32 %146, %147
  %149 = sdiv i32 %143, %148
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %130
  br label %382

154:                                              ; preds = %130
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %31, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %27, align 4
  %160 = sdiv i32 %158, %159
  %161 = mul nsw i32 %155, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %31, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %27, align 4
  %166 = sdiv i32 %164, %165
  %167 = sub nsw i32 %161, %166
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %31, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %27, align 4
  %172 = sdiv i32 %170, %171
  %173 = sdiv i32 %167, %172
  store i32 %173, i32* %21, align 4
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %22, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %223

177:                                              ; preds = %154
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %27, align 4
  %181 = sdiv i32 %179, %180
  %182 = mul nsw i32 %178, %181
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %27, align 4
  %186 = sdiv i32 %184, %185
  %187 = mul nsw i32 %183, %186
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %17, align 4
  %191 = sub nsw i32 %189, %190
  %192 = mul nsw i32 %188, %191
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %27, align 4
  %196 = srem i32 %194, %195
  %197 = mul nsw i32 %193, %196
  %198 = add nsw i32 %192, %197
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %27, align 4
  %202 = srem i32 %200, %201
  %203 = mul nsw i32 %199, %202
  %204 = sub nsw i32 %198, %203
  store i32 %204, i32* %18, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %13, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sdiv i32 %207, %210
  %212 = add nsw i32 %211, 1
  %213 = load i32*, i32** %7, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %18, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sdiv i32 %216, %219
  %221 = add nsw i32 %220, 1
  %222 = load i32*, i32** %6, align 8
  store i32 %221, i32* %222, align 4
  store i32 1, i32* %4, align 4
  br label %386

223:                                              ; preds = %154
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %30, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %28, align 4
  %229 = sdiv i32 %227, %228
  %230 = mul nsw i32 %224, %229
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %30, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %28, align 4
  %235 = sdiv i32 %233, %234
  %236 = add nsw i32 %230, %235
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %30, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %28, align 4
  %241 = sdiv i32 %239, %240
  %242 = sdiv i32 %236, %241
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %30, align 4
  %246 = add nsw i32 %244, %245
  %247 = load i32, i32* %28, align 4
  %248 = sdiv i32 %246, %247
  %249 = mul nsw i32 %243, %248
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %30, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32, i32* %28, align 4
  %254 = sdiv i32 %252, %253
  %255 = sub nsw i32 %249, %254
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %30, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %28, align 4
  %260 = sdiv i32 %258, %259
  %261 = sdiv i32 %255, %260
  store i32 %261, i32* %24, align 4
  %262 = load i32, i32* %23, align 4
  %263 = load i32, i32* %24, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %311

265:                                              ; preds = %223
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %28, align 4
  %269 = sdiv i32 %267, %268
  %270 = mul nsw i32 %266, %269
  store i32 %270, i32* %16, align 4
  %271 = load i32, i32* %23, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %28, align 4
  %274 = sdiv i32 %272, %273
  %275 = mul nsw i32 %271, %274
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* %28, align 4
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %17, align 4
  %279 = sub nsw i32 %277, %278
  %280 = mul nsw i32 %276, %279
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %28, align 4
  %284 = srem i32 %282, %283
  %285 = mul nsw i32 %281, %284
  %286 = add nsw i32 %280, %285
  %287 = load i32, i32* %23, align 4
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %28, align 4
  %290 = srem i32 %288, %289
  %291 = mul nsw i32 %287, %290
  %292 = sub nsw i32 %286, %291
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %293, %294
  %296 = load i32, i32* %23, align 4
  %297 = load i32, i32* %8, align 4
  %298 = sub nsw i32 %296, %297
  %299 = sdiv i32 %295, %298
  %300 = add nsw i32 %299, 1
  %301 = load i32*, i32** %7, align 8
  store i32 %300, i32* %301, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %18, align 4
  %304 = sub nsw i32 %302, %303
  %305 = load i32, i32* %23, align 4
  %306 = load i32, i32* %8, align 4
  %307 = sub nsw i32 %305, %306
  %308 = sdiv i32 %304, %307
  %309 = add nsw i32 %308, 1
  %310 = load i32*, i32** %6, align 8
  store i32 %309, i32* %310, align 4
  store i32 1, i32* %4, align 4
  br label %386

311:                                              ; preds = %223
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %31, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* %27, align 4
  %317 = sdiv i32 %315, %316
  %318 = mul nsw i32 %312, %317
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %31, align 4
  %321 = add nsw i32 %319, %320
  %322 = load i32, i32* %27, align 4
  %323 = sdiv i32 %321, %322
  %324 = add nsw i32 %318, %323
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %31, align 4
  %327 = add nsw i32 %325, %326
  %328 = load i32, i32* %27, align 4
  %329 = sdiv i32 %327, %328
  %330 = sdiv i32 %324, %329
  store i32 %330, i32* %20, align 4
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* %20, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %381

334:                                              ; preds = %311
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* %10, align 4
  %337 = load i32, i32* %27, align 4
  %338 = sdiv i32 %336, %337
  %339 = mul nsw i32 %335, %338
  store i32 %339, i32* %16, align 4
  %340 = load i32, i32* %19, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %27, align 4
  %343 = sdiv i32 %341, %342
  %344 = mul nsw i32 %340, %343
  store i32 %344, i32* %17, align 4
  %345 = load i32, i32* %27, align 4
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %17, align 4
  %348 = sub nsw i32 %346, %347
  %349 = mul nsw i32 %345, %348
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* %27, align 4
  %353 = srem i32 %351, %352
  %354 = mul nsw i32 %350, %353
  %355 = add nsw i32 %349, %354
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %27, align 4
  %359 = srem i32 %357, %358
  %360 = mul nsw i32 %356, %359
  %361 = sub nsw i32 %355, %360
  store i32 %361, i32* %18, align 4
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* %18, align 4
  %364 = add nsw i32 %362, %363
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* %8, align 4
  %367 = sub nsw i32 %365, %366
  %368 = sdiv i32 %364, %367
  %369 = add nsw i32 %368, 1
  %370 = load i32*, i32** %7, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32, i32* %18, align 4
  %372 = load i32, i32* %13, align 4
  %373 = add nsw i32 %371, %372
  %374 = sub nsw i32 0, %373
  %375 = load i32, i32* %19, align 4
  %376 = load i32, i32* %8, align 4
  %377 = sub nsw i32 %375, %376
  %378 = sdiv i32 %374, %377
  %379 = add nsw i32 %378, 1
  %380 = load i32*, i32** %6, align 8
  store i32 %379, i32* %380, align 4
  store i32 1, i32* %4, align 4
  br label %386

381:                                              ; preds = %311
  br label %382

382:                                              ; preds = %381, %153
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  br label %98

385:                                              ; preds = %129, %98
  store i32 0, i32* %4, align 4
  br label %386

386:                                              ; preds = %385, %334, %265, %177
  %387 = load i32, i32* %4, align 4
  ret i32 %387
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
