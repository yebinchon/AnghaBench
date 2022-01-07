; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_get_sigma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_get_sigma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_pmecc_user*)* @atmel_pmecc_get_sigma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pmecc_get_sigma(%struct.atmel_pmecc_user* %0) #0 {
  %2 = alloca %struct.atmel_pmecc_user*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %2, align 8
  %29 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %30 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %3, align 8
  %32 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %33 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %4, align 8
  %35 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %36 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  %38 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %6, align 8
  %41 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %42 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %7, align 8
  %44 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %45 = call i32 @get_sectorsize(%struct.atmel_pmecc_user* %44)
  %46 = icmp eq i32 %45, 512
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 13, i32 14
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %53 = call i32 @get_strength(%struct.atmel_pmecc_user* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %58 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %57, i32 0, i32 6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %12, align 8
  %62 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %63 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %13, align 8
  %67 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %68 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %19, align 8
  store i32 0, i32* %17, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 -1, i32* %71, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memset(i32* %72, i32 0, i32 %76)
  %78 = load i32*, i32** %19, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 1, i32* %79, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 1, i32* %81, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 2
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = ashr i32 %91, 1
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 0, i32* %96, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(i32* %100, i32 0, i32 %104)
  %106 = load i32*, i32** %19, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 1, i32* %109, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 0, i32* %116, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 2
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = ashr i32 %124, 1
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** %19, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %128, i64 %133
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 4, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memset(i32* %134, i32 0, i32 %138)
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %641, %1
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %644

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  %146 = shl i32 %145, 1
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %279

158:                                              ; preds = %144
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %3, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 1
  %168 = sub nsw i32 %161, %167
  %169 = sub nsw i32 %168, 1
  %170 = sdiv i32 %169, 2
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 1
  %178 = sub nsw i32 %171, %177
  %179 = sub nsw i32 %178, 1
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %158
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 2
  store i32 %184, i32* %18, align 4
  br label %188

185:                                              ; preds = %158
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %236

192:                                              ; preds = %188
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %222, %192
  %194 = load i32, i32* %15, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 1
  %201 = add nsw i32 %200, 1
  %202 = icmp sle i32 %194, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %193
  %204 = load i32*, i32** %19, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %11, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %204, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %19, align 8
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* %11, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %213, i64 %220
  store i32 %212, i32* %221, align 4
  br label %222

222:                                              ; preds = %203
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %193

225:                                              ; preds = %193
  %226 = load i32*, i32** %3, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %3, align 8
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 %230, i32* %235, align 4
  br label %644

236:                                              ; preds = %188
  store i32 0, i32* %15, align 4
  br label %237

237:                                              ; preds = %265, %236
  %238 = load i32, i32* %15, align 4
  %239 = load i32*, i32** %3, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 1
  %245 = icmp sle i32 %238, %244
  br i1 %245, label %246, label %268

246:                                              ; preds = %237
  %247 = load i32*, i32** %19, align 8
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %11, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %247, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %19, align 8
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %11, align 4
  %260 = mul nsw i32 %258, %259
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %256, i64 %263
  store i32 %255, i32* %264, align 4
  br label %265

265:                                              ; preds = %246
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  br label %237

268:                                              ; preds = %237
  %269 = load i32*, i32** %3, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %3, align 8
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32 %273, i32* %278, align 4
  br label %506

279:                                              ; preds = %144
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %280

280:                                              ; preds = %307, %279
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %14, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %310

284:                                              ; preds = %280
  %285 = load i32*, i32** %6, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %284
  %292 = load i32*, i32** %7, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %21, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %291
  %300 = load i32*, i32** %7, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %15, align 4
  store i32 %305, i32* %20, align 4
  br label %306

306:                                              ; preds = %299, %291, %284
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %15, align 4
  br label %280

310:                                              ; preds = %280
  %311 = load i32*, i32** %5, align 8
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %5, align 8
  %317 = load i32, i32* %20, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %315, %320
  store i32 %321, i32* %22, align 4
  %322 = load i32*, i32** %3, align 8
  %323 = load i32, i32* %14, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = ashr i32 %326, 1
  %328 = load i32*, i32** %3, align 8
  %329 = load i32, i32* %20, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = ashr i32 %332, 1
  %334 = load i32, i32* %22, align 4
  %335 = add nsw i32 %333, %334
  %336 = icmp sgt i32 %327, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %310
  %338 = load i32*, i32** %3, align 8
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %3, align 8
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  store i32 %342, i32* %347, align 4
  br label %363

348:                                              ; preds = %310
  %349 = load i32*, i32** %3, align 8
  %350 = load i32, i32* %20, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = ashr i32 %353, 1
  %355 = load i32, i32* %22, align 4
  %356 = add nsw i32 %354, %355
  %357 = mul nsw i32 %356, 2
  %358 = load i32*, i32** %3, align 8
  %359 = load i32, i32* %14, align 4
  %360 = add nsw i32 %359, 1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32 %357, i32* %362, align 4
  br label %363

363:                                              ; preds = %348, %337
  store i32 0, i32* %16, align 4
  br label %364

364:                                              ; preds = %378, %363
  %365 = load i32, i32* %16, align 4
  %366 = load i32, i32* %11, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %381

368:                                              ; preds = %364
  %369 = load i32*, i32** %19, align 8
  %370 = load i32, i32* %14, align 4
  %371 = add nsw i32 %370, 1
  %372 = load i32, i32* %11, align 4
  %373 = mul nsw i32 %371, %372
  %374 = load i32, i32* %16, align 4
  %375 = add nsw i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %369, i64 %376
  store i32 0, i32* %377, align 4
  br label %378

378:                                              ; preds = %368
  %379 = load i32, i32* %16, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %16, align 4
  br label %364

381:                                              ; preds = %364
  store i32 0, i32* %16, align 4
  br label %382

382:                                              ; preds = %468, %381
  %383 = load i32, i32* %16, align 4
  %384 = load i32*, i32** %3, align 8
  %385 = load i32, i32* %20, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = ashr i32 %388, 1
  %390 = icmp sle i32 %383, %389
  br i1 %390, label %391, label %471

391:                                              ; preds = %382
  %392 = load i32*, i32** %19, align 8
  %393 = load i32, i32* %20, align 4
  %394 = load i32, i32* %11, align 4
  %395 = mul nsw i32 %393, %394
  %396 = load i32, i32* %16, align 4
  %397 = add nsw i32 %395, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %392, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %391
  %403 = load i32*, i32** %6, align 8
  %404 = load i32, i32* %14, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %402, %391
  br label %468

410:                                              ; preds = %402
  %411 = load i32*, i32** %12, align 8
  %412 = load i32*, i32** %6, align 8
  %413 = load i32, i32* %14, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %411, i64 %417
  %419 = load i32, i32* %418, align 4
  store i32 %419, i32* %23, align 4
  %420 = load i32*, i32** %12, align 8
  %421 = load i32*, i32** %6, align 8
  %422 = load i32, i32* %20, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %420, i64 %426
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* %24, align 4
  %429 = load i32*, i32** %12, align 8
  %430 = load i32*, i32** %19, align 8
  %431 = load i32, i32* %20, align 4
  %432 = load i32, i32* %11, align 4
  %433 = mul nsw i32 %431, %432
  %434 = load i32, i32* %16, align 4
  %435 = add nsw i32 %433, %434
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %430, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %429, i64 %439
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %25, align 4
  %442 = load i32, i32* %23, align 4
  %443 = load i32, i32* %9, align 4
  %444 = load i32, i32* %24, align 4
  %445 = sub nsw i32 %443, %444
  %446 = add nsw i32 %442, %445
  %447 = load i32, i32* %25, align 4
  %448 = add nsw i32 %446, %447
  store i32 %448, i32* %18, align 4
  %449 = load i32*, i32** %13, align 8
  %450 = load i32, i32* %18, align 4
  %451 = load i32, i32* %9, align 4
  %452 = srem i32 %450, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %449, i64 %453
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* %23, align 4
  %456 = load i32, i32* %23, align 4
  %457 = load i32*, i32** %19, align 8
  %458 = load i32, i32* %14, align 4
  %459 = add nsw i32 %458, 1
  %460 = load i32, i32* %11, align 4
  %461 = mul nsw i32 %459, %460
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* %22, align 4
  %464 = add nsw i32 %462, %463
  %465 = add nsw i32 %461, %464
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %457, i64 %466
  store i32 %456, i32* %467, align 4
  br label %468

468:                                              ; preds = %410, %409
  %469 = load i32, i32* %16, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %16, align 4
  br label %382

471:                                              ; preds = %382
  store i32 0, i32* %16, align 4
  br label %472

472:                                              ; preds = %502, %471
  %473 = load i32, i32* %16, align 4
  %474 = load i32*, i32** %3, align 8
  %475 = load i32, i32* %14, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = ashr i32 %478, 1
  %480 = icmp sle i32 %473, %479
  br i1 %480, label %481, label %505

481:                                              ; preds = %472
  %482 = load i32*, i32** %19, align 8
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %11, align 4
  %485 = mul nsw i32 %483, %484
  %486 = load i32, i32* %16, align 4
  %487 = add nsw i32 %485, %486
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %482, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = load i32*, i32** %19, align 8
  %492 = load i32, i32* %14, align 4
  %493 = add nsw i32 %492, 1
  %494 = load i32, i32* %11, align 4
  %495 = mul nsw i32 %493, %494
  %496 = load i32, i32* %16, align 4
  %497 = add nsw i32 %495, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %491, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = xor i32 %500, %490
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %481
  %503 = load i32, i32* %16, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %16, align 4
  br label %472

505:                                              ; preds = %472
  br label %506

506:                                              ; preds = %505, %268
  %507 = load i32*, i32** %5, align 8
  %508 = load i32, i32* %14, align 4
  %509 = add nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %507, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = mul nsw i32 %512, 2
  %514 = load i32*, i32** %3, align 8
  %515 = load i32, i32* %14, align 4
  %516 = add nsw i32 %515, 1
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %514, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = sub nsw i32 %513, %519
  %521 = ashr i32 %520, 1
  %522 = load i32*, i32** %7, align 8
  %523 = load i32, i32* %14, align 4
  %524 = add nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %522, i64 %525
  store i32 %521, i32* %526, align 4
  %527 = load i32, i32* %14, align 4
  %528 = load i32, i32* %10, align 4
  %529 = icmp sge i32 %527, %528
  br i1 %529, label %530, label %531

530:                                              ; preds = %506
  br label %641

531:                                              ; preds = %506
  store i32 0, i32* %16, align 4
  br label %532

532:                                              ; preds = %637, %531
  %533 = load i32, i32* %16, align 4
  %534 = load i32*, i32** %3, align 8
  %535 = load i32, i32* %14, align 4
  %536 = add nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = ashr i32 %539, 1
  %541 = icmp sle i32 %533, %540
  br i1 %541, label %542, label %640

542:                                              ; preds = %532
  %543 = load i32, i32* %14, align 4
  %544 = sub nsw i32 %543, 1
  %545 = mul nsw i32 2, %544
  store i32 %545, i32* %18, align 4
  %546 = load i32, i32* %16, align 4
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %560

548:                                              ; preds = %542
  %549 = load i32*, i32** %4, align 8
  %550 = load i32, i32* %18, align 4
  %551 = add nsw i32 %550, 3
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %549, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32*, i32** %6, align 8
  %556 = load i32, i32* %14, align 4
  %557 = add nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %555, i64 %558
  store i32 %554, i32* %559, align 4
  br label %636

560:                                              ; preds = %542
  %561 = load i32*, i32** %19, align 8
  %562 = load i32, i32* %14, align 4
  %563 = add nsw i32 %562, 1
  %564 = load i32, i32* %11, align 4
  %565 = mul nsw i32 %563, %564
  %566 = load i32, i32* %16, align 4
  %567 = add nsw i32 %565, %566
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %561, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %635

572:                                              ; preds = %560
  %573 = load i32*, i32** %4, align 8
  %574 = load i32, i32* %18, align 4
  %575 = add nsw i32 %574, 3
  %576 = load i32, i32* %16, align 4
  %577 = sub nsw i32 %575, %576
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %573, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %635

582:                                              ; preds = %572
  %583 = load i32*, i32** %12, align 8
  %584 = load i32*, i32** %19, align 8
  %585 = load i32, i32* %14, align 4
  %586 = add nsw i32 %585, 1
  %587 = load i32, i32* %11, align 4
  %588 = mul nsw i32 %586, %587
  %589 = load i32, i32* %16, align 4
  %590 = add nsw i32 %588, %589
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %584, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %583, i64 %594
  %596 = load i32, i32* %595, align 4
  store i32 %596, i32* %26, align 4
  %597 = load i32*, i32** %4, align 8
  %598 = load i32, i32* %14, align 4
  %599 = sub nsw i32 %598, 1
  %600 = mul nsw i32 2, %599
  %601 = add nsw i32 %600, 3
  %602 = load i32, i32* %16, align 4
  %603 = sub nsw i32 %601, %602
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %597, i64 %604
  %606 = load i32, i32* %605, align 4
  store i32 %606, i32* %27, align 4
  %607 = load i32*, i32** %12, align 8
  %608 = load i32, i32* %27, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %607, i64 %609
  %611 = load i32, i32* %610, align 4
  store i32 %611, i32* %28, align 4
  %612 = load i32, i32* %26, align 4
  %613 = load i32, i32* %28, align 4
  %614 = add nsw i32 %612, %613
  store i32 %614, i32* %18, align 4
  %615 = load i32, i32* %9, align 4
  %616 = load i32, i32* %18, align 4
  %617 = srem i32 %616, %615
  store i32 %617, i32* %18, align 4
  %618 = load i32*, i32** %13, align 8
  %619 = load i32, i32* %18, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = load i32*, i32** %6, align 8
  %624 = load i32, i32* %14, align 4
  %625 = add nsw i32 %624, 1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %623, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = xor i32 %622, %628
  %630 = load i32*, i32** %6, align 8
  %631 = load i32, i32* %14, align 4
  %632 = add nsw i32 %631, 1
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, i32* %630, i64 %633
  store i32 %629, i32* %634, align 4
  br label %635

635:                                              ; preds = %582, %572, %560
  br label %636

636:                                              ; preds = %635, %548
  br label %637

637:                                              ; preds = %636
  %638 = load i32, i32* %16, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %16, align 4
  br label %532

640:                                              ; preds = %532
  br label %641

641:                                              ; preds = %640, %530
  %642 = load i32, i32* %14, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %14, align 4
  br label %140

644:                                              ; preds = %225, %140
  ret void
}

declare dso_local i32 @get_sectorsize(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_strength(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
