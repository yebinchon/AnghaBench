; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_copy_two_pixels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_copy_two_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vim2m_q_data = type { %struct.vim2m_fmt* }
%struct.vim2m_fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vim2m_q_data*, %struct.vim2m_q_data*, i32**, i32**, i32, i32)* @copy_two_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_two_pixels(%struct.vim2m_q_data* %0, %struct.vim2m_q_data* %1, i32** %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vim2m_q_data*, align 8
  %8 = alloca %struct.vim2m_q_data*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vim2m_fmt*, align 8
  %14 = alloca %struct.vim2m_fmt*, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.vim2m_q_data* %0, %struct.vim2m_q_data** %7, align 8
  store %struct.vim2m_q_data* %1, %struct.vim2m_q_data** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %32 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %8, align 8
  %33 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %32, i32 0, i32 0
  %34 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %33, align 8
  store %struct.vim2m_fmt* %34, %struct.vim2m_fmt** %13, align 8
  %35 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %7, align 8
  %36 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %35, i32 0, i32 0
  %37 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %36, align 8
  store %struct.vim2m_fmt* %37, %struct.vim2m_fmt** %14, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32* %38, i32** %18, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32* %39, i32** %19, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32* %40, i32** %20, align 8
  %41 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %14, align 8
  %42 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %116 [
    i32 134, label %44
    i32 133, label %80
    i32 135, label %117
    i32 136, label %153
  ]

44:                                               ; preds = %6
  store i32 0, i32* %21, align 4
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i32, i32* %21, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = load i32**, i32*** %9, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = and i32 %56, 63488
  %58 = ashr i32 %57, 11
  %59 = shl i32 %58, 3
  %60 = or i32 %59, 7
  %61 = load i32*, i32** %18, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %18, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32, i32* %22, align 4
  %64 = and i32 %63, 2016
  %65 = ashr i32 %64, 5
  %66 = shl i32 %65, 2
  %67 = or i32 %66, 3
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %19, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %22, align 4
  %71 = and i32 %70, 31
  %72 = shl i32 %71, 3
  %73 = or i32 %72, 7
  %74 = load i32*, i32** %20, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %20, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %48
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  br label %45

79:                                               ; preds = %45
  br label %189

80:                                               ; preds = %6
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %112, %80
  %82 = load i32, i32* %21, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = load i32**, i32*** %9, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be16_to_cpu(i32 %90)
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %23, align 4
  %93 = and i32 %92, 63488
  %94 = ashr i32 %93, 11
  %95 = shl i32 %94, 3
  %96 = or i32 %95, 7
  %97 = load i32*, i32** %18, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %18, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32, i32* %23, align 4
  %100 = and i32 %99, 2016
  %101 = ashr i32 %100, 5
  %102 = shl i32 %101, 2
  %103 = or i32 %102, 3
  %104 = load i32*, i32** %19, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %19, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32, i32* %23, align 4
  %107 = and i32 %106, 31
  %108 = shl i32 %107, 3
  %109 = or i32 %108, 7
  %110 = load i32*, i32** %20, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %20, align 8
  store i32 %109, i32* %110, align 4
  br label %112

112:                                              ; preds = %84
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %21, align 4
  br label %81

115:                                              ; preds = %81
  br label %189

116:                                              ; preds = %6
  br label %117

117:                                              ; preds = %6, %116
  store i32 0, i32* %21, align 4
  br label %118

118:                                              ; preds = %149, %117
  %119 = load i32, i32* %21, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %152

121:                                              ; preds = %118
  %122 = load i32**, i32*** %9, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %18, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %18, align 8
  store i32 %128, i32* %129, align 4
  %131 = load i32**, i32*** %9, align 8
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %19, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %19, align 8
  store i32 %137, i32* %138, align 4
  %140 = load i32**, i32*** %9, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %20, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %20, align 8
  store i32 %146, i32* %147, align 4
  br label %149

149:                                              ; preds = %121
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %21, align 4
  br label %118

152:                                              ; preds = %118
  br label %189

153:                                              ; preds = %6
  store i32 0, i32* %21, align 4
  br label %154

154:                                              ; preds = %185, %153
  %155 = load i32, i32* %21, align 4
  %156 = icmp slt i32 %155, 2
  br i1 %156, label %157, label %188

157:                                              ; preds = %154
  %158 = load i32**, i32*** %9, align 8
  %159 = load i32, i32* %21, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %20, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %20, align 8
  store i32 %164, i32* %165, align 4
  %167 = load i32**, i32*** %9, align 8
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %19, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %19, align 8
  store i32 %173, i32* %174, align 4
  %176 = load i32**, i32*** %9, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %18, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %18, align 8
  store i32 %182, i32* %183, align 4
  br label %185

185:                                              ; preds = %157
  %186 = load i32, i32* %21, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %21, align 4
  br label %154

188:                                              ; preds = %154
  br label %189

189:                                              ; preds = %188, %152, %115, %79
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32* %190, i32** %18, align 8
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32* %191, i32** %19, align 8
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32* %192, i32** %20, align 8
  %193 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %13, align 8
  %194 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  switch i32 %195, label %311 [
    i32 134, label %196
    i32 133, label %226
    i32 135, label %256
    i32 136, label %283
    i32 128, label %310
    i32 132, label %383
    i32 131, label %412
    i32 130, label %441
    i32 129, label %470
  ]

196:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  br label %197

197:                                              ; preds = %222, %196
  %198 = load i32, i32* %21, align 4
  %199 = icmp slt i32 %198, 2
  br i1 %199, label %200, label %225

200:                                              ; preds = %197
  %201 = load i32**, i32*** %10, align 8
  %202 = load i32*, i32** %201, align 8
  store i32* %202, i32** %25, align 8
  %203 = load i32*, i32** %18, align 8
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 8
  %206 = and i32 %205, 63488
  %207 = load i32*, i32** %19, align 8
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 3
  %210 = and i32 %209, 2016
  %211 = or i32 %206, %210
  %212 = load i32*, i32** %20, align 8
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 3
  %215 = or i32 %211, %214
  store i32 %215, i32* %24, align 4
  %216 = load i32, i32* %24, align 4
  %217 = call i32 @cpu_to_le16(i32 %216)
  %218 = load i32*, i32** %25, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i32**, i32*** %10, align 8
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32* %221, i32** %219, align 8
  br label %222

222:                                              ; preds = %200
  %223 = load i32, i32* %21, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %21, align 4
  br label %197

225:                                              ; preds = %197
  br label %499

226:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  br label %227

227:                                              ; preds = %252, %226
  %228 = load i32, i32* %21, align 4
  %229 = icmp slt i32 %228, 2
  br i1 %229, label %230, label %255

230:                                              ; preds = %227
  %231 = load i32**, i32*** %10, align 8
  %232 = load i32*, i32** %231, align 8
  store i32* %232, i32** %27, align 8
  %233 = load i32*, i32** %18, align 8
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 8
  %236 = and i32 %235, 63488
  %237 = load i32*, i32** %19, align 8
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 3
  %240 = and i32 %239, 2016
  %241 = or i32 %236, %240
  %242 = load i32*, i32** %20, align 8
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 3
  %245 = or i32 %241, %244
  store i32 %245, i32* %26, align 4
  %246 = load i32, i32* %26, align 4
  %247 = call i32 @cpu_to_be16(i32 %246)
  %248 = load i32*, i32** %27, align 8
  store i32 %247, i32* %248, align 4
  %249 = load i32**, i32*** %10, align 8
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  store i32* %251, i32** %249, align 8
  br label %252

252:                                              ; preds = %230
  %253 = load i32, i32* %21, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %21, align 4
  br label %227

255:                                              ; preds = %227
  br label %499

256:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  br label %257

257:                                              ; preds = %279, %256
  %258 = load i32, i32* %21, align 4
  %259 = icmp slt i32 %258, 2
  br i1 %259, label %260, label %282

260:                                              ; preds = %257
  %261 = load i32*, i32** %18, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %18, align 8
  %263 = load i32, i32* %261, align 4
  %264 = load i32**, i32*** %10, align 8
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %264, align 8
  store i32 %263, i32* %265, align 4
  %267 = load i32*, i32** %19, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %19, align 8
  %269 = load i32, i32* %267, align 4
  %270 = load i32**, i32*** %10, align 8
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %270, align 8
  store i32 %269, i32* %271, align 4
  %273 = load i32*, i32** %20, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %20, align 8
  %275 = load i32, i32* %273, align 4
  %276 = load i32**, i32*** %10, align 8
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %276, align 8
  store i32 %275, i32* %277, align 4
  br label %279

279:                                              ; preds = %260
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %21, align 4
  br label %257

282:                                              ; preds = %257
  br label %499

283:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  br label %284

284:                                              ; preds = %306, %283
  %285 = load i32, i32* %21, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %287, label %309

287:                                              ; preds = %284
  %288 = load i32*, i32** %20, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %20, align 8
  %290 = load i32, i32* %288, align 4
  %291 = load i32**, i32*** %10, align 8
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %291, align 8
  store i32 %290, i32* %292, align 4
  %294 = load i32*, i32** %19, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %19, align 8
  %296 = load i32, i32* %294, align 4
  %297 = load i32**, i32*** %10, align 8
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %297, align 8
  store i32 %296, i32* %298, align 4
  %300 = load i32*, i32** %18, align 8
  %301 = getelementptr inbounds i32, i32* %300, i32 1
  store i32* %301, i32** %18, align 8
  %302 = load i32, i32* %300, align 4
  %303 = load i32**, i32*** %10, align 8
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %303, align 8
  store i32 %302, i32* %304, align 4
  br label %306

306:                                              ; preds = %287
  %307 = load i32, i32* %21, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %21, align 4
  br label %284

309:                                              ; preds = %284
  br label %499

310:                                              ; preds = %189
  br label %311

311:                                              ; preds = %189, %310
  %312 = load i32*, i32** %18, align 8
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 8453, %313
  %315 = load i32*, i32** %19, align 8
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 16594, %316
  %318 = add nsw i32 %314, %317
  %319 = load i32*, i32** %20, align 8
  %320 = load i32, i32* %319, align 4
  %321 = mul nsw i32 3223, %320
  %322 = add nsw i32 %318, %321
  %323 = add nsw i32 %322, 524288
  %324 = ashr i32 %323, 15
  store i32 %324, i32* %28, align 4
  %325 = load i32*, i32** %18, align 8
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 -4878, %326
  %328 = load i32*, i32** %19, align 8
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 9578, %329
  %331 = sub nsw i32 %327, %330
  %332 = load i32*, i32** %20, align 8
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 14456, %333
  %335 = add nsw i32 %331, %334
  %336 = add nsw i32 %335, 4210688
  %337 = ashr i32 %336, 15
  store i32 %337, i32* %30, align 4
  %338 = load i32*, i32** %18, align 8
  %339 = getelementptr inbounds i32, i32* %338, i32 1
  store i32* %339, i32** %18, align 8
  %340 = load i32, i32* %338, align 4
  %341 = mul nsw i32 14456, %340
  %342 = load i32*, i32** %19, align 8
  %343 = getelementptr inbounds i32, i32* %342, i32 1
  store i32* %343, i32** %19, align 8
  %344 = load i32, i32* %342, align 4
  %345 = mul nsw i32 12105, %344
  %346 = sub nsw i32 %341, %345
  %347 = load i32*, i32** %20, align 8
  %348 = getelementptr inbounds i32, i32* %347, i32 1
  store i32* %348, i32** %20, align 8
  %349 = load i32, i32* %347, align 4
  %350 = mul nsw i32 2351, %349
  %351 = sub nsw i32 %346, %350
  %352 = add nsw i32 %351, 4210688
  %353 = ashr i32 %352, 15
  store i32 %353, i32* %31, align 4
  %354 = load i32*, i32** %18, align 8
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 8453, %355
  %357 = load i32*, i32** %19, align 8
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 16594, %358
  %360 = add nsw i32 %356, %359
  %361 = load i32*, i32** %20, align 8
  %362 = load i32, i32* %361, align 4
  %363 = mul nsw i32 3223, %362
  %364 = add nsw i32 %360, %363
  %365 = add nsw i32 %364, 524288
  %366 = ashr i32 %365, 15
  store i32 %366, i32* %29, align 4
  %367 = load i32, i32* %28, align 4
  %368 = load i32**, i32*** %10, align 8
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i32 1
  store i32* %370, i32** %368, align 8
  store i32 %367, i32* %369, align 4
  %371 = load i32, i32* %30, align 4
  %372 = load i32**, i32*** %10, align 8
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i32 1
  store i32* %374, i32** %372, align 8
  store i32 %371, i32* %373, align 4
  %375 = load i32, i32* %29, align 4
  %376 = load i32**, i32*** %10, align 8
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i32 1
  store i32* %378, i32** %376, align 8
  store i32 %375, i32* %377, align 4
  %379 = load i32, i32* %31, align 4
  %380 = load i32**, i32*** %10, align 8
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i32 1
  store i32* %382, i32** %380, align 8
  store i32 %379, i32* %381, align 4
  br label %499

383:                                              ; preds = %189
  %384 = load i32, i32* %11, align 4
  %385 = and i32 %384, 1
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %399, label %387

387:                                              ; preds = %383
  %388 = load i32*, i32** %20, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32**, i32*** %10, align 8
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i32 1
  store i32* %392, i32** %390, align 8
  store i32 %389, i32* %391, align 4
  %393 = load i32*, i32** %19, align 8
  %394 = getelementptr inbounds i32, i32* %393, i32 1
  store i32* %394, i32** %19, align 8
  %395 = load i32, i32* %394, align 4
  %396 = load i32**, i32*** %10, align 8
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i32 1
  store i32* %398, i32** %396, align 8
  store i32 %395, i32* %397, align 4
  br label %411

399:                                              ; preds = %383
  %400 = load i32*, i32** %19, align 8
  %401 = load i32, i32* %400, align 4
  %402 = load i32**, i32*** %10, align 8
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i32 1
  store i32* %404, i32** %402, align 8
  store i32 %401, i32* %403, align 4
  %405 = load i32*, i32** %18, align 8
  %406 = getelementptr inbounds i32, i32* %405, i32 1
  store i32* %406, i32** %18, align 8
  %407 = load i32, i32* %406, align 4
  %408 = load i32**, i32*** %10, align 8
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i32 1
  store i32* %410, i32** %408, align 8
  store i32 %407, i32* %409, align 4
  br label %411

411:                                              ; preds = %399, %387
  br label %499

412:                                              ; preds = %189
  %413 = load i32, i32* %11, align 4
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %428, label %416

416:                                              ; preds = %412
  %417 = load i32*, i32** %19, align 8
  %418 = load i32, i32* %417, align 4
  %419 = load i32**, i32*** %10, align 8
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i32 1
  store i32* %421, i32** %419, align 8
  store i32 %418, i32* %420, align 4
  %422 = load i32*, i32** %20, align 8
  %423 = getelementptr inbounds i32, i32* %422, i32 1
  store i32* %423, i32** %20, align 8
  %424 = load i32, i32* %423, align 4
  %425 = load i32**, i32*** %10, align 8
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i32 1
  store i32* %427, i32** %425, align 8
  store i32 %424, i32* %426, align 4
  br label %440

428:                                              ; preds = %412
  %429 = load i32*, i32** %18, align 8
  %430 = load i32, i32* %429, align 4
  %431 = load i32**, i32*** %10, align 8
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i32 1
  store i32* %433, i32** %431, align 8
  store i32 %430, i32* %432, align 4
  %434 = load i32*, i32** %19, align 8
  %435 = getelementptr inbounds i32, i32* %434, i32 1
  store i32* %435, i32** %19, align 8
  %436 = load i32, i32* %435, align 4
  %437 = load i32**, i32*** %10, align 8
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i32 1
  store i32* %439, i32** %437, align 8
  store i32 %436, i32* %438, align 4
  br label %440

440:                                              ; preds = %428, %416
  br label %499

441:                                              ; preds = %189
  %442 = load i32, i32* %11, align 4
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %457, label %445

445:                                              ; preds = %441
  %446 = load i32*, i32** %19, align 8
  %447 = load i32, i32* %446, align 4
  %448 = load i32**, i32*** %10, align 8
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i32 1
  store i32* %450, i32** %448, align 8
  store i32 %447, i32* %449, align 4
  %451 = load i32*, i32** %18, align 8
  %452 = getelementptr inbounds i32, i32* %451, i32 1
  store i32* %452, i32** %18, align 8
  %453 = load i32, i32* %452, align 4
  %454 = load i32**, i32*** %10, align 8
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %454, align 8
  store i32 %453, i32* %455, align 4
  br label %469

457:                                              ; preds = %441
  %458 = load i32*, i32** %20, align 8
  %459 = load i32, i32* %458, align 4
  %460 = load i32**, i32*** %10, align 8
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i32 1
  store i32* %462, i32** %460, align 8
  store i32 %459, i32* %461, align 4
  %463 = load i32*, i32** %19, align 8
  %464 = getelementptr inbounds i32, i32* %463, i32 1
  store i32* %464, i32** %19, align 8
  %465 = load i32, i32* %464, align 4
  %466 = load i32**, i32*** %10, align 8
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i32 1
  store i32* %468, i32** %466, align 8
  store i32 %465, i32* %467, align 4
  br label %469

469:                                              ; preds = %457, %445
  br label %499

470:                                              ; preds = %189
  %471 = load i32, i32* %11, align 4
  %472 = and i32 %471, 1
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %486, label %474

474:                                              ; preds = %470
  %475 = load i32*, i32** %18, align 8
  %476 = load i32, i32* %475, align 4
  %477 = load i32**, i32*** %10, align 8
  %478 = load i32*, i32** %477, align 8
  %479 = getelementptr inbounds i32, i32* %478, i32 1
  store i32* %479, i32** %477, align 8
  store i32 %476, i32* %478, align 4
  %480 = load i32*, i32** %19, align 8
  %481 = getelementptr inbounds i32, i32* %480, i32 1
  store i32* %481, i32** %19, align 8
  %482 = load i32, i32* %481, align 4
  %483 = load i32**, i32*** %10, align 8
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i32 1
  store i32* %485, i32** %483, align 8
  store i32 %482, i32* %484, align 4
  br label %498

486:                                              ; preds = %470
  %487 = load i32*, i32** %19, align 8
  %488 = load i32, i32* %487, align 4
  %489 = load i32**, i32*** %10, align 8
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i32 1
  store i32* %491, i32** %489, align 8
  store i32 %488, i32* %490, align 4
  %492 = load i32*, i32** %20, align 8
  %493 = getelementptr inbounds i32, i32* %492, i32 1
  store i32* %493, i32** %20, align 8
  %494 = load i32, i32* %493, align 4
  %495 = load i32**, i32*** %10, align 8
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i32 1
  store i32* %497, i32** %495, align 8
  store i32 %494, i32* %496, align 4
  br label %498

498:                                              ; preds = %486, %474
  br label %499

499:                                              ; preds = %498, %469, %440, %411, %311, %309, %282, %255, %225
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
