; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_gen_mpeg1hdr_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_gen_mpeg1hdr_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PFRAME = common dso_local global i32 0, align 4
@BFRAME_PRE = common dso_local global i32 0, align 4
@BFRAME_POST = common dso_local global i32 0, align 4
@BFRAME_BIDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i64*, i32, i32*)* @gen_mpeg1hdr_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_mpeg1hdr_to_package(%struct.go7007* %0, i64* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 15872, i32* %11, align 4
  store i32 25, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 5120, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %322

23:                                               ; preds = %4
  %24 = load %struct.go7007*, %struct.go7007** %6, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @PFRAME, align 4
  %27 = call i32 @mpeg1_frame_header(%struct.go7007* %24, i32* %25, i32 0, i32 1, i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.go7007*, %struct.go7007** %6, align 8
  %31 = getelementptr inbounds %struct.go7007, %struct.go7007* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load %struct.go7007*, %struct.go7007** %6, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* @PFRAME, align 4
  %44 = call i32 @mpeg1_frame_header(%struct.go7007* %35, i32* %42, i32 0, i32 2, i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %34, %23
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  store i32 368, i32* %13, align 4
  %62 = load %struct.go7007*, %struct.go7007** %6, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* @BFRAME_PRE, align 4
  %68 = call i32 @mpeg1_frame_header(%struct.go7007* %62, i32* %66, i32 0, i32 1, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.go7007*, %struct.go7007** %6, align 8
  %72 = getelementptr inbounds %struct.go7007, %struct.go7007* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %49
  %76 = load %struct.go7007*, %struct.go7007** %6, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i32, i32* @BFRAME_PRE, align 4
  %88 = call i32 @mpeg1_frame_header(%struct.go7007* %76, i32* %86, i32 0, i32 2, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %75, %49
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1632
  store i32 %112, i32* %13, align 4
  %113 = load %struct.go7007*, %struct.go7007** %6, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* @BFRAME_POST, align 4
  %119 = call i32 @mpeg1_frame_header(%struct.go7007* %113, i32* %117, i32 0, i32 1, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.go7007*, %struct.go7007** %6, align 8
  %123 = getelementptr inbounds %struct.go7007, %struct.go7007* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %93
  %127 = load %struct.go7007*, %struct.go7007** %6, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  %138 = load i32, i32* @BFRAME_POST, align 4
  %139 = call i32 @mpeg1_frame_header(%struct.go7007* %127, i32* %137, i32 0, i32 2, i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %126, %93
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 255
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1432
  store i32 %163, i32* %13, align 4
  %164 = load %struct.go7007*, %struct.go7007** %6, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* @BFRAME_BIDIR, align 4
  %170 = call i32 @mpeg1_frame_header(%struct.go7007* %164, i32* %168, i32 0, i32 1, i32 %169)
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  store i32 %170, i32* %172, align 4
  %173 = load %struct.go7007*, %struct.go7007** %6, align 8
  %174 = getelementptr inbounds %struct.go7007, %struct.go7007* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %144
  %178 = load %struct.go7007*, %struct.go7007** %6, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* @BFRAME_BIDIR, align 4
  %190 = call i32 @mpeg1_frame_header(%struct.go7007* %178, i32* %188, i32 0, i32 2, i32 %189)
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %177, %144
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 255
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1648
  store i32 %214, i32* %13, align 4
  %215 = load %struct.go7007*, %struct.go7007** %6, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = call i32 @mpeg1_sequence_header(%struct.go7007* %215, i32* %219, i32 0)
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 40
  store i32 %222, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %223

223:                                              ; preds = %312, %195
  %224 = load i32, i32* %13, align 4
  %225 = icmp slt i32 %224, 5120
  br i1 %225, label %226, label %317

226:                                              ; preds = %223
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %14, align 4
  %229 = sub nsw i32 %227, %228
  %230 = icmp slt i32 %229, 32
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  store i32 -1, i32* %14, align 4
  br label %318

232:                                              ; preds = %226
  %233 = load i32, i32* %11, align 4
  %234 = or i32 32768, %233
  %235 = call i64 @__cpu_to_le16(i32 %234)
  %236 = load i64*, i64** %7, align 8
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %236, i64 %239
  store i64 %235, i64* %240, align 8
  store i32 28, i32* %15, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %241, %242
  %244 = icmp sgt i32 %243, 16384
  br i1 %244, label %245, label %248

245:                                              ; preds = %232
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 16384, %246
  store i32 %247, i32* %15, align 4
  br label %248

248:                                              ; preds = %245, %232
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %15, align 4
  %251 = mul nsw i32 2, %250
  %252 = add nsw i32 %249, %251
  %253 = icmp sgt i32 %252, 5120
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load i32, i32* %13, align 4
  %256 = sub nsw i32 5120, %255
  %257 = sdiv i32 %256, 2
  store i32 %257, i32* %15, align 4
  br label %258

258:                                              ; preds = %254, %248
  %259 = load i32, i32* %15, align 4
  %260 = icmp slt i32 %259, 28
  br i1 %260, label %261, label %284

261:                                              ; preds = %258
  %262 = load i32, i32* %15, align 4
  %263 = or i32 16384, %262
  %264 = call i64 @__cpu_to_le16(i32 %263)
  %265 = load i64*, i64** %7, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  store i64 %264, i64* %268, align 8
  %269 = load i32, i32* %12, align 4
  %270 = call i64 @__cpu_to_le16(i32 %269)
  %271 = load i64*, i64** %7, align 8
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %272, 31
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %271, i64 %274
  store i64 %270, i64* %275, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %276, %277
  %279 = icmp eq i32 %278, 16384
  br i1 %279, label %280, label %283

280:                                              ; preds = %261
  store i32 15872, i32* %11, align 4
  %281 = load i32, i32* %12, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %283

283:                                              ; preds = %280, %261
  br label %297

284:                                              ; preds = %258
  %285 = call i64 @__cpu_to_le16(i32 4124)
  %286 = load i64*, i64** %7, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  store i64 %285, i64* %289, align 8
  %290 = load i64*, i64** %7, align 8
  %291 = load i32, i32* %14, align 4
  %292 = add nsw i32 %291, 31
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %290, i64 %293
  store i64 0, i64* %294, align 8
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 28
  store i32 %296, i32* %11, align 4
  br label %297

297:                                              ; preds = %284, %283
  %298 = load i64*, i64** %7, align 8
  %299 = load i32, i32* %14, align 4
  %300 = add nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %298, i64 %301
  %303 = load i32*, i32** %10, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %15, align 4
  %308 = mul nsw i32 %307, 2
  %309 = call i32 @memcpy(i64* %302, i32* %306, i32 %308)
  %310 = load i32, i32* %14, align 4
  %311 = add nsw i32 %310, 32
  store i32 %311, i32* %14, align 4
  br label %312

312:                                              ; preds = %297
  %313 = load i32, i32* %15, align 4
  %314 = mul nsw i32 %313, 2
  %315 = load i32, i32* %13, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %13, align 4
  br label %223

317:                                              ; preds = %223
  br label %318

318:                                              ; preds = %317, %231
  %319 = load i32*, i32** %10, align 8
  %320 = call i32 @kfree(i32* %319)
  %321 = load i32, i32* %14, align 4
  store i32 %321, i32* %5, align 4
  br label %322

322:                                              ; preds = %318, %20
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mpeg1_frame_header(%struct.go7007*, i32*, i32, i32, i32) #1

declare dso_local i32 @mpeg1_sequence_header(%struct.go7007*, i32*, i32) #1

declare dso_local i64 @__cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
