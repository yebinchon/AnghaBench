; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_detect_cvt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_detect_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@V4L2_DV_VSYNC_POS_POL = common dso_local global i64 0, align 8
@V4L2_DV_HSYNC_POS_POL = common dso_local global i64 0, align 8
@CVT_RB_V_BPORCH = common dso_local global i32 0, align 4
@CVT_RB_MIN_V_BLANK = common dso_local global i32 0, align 4
@CVT_RB_V2_MIN_V_FPORCH = common dso_local global i32 0, align 4
@CVT_RB_V_FPORCH = common dso_local global i32 0, align 4
@CVT_RB_MIN_V_BPORCH = common dso_local global i32 0, align 4
@CVT_MIN_V_PORCH_RND = common dso_local global i32 0, align 4
@CVT_MIN_VSYNC_BP = common dso_local global i32 0, align 4
@CVT_MIN_V_BPORCH = common dso_local global i32 0, align 4
@CVT_RB_V2_H_BLANK = common dso_local global i32 0, align 4
@CVT_RB_H_BLANK = common dso_local global i32 0, align 4
@CVT_PXL_CLK_GRAN_RB_V2 = common dso_local global i32 0, align 4
@CVT_PXL_CLK_GRAN = common dso_local global i32 0, align 4
@CVT_RB_H_SYNC = common dso_local global i32 0, align 4
@CVT_C_PRIME = common dso_local global i32 0, align 4
@CVT_M_PRIME = common dso_local global i32 0, align 4
@CVT_CELL_GRAN = common dso_local global i32 0, align 4
@CVT_HSYNC_PERCENT = common dso_local global i32 0, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i32 0, align 4
@V4L2_DV_PROGRESSIVE = common dso_local global i32 0, align 4
@V4L2_DV_FL_HALF_LINE = common dso_local global i32 0, align 4
@V4L2_DV_INTERLACED = common dso_local global i32 0, align 4
@V4L2_DV_BT_STD_CVT = common dso_local global i32 0, align 4
@V4L2_DV_FL_REDUCED_BLANKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_detect_cvt(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, %struct.v4l2_dv_timings* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.v4l2_dv_timings*, align 8
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
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.v4l2_dv_timings* %6, %struct.v4l2_dv_timings** %15, align 8
  store i32 0, i32* %25, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %11, align 4
  %35 = icmp ugt i32 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %7
  store i32 0, i32* %8, align 4
  br label %423

37:                                               ; preds = %33
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @V4L2_DV_VSYNC_POS_POL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %24, align 4
  br label %49

42:                                               ; preds = %37
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @V4L2_DV_HSYNC_POS_POL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %24, align 4
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %423

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %24, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %25, align 4
  br label %56

56:                                               ; preds = %55, %52, %49
  %57 = load i32, i32* %25, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %423

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %25, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp ugt i32 %67, 7
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %423

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %423

74:                                               ; preds = %70
  %75 = load i32, i32* %24, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %74
  %78 = load i32, i32* %25, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, i32* @CVT_RB_V_BPORCH, align 4
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* @CVT_RB_MIN_V_BLANK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul i32 %82, %83
  %85 = udiv i32 %84, 1000000
  %86 = add i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add i32 %87, %88
  %90 = load i32, i32* %16, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @CVT_RB_V2_MIN_V_FPORCH, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load i32, i32* @CVT_RB_V2_MIN_V_FPORCH, align 4
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %95, %80
  br label %116

98:                                               ; preds = %77
  %99 = load i32, i32* @CVT_RB_V_FPORCH, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* @CVT_RB_MIN_V_BLANK, align 4
  %101 = load i32, i32* %10, align 4
  %102 = mul i32 %100, %101
  %103 = udiv i32 %102, 1000000
  %104 = add i32 %103, 1
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %16, align 4
  %107 = add i32 %105, %106
  %108 = load i32, i32* %17, align 4
  %109 = sub i32 %108, %107
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @CVT_RB_MIN_V_BPORCH, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i32, i32* @CVT_RB_MIN_V_BPORCH, align 4
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %113, %98
  br label %116

116:                                              ; preds = %115, %97
  br label %132

117:                                              ; preds = %74
  %118 = load i32, i32* @CVT_MIN_V_PORCH_RND, align 4
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* @CVT_MIN_VSYNC_BP, align 4
  %120 = load i32, i32* %10, align 4
  %121 = mul i32 %119, %120
  %122 = udiv i32 %121, 1000000
  %123 = add i32 %122, 1
  %124 = load i32, i32* %11, align 4
  %125 = sub i32 %123, %124
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @CVT_MIN_V_BPORCH, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load i32, i32* @CVT_MIN_V_BPORCH, align 4
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %129, %117
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %16, align 4
  %138 = mul nsw i32 2, %137
  %139 = sub i32 %136, %138
  %140 = load i32, i32* %11, align 4
  %141 = mul i32 2, %140
  %142 = sub i32 %139, %141
  %143 = load i32, i32* %17, align 4
  %144 = mul nsw i32 2, %143
  %145 = sub i32 %142, %144
  %146 = and i32 %145, -2
  store i32 %146, i32* %22, align 4
  br label %157

147:                                              ; preds = %132
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sub i32 %148, %149
  %151 = load i32, i32* %11, align 4
  %152 = sub i32 %150, %151
  %153 = load i32, i32* %17, align 4
  %154 = sub i32 %152, %153
  %155 = add i32 %154, 1
  %156 = and i32 %155, -2
  store i32 %156, i32* %22, align 4
  br label %157

157:                                              ; preds = %147, %135
  %158 = load i32, i32* %22, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %423

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  switch i32 %162, label %194 [
    i32 4, label %163
    i32 5, label %167
    i32 6, label %171
    i32 7, label %175
    i32 8, label %192
  ]

163:                                              ; preds = %161
  %164 = load i32, i32* %22, align 4
  %165 = mul nsw i32 %164, 4
  %166 = sdiv i32 %165, 3
  store i32 %166, i32* %23, align 4
  br label %195

167:                                              ; preds = %161
  %168 = load i32, i32* %22, align 4
  %169 = mul nsw i32 %168, 16
  %170 = sdiv i32 %169, 9
  store i32 %170, i32* %23, align 4
  br label %195

171:                                              ; preds = %161
  %172 = load i32, i32* %22, align 4
  %173 = mul nsw i32 %172, 16
  %174 = sdiv i32 %173, 10
  store i32 %174, i32* %23, align 4
  br label %195

175:                                              ; preds = %161
  %176 = load i32, i32* %22, align 4
  %177 = icmp eq i32 %176, 1024
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, i32* %22, align 4
  %180 = mul nsw i32 %179, 5
  %181 = sdiv i32 %180, 4
  store i32 %181, i32* %23, align 4
  br label %191

182:                                              ; preds = %175
  %183 = load i32, i32* %22, align 4
  %184 = icmp eq i32 %183, 768
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i32, i32* %22, align 4
  %187 = mul nsw i32 %186, 15
  %188 = sdiv i32 %187, 9
  store i32 %188, i32* %23, align 4
  br label %190

189:                                              ; preds = %182
  store i32 0, i32* %8, align 4
  br label %423

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190, %178
  br label %195

192:                                              ; preds = %161
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %23, align 4
  br label %195

194:                                              ; preds = %161
  store i32 0, i32* %8, align 4
  br label %423

195:                                              ; preds = %192, %191, %171, %167, %163
  %196 = load i32, i32* %25, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %23, align 4
  %200 = and i32 %199, -8
  store i32 %200, i32* %23, align 4
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* %24, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %242

204:                                              ; preds = %201
  %205 = load i32, i32* %25, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* @CVT_RB_V2_H_BLANK, align 4
  br label %211

209:                                              ; preds = %204
  %210 = load i32, i32* @CVT_RB_H_BLANK, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  store i32 %212, i32* %27, align 4
  %213 = load i32, i32* %25, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i32, i32* @CVT_PXL_CLK_GRAN_RB_V2, align 4
  br label %219

217:                                              ; preds = %211
  %218 = load i32, i32* @CVT_PXL_CLK_GRAN, align 4
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %216, %215 ], [ %218, %217 ]
  store i32 %220, i32* %28, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %27, align 4
  %223 = add nsw i32 %221, %222
  %224 = load i32, i32* %10, align 4
  %225 = mul i32 %223, %224
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %28, align 4
  %228 = udiv i32 %226, %227
  %229 = load i32, i32* %28, align 4
  %230 = mul i32 %228, %229
  store i32 %230, i32* %26, align 4
  %231 = load i32, i32* %27, align 4
  %232 = sdiv i32 %231, 2
  store i32 %232, i32* %19, align 4
  %233 = load i32, i32* @CVT_RB_H_SYNC, align 4
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %27, align 4
  %235 = load i32, i32* %19, align 4
  %236 = sub nsw i32 %234, %235
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %236, %237
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %27, align 4
  %241 = add nsw i32 %239, %240
  store i32 %241, i32* %21, align 4
  br label %296

242:                                              ; preds = %201
  %243 = load i32, i32* @CVT_C_PRIME, align 4
  %244 = mul nsw i32 100, %243
  %245 = load i32, i32* @CVT_M_PRIME, align 4
  %246 = mul nsw i32 %245, 100000
  %247 = load i32, i32* %10, align 4
  %248 = udiv i32 %246, %247
  %249 = sub i32 %244, %248
  store i32 %249, i32* %29, align 4
  %250 = load i32, i32* %29, align 4
  %251 = icmp ult i32 %250, 2000
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  store i32 2000, i32* %29, align 4
  br label %253

253:                                              ; preds = %252, %242
  %254 = load i32, i32* %23, align 4
  %255 = load i32, i32* %29, align 4
  %256 = mul i32 %254, %255
  %257 = load i32, i32* %29, align 4
  %258 = sub i32 10000, %257
  %259 = udiv i32 %256, %258
  store i32 %259, i32* %30, align 4
  %260 = load i32, i32* %30, align 4
  %261 = load i32, i32* @CVT_CELL_GRAN, align 4
  %262 = mul nsw i32 2, %261
  %263 = sdiv i32 %260, %262
  %264 = mul nsw i32 %263, 2
  %265 = load i32, i32* @CVT_CELL_GRAN, align 4
  %266 = mul nsw i32 %264, %265
  store i32 %266, i32* %30, align 4
  %267 = load i32, i32* %23, align 4
  %268 = load i32, i32* %30, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %10, align 4
  %271 = mul i32 %269, %270
  store i32 %271, i32* %26, align 4
  %272 = load i32, i32* %26, align 4
  %273 = load i32, i32* @CVT_PXL_CLK_GRAN, align 4
  %274 = udiv i32 %272, %273
  %275 = load i32, i32* @CVT_PXL_CLK_GRAN, align 4
  %276 = mul i32 %274, %275
  store i32 %276, i32* %26, align 4
  %277 = load i32, i32* %30, align 4
  %278 = sdiv i32 %277, 2
  store i32 %278, i32* %19, align 4
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* %30, align 4
  %281 = add nsw i32 %279, %280
  store i32 %281, i32* %21, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* @CVT_HSYNC_PERCENT, align 4
  %284 = mul nsw i32 %282, %283
  %285 = sdiv i32 %284, 100
  store i32 %285, i32* %20, align 4
  %286 = load i32, i32* %20, align 4
  %287 = load i32, i32* @CVT_CELL_GRAN, align 4
  %288 = sdiv i32 %286, %287
  %289 = load i32, i32* @CVT_CELL_GRAN, align 4
  %290 = mul nsw i32 %288, %289
  store i32 %290, i32* %20, align 4
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %20, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load i32, i32* %19, align 4
  %295 = sub nsw i32 %293, %294
  store i32 %295, i32* %18, align 4
  br label %296

296:                                              ; preds = %253, %219
  %297 = load i32, i32* @V4L2_DV_BT_656_1120, align 4
  %298 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %299 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 8
  %300 = load i64, i64* %13, align 8
  %301 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %302 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 15
  store i64 %300, i64* %303, align 8
  %304 = load i32, i32* %23, align 4
  %305 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %306 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  store i32 %304, i32* %307, align 8
  %308 = load i32, i32* %22, align 4
  %309 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %310 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 4
  %312 = load i32, i32* %18, align 4
  %313 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %314 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 2
  store i32 %312, i32* %315, align 8
  %316 = load i32, i32* %16, align 4
  %317 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %318 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 3
  store i32 %316, i32* %319, align 4
  %320 = load i32, i32* %20, align 4
  %321 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %322 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 4
  store i32 %320, i32* %323, align 8
  %324 = load i32, i32* %11, align 4
  %325 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %326 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 5
  store i32 %324, i32* %327, align 4
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* %23, align 4
  %330 = sub nsw i32 %328, %329
  %331 = load i32, i32* %18, align 4
  %332 = sub nsw i32 %330, %331
  %333 = load i32, i32* %20, align 4
  %334 = sub nsw i32 %332, %333
  %335 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %336 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 6
  store i32 %334, i32* %337, align 8
  %338 = load i32, i32* %14, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %355, label %340

340:                                              ; preds = %296
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %22, align 4
  %343 = sub i32 %341, %342
  %344 = load i32, i32* %16, align 4
  %345 = sub i32 %343, %344
  %346 = load i32, i32* %11, align 4
  %347 = sub i32 %345, %346
  %348 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %349 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 7
  store i32 %347, i32* %350, align 4
  %351 = load i32, i32* @V4L2_DV_PROGRESSIVE, align 4
  %352 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %353 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 14
  store i32 %351, i32* %354, align 8
  br label %404

355:                                              ; preds = %296
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* %22, align 4
  %358 = sub i32 %356, %357
  %359 = load i32, i32* %16, align 4
  %360 = mul nsw i32 2, %359
  %361 = sub i32 %358, %360
  %362 = load i32, i32* %11, align 4
  %363 = mul i32 2, %362
  %364 = sub i32 %361, %363
  %365 = udiv i32 %364, 2
  %366 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %367 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 7
  store i32 %365, i32* %368, align 4
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* %22, align 4
  %371 = sub i32 %369, %370
  %372 = load i32, i32* %16, align 4
  %373 = mul nsw i32 2, %372
  %374 = sub i32 %371, %373
  %375 = load i32, i32* %11, align 4
  %376 = mul i32 2, %375
  %377 = sub i32 %374, %376
  %378 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %379 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 7
  %381 = load i32, i32* %380, align 4
  %382 = sub i32 %377, %381
  %383 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %384 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 8
  store i32 %382, i32* %385, align 8
  %386 = load i32, i32* %16, align 4
  %387 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %388 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 9
  store i32 %386, i32* %389, align 4
  %390 = load i32, i32* %11, align 4
  %391 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %392 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 10
  store i32 %390, i32* %393, align 8
  %394 = load i32, i32* @V4L2_DV_FL_HALF_LINE, align 4
  %395 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %396 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 12
  %398 = load i32, i32* %397, align 8
  %399 = or i32 %398, %394
  store i32 %399, i32* %397, align 8
  %400 = load i32, i32* @V4L2_DV_INTERLACED, align 4
  %401 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %402 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 14
  store i32 %400, i32* %403, align 8
  br label %404

404:                                              ; preds = %355, %340
  %405 = load i32, i32* %26, align 4
  %406 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %407 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 11
  store i32 %405, i32* %408, align 4
  %409 = load i32, i32* @V4L2_DV_BT_STD_CVT, align 4
  %410 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %411 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 13
  store i32 %409, i32* %412, align 4
  %413 = load i32, i32* %24, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %404
  %416 = load i32, i32* @V4L2_DV_FL_REDUCED_BLANKING, align 4
  %417 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %418 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 12
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %416
  store i32 %421, i32* %419, align 8
  br label %422

422:                                              ; preds = %415, %404
  store i32 1, i32* %8, align 4
  br label %423

423:                                              ; preds = %422, %194, %189, %160, %73, %69, %62, %47, %36
  %424 = load i32, i32* %8, align 4
  ret i32 %424
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
