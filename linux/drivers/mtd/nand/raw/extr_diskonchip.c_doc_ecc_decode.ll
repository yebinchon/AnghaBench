; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_diskonchip.c_doc_ecc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_diskonchip.c_doc_ecc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.rs_codec* }
%struct.rs_codec = type { i64*, i64* }

@NROOTS = common dso_local global i32 0, align 4
@FCR = common dso_local global i32 0, align 4
@NN = common dso_local global i32 0, align 4
@NB_DATA = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_control*, i32*, i32*)* @doc_ecc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_ecc_decode(%struct.rs_control* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rs_control*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca [4 x i64], align 16
  %14 = alloca [5 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca [8 x i64], align 16
  %17 = alloca [4 x i64], align 16
  %18 = alloca %struct.rs_codec*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %24 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %23, i32 0, i32 0
  %25 = load %struct.rs_codec*, %struct.rs_codec** %24, align 8
  store %struct.rs_codec* %25, %struct.rs_codec** %18, align 8
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0
  %27 = call i32 @memset(i64* %26, i32 0, i32 32)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = ashr i32 %31, 0
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = shl i32 %36, 8
  %38 = or i32 %32, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 %39, i64* %40, align 16
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 252
  %45 = ashr i32 %44, 2
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = shl i32 %49, 6
  %51 = or i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 %52, i64* %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 240
  %58 = ashr i32 %57, 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 63
  %63 = shl i32 %62, 4
  %64 = or i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 %65, i64* %66, align 16
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 192
  %71 = ashr i32 %70, 6
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = shl i32 %75, 2
  %77 = or i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 %78, i64* %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %93, %3
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @NROOTS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %89 = load i64, i64* %88, align 16
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %91
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %83

96:                                               ; preds = %83
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %148, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @NROOTS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %151

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %148

108:                                              ; preds = %101
  %109 = load %struct.rs_codec*, %struct.rs_codec** %18, align 8
  %110 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %15, align 8
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %144, %108
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @NROOTS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load %struct.rs_codec*, %struct.rs_codec** %18, align 8
  %124 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.rs_codec*, %struct.rs_codec** %18, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* @FCR, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = add i64 %127, %133
  %135 = trunc i64 %134 to i32
  %136 = call i64 @rs_modnn(%struct.rs_codec* %126, i32 %135)
  %137 = getelementptr inbounds i64, i64* %125, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = xor i64 %142, %138
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %122
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %118

147:                                              ; preds = %118
  br label %148

148:                                              ; preds = %147, %107
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %97

151:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %186, %151
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @NROOTS, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %189

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %156
  %163 = load %struct.rs_codec*, %struct.rs_codec** %18, align 8
  %164 = load %struct.rs_codec*, %struct.rs_codec** %18, align 8
  %165 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i64, i64* %166, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @NN, align 4
  %174 = load i32, i32* @FCR, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = add i64 %172, %178
  %180 = trunc i64 %179 to i32
  %181 = call i64 @rs_modnn(%struct.rs_codec* %163, i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %183
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %162, %156
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %152

189:                                              ; preds = %152
  %190 = load %struct.rs_control*, %struct.rs_control** %5, align 8
  %191 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %193 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 0
  %194 = call i32 @decode_rs16(%struct.rs_control* %190, i32* null, i32* null, i32 1019, i64* %191, i32 0, i32* %192, i32 0, i64* %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %4, align 4
  br label %332

199:                                              ; preds = %189
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %319, %199
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %322

204:                                              ; preds = %200
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 1015, %208
  store i32 %209, i32* %21, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* @NB_DATA, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %204
  %214 = load i32, i32* %21, align 4
  %215 = icmp slt i32 %214, 1019
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %319

217:                                              ; preds = %213, %204
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* @NB_DATA, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %318

221:                                              ; preds = %217
  %222 = load i32, i32* @NB_DATA, align 4
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* %21, align 4
  %225 = sub nsw i32 %223, %224
  %226 = mul nsw i32 10, %225
  %227 = sub nsw i32 %226, 6
  store i32 %227, i32* %21, align 4
  %228 = load i32, i32* %21, align 4
  %229 = ashr i32 %228, 3
  %230 = xor i32 %229, 1
  store i32 %230, i32* %19, align 4
  %231 = load i32, i32* %21, align 4
  %232 = and i32 %231, 7
  store i32 %232, i32* %20, align 4
  %233 = load i32, i32* %19, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %221
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* @SECTOR_SIZE, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %244, label %239

239:                                              ; preds = %235, %221
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* @SECTOR_SIZE, align 4
  %242 = add nsw i32 %241, 1
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %269

244:                                              ; preds = %239, %235
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 2, %249
  %251 = zext i32 %250 to i64
  %252 = lshr i64 %248, %251
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %22, align 4
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %12, align 4
  %256 = xor i32 %255, %254
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* @SECTOR_SIZE, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %244
  %261 = load i32, i32* %22, align 4
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = xor i32 %266, %261
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %260, %244
  br label %269

269:                                              ; preds = %268, %239
  %270 = load i32, i32* %21, align 4
  %271 = ashr i32 %270, 3
  %272 = add nsw i32 %271, 1
  %273 = xor i32 %272, 1
  store i32 %273, i32* %19, align 4
  %274 = load i32, i32* %20, align 4
  %275 = add nsw i32 %274, 10
  %276 = and i32 %275, 7
  store i32 %276, i32* %20, align 4
  %277 = load i32, i32* %20, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %269
  store i32 8, i32* %20, align 4
  br label %280

280:                                              ; preds = %279, %269
  %281 = load i32, i32* %19, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i32, i32* %19, align 4
  %285 = load i32, i32* @SECTOR_SIZE, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %292, label %287

287:                                              ; preds = %283, %280
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* @SECTOR_SIZE, align 4
  %290 = add nsw i32 %289, 1
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %292, label %317

292:                                              ; preds = %287, %283
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load i32, i32* %20, align 4
  %298 = sub nsw i32 8, %297
  %299 = zext i32 %298 to i64
  %300 = shl i64 %296, %299
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %22, align 4
  %302 = load i32, i32* %22, align 4
  %303 = load i32, i32* %12, align 4
  %304 = xor i32 %303, %302
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %19, align 4
  %306 = load i32, i32* @SECTOR_SIZE, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %292
  %309 = load i32, i32* %22, align 4
  %310 = load i32*, i32** %6, align 8
  %311 = load i32, i32* %19, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = xor i32 %314, %309
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %308, %292
  br label %317

317:                                              ; preds = %316, %287
  br label %318

318:                                              ; preds = %317, %217
  br label %319

319:                                              ; preds = %318, %216
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %8, align 4
  br label %200

322:                                              ; preds = %200
  %323 = load i32, i32* %12, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i32, i32* @EBADMSG, align 4
  %327 = sub nsw i32 0, %326
  br label %330

328:                                              ; preds = %322
  %329 = load i32, i32* %10, align 4
  br label %330

330:                                              ; preds = %328, %325
  %331 = phi i32 [ %327, %325 ], [ %329, %328 ]
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %330, %197
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @rs_modnn(%struct.rs_codec*, i32) #1

declare dso_local i32 @decode_rs16(%struct.rs_control*, i32*, i32*, i32, i64*, i32, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
