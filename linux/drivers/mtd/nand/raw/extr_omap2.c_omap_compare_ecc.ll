; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_compare_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_compare_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"ECC UNCORRECTED_ERROR 1\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ECC UNCORRECTED_ERROR B\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Correcting single bit ECC error at offset: %d, bit: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"UNCORRECTED_ERROR default\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @omap_compare_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_compare_ecc(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca [8 x i32], align 16
  %15 = alloca [24 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 16777215
  %23 = icmp eq i32 %22, 16777215
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %19, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @gen_true_ecc(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @gen_true_ecc(i32* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %53, %3
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 2
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %29

56:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %62, 2
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 2
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %57

74:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = srem i32 %81, 2
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 2
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %75

95:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %113, %95
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, 2
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 2
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %99
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %96

116:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %131, %116
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 8
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = srem i32 %122, 2
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 2
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %117

134:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %152, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = srem i32 %141, 2
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %144
  store i32 %142, i32* %145, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 2
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %135

155:                                              ; preds = %135
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %173, %155
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 8
  br i1 %158, label %159, label %176

159:                                              ; preds = %156
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = srem i32 %162, 2
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %165
  store i32 %163, i32* %166, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 2
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %159
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %156

176:                                              ; preds = %156
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %195, %176
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %178, 6
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %185, %190
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 %193
  store i32 %191, i32* %194, align 4
  br label %195

195:                                              ; preds = %180
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %177

198:                                              ; preds = %177
  store i32 0, i32* %8, align 4
  br label %199

199:                                              ; preds = %216, %198
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 8
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %206, %210
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 6
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 %214
  store i32 %211, i32* %215, align 4
  br label %216

216:                                              ; preds = %202
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %199

219:                                              ; preds = %199
  store i32 0, i32* %8, align 4
  br label %220

220:                                              ; preds = %237, %219
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = xor i32 %227, %231
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 14
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 %235
  store i32 %232, i32* %236, align 4
  br label %237

237:                                              ; preds = %223
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %220

240:                                              ; preds = %220
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %242 = load i32, i32* %241, align 16
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %244 = load i32, i32* %243, align 16
  %245 = xor i32 %242, %244
  %246 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 22
  store i32 %245, i32* %246, align 8
  %247 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = xor i32 %248, %250
  %252 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 23
  store i32 %251, i32* %252, align 4
  store i32 0, i32* %8, align 4
  br label %253

253:                                              ; preds = %263, %240
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %254, 24
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %16, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %16, align 4
  br label %263

263:                                              ; preds = %256
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %253

266:                                              ; preds = %253
  %267 = load i32, i32* %16, align 4
  switch i32 %267, label %333 [
    i32 0, label %268
    i32 1, label %269
    i32 11, label %273
    i32 12, label %277
  ]

268:                                              ; preds = %266
  store i32 0, i32* %4, align 4
  br label %357

269:                                              ; preds = %266
  %270 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %271 = load i32, i32* @EBADMSG, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %4, align 4
  br label %357

273:                                              ; preds = %266
  %274 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %275 = load i32, i32* @EBADMSG, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %4, align 4
  br label %357

277:                                              ; preds = %266
  %278 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 23
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 8
  %281 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 21
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %282, 7
  %284 = add nsw i32 %280, %283
  %285 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 19
  %286 = load i32, i32* %285, align 4
  %287 = shl i32 %286, 6
  %288 = add nsw i32 %284, %287
  %289 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 17
  %290 = load i32, i32* %289, align 4
  %291 = shl i32 %290, 5
  %292 = add nsw i32 %288, %291
  %293 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 15
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 4
  %296 = add nsw i32 %292, %295
  %297 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 13
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %298, 3
  %300 = add nsw i32 %296, %299
  %301 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 11
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 2
  %304 = add nsw i32 %300, %303
  %305 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 9
  %306 = load i32, i32* %305, align 4
  %307 = shl i32 %306, 1
  %308 = add nsw i32 %304, %307
  %309 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 7
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %308, %310
  store i32 %311, i32* %18, align 4
  %312 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 5
  %313 = load i32, i32* %312, align 4
  %314 = shl i32 %313, 2
  %315 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 3
  %316 = load i32, i32* %315, align 4
  %317 = shl i32 %316, 1
  %318 = add nsw i32 %314, %317
  %319 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 1
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %318, %320
  store i32 %321, i32* %17, align 4
  %322 = load i32, i32* %18, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %322, i32 %323)
  %325 = load i32, i32* %17, align 4
  %326 = shl i32 1, %325
  %327 = load i32*, i32** %7, align 8
  %328 = load i32, i32* %18, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = xor i32 %331, %326
  store i32 %332, i32* %330, align 4
  store i32 1, i32* %4, align 4
  br label %357

333:                                              ; preds = %266
  %334 = load i32, i32* %19, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %353

336:                                              ; preds = %333
  %337 = load i32*, i32** %6, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %336
  %342 = load i32*, i32** %6, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %341
  %347 = load i32*, i32** %6, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %346
  store i32 0, i32* %4, align 4
  br label %357

352:                                              ; preds = %346, %341, %336
  br label %353

353:                                              ; preds = %352, %333
  %354 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %355 = load i32, i32* @EBADMSG, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %4, align 4
  br label %357

357:                                              ; preds = %353, %351, %277, %273, %269, %268
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local i32 @gen_true_ecc(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
