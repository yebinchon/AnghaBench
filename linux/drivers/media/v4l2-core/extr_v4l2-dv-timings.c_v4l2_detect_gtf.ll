; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_detect_gtf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_detect_gtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fract = type { i32, i32 }

@V4L2_DV_VSYNC_POS_POL = common dso_local global i64 0, align 8
@V4L2_DV_HSYNC_POS_POL = common dso_local global i64 0, align 8
@GTF_V_FP = common dso_local global i32 0, align 4
@GTF_MIN_VSYNC_BP = common dso_local global i32 0, align 4
@GTF_CELL_GRAN = common dso_local global i32 0, align 4
@GTF_D_C_PRIME = common dso_local global i32 0, align 4
@GTF_D_M_PRIME = common dso_local global i32 0, align 4
@GTF_S_C_PRIME = common dso_local global i32 0, align 4
@GTF_S_M_PRIME = common dso_local global i32 0, align 4
@GTF_PXL_CLK_GRAN = common dso_local global i32 0, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i32 0, align 4
@V4L2_DV_PROGRESSIVE = common dso_local global i32 0, align 4
@V4L2_DV_FL_HALF_LINE = common dso_local global i32 0, align 4
@V4L2_DV_INTERLACED = common dso_local global i32 0, align 4
@V4L2_DV_BT_STD_GTF = common dso_local global i32 0, align 4
@V4L2_DV_FL_REDUCED_BLANKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_detect_gtf(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i64 %5, %struct.v4l2_dv_timings* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract, align 4
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
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = bitcast %struct.v4l2_fract* %9 to i64*
  store i64 %5, i64* %30, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.v4l2_dv_timings* %6, %struct.v4l2_dv_timings** %15, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %340

34:                                               ; preds = %7
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @V4L2_DV_VSYNC_POS_POL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %24, align 4
  br label %46

39:                                               ; preds = %34
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @V4L2_DV_HSYNC_POS_POL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %24, align 4
  br label %45

44:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %340

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %340

50:                                               ; preds = %46
  %51 = load i32, i32* @GTF_V_FP, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* @GTF_MIN_VSYNC_BP, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul i32 %52, %53
  %55 = add i32 %54, 500000
  %56 = udiv i32 %55, 1000000
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 %56, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 2, %63
  %65 = sub i32 %62, %64
  %66 = load i32, i32* %12, align 4
  %67 = mul i32 2, %66
  %68 = sub i32 %65, %67
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 2, %69
  %71 = sub i32 %68, %70
  %72 = and i32 %71, -2
  store i32 %72, i32* %22, align 4
  br label %83

73:                                               ; preds = %50
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %17, align 4
  %76 = sub i32 %74, %75
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 %76, %77
  %79 = load i32, i32* %18, align 4
  %80 = sub i32 %78, %79
  %81 = add i32 %80, 1
  %82 = and i32 %81, -2
  store i32 %82, i32* %22, align 4
  br label %83

83:                                               ; preds = %73, %61
  %84 = load i32, i32* %22, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %340

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 0
  store i32 16, i32* %96, align 4
  %97 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 1
  store i32 9, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %22, align 4
  %100 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %99, %101
  %103 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %102, %104
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* @GTF_CELL_GRAN, align 4
  %108 = sdiv i32 %107, 2
  %109 = add nsw i32 %106, %108
  %110 = load i32, i32* @GTF_CELL_GRAN, align 4
  %111 = sub nsw i32 %110, 1
  %112 = xor i32 %111, -1
  %113 = and i32 %109, %112
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %98
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* @GTF_D_C_PRIME, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* @GTF_D_M_PRIME, align 4
  %124 = mul nsw i32 %122, %123
  %125 = mul nsw i32 %124, 1000
  %126 = sub nsw i32 %121, %125
  store i32 %126, i32* %26, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @GTF_D_C_PRIME, align 4
  %129 = sub nsw i32 100, %128
  %130 = mul i32 %127, %129
  %131 = load i32, i32* @GTF_D_M_PRIME, align 4
  %132 = mul nsw i32 %131, 1000
  %133 = add i32 %130, %132
  %134 = load i32, i32* @GTF_CELL_GRAN, align 4
  %135 = mul nsw i32 2, %134
  %136 = mul i32 %133, %135
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %27, align 8
  %138 = load i32, i32* %26, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %27, align 8
  %141 = ashr i64 %140, 1
  %142 = add nsw i64 %139, %141
  %143 = trunc i64 %142 to i32
  %144 = load i64, i64* %27, align 8
  %145 = call i32 @div_u64(i32 %143, i64 %144)
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* @GTF_CELL_GRAN, align 4
  %147 = mul nsw i32 2, %146
  %148 = load i32, i32* %25, align 4
  %149 = mul nsw i32 %148, %147
  store i32 %149, i32* %25, align 4
  br label %184

150:                                              ; preds = %98
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* @GTF_S_C_PRIME, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* @GTF_S_M_PRIME, align 4
  %158 = mul nsw i32 %156, %157
  %159 = mul nsw i32 %158, 1000
  %160 = sub nsw i32 %155, %159
  store i32 %160, i32* %28, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @GTF_S_C_PRIME, align 4
  %163 = sub nsw i32 100, %162
  %164 = mul i32 %161, %163
  %165 = load i32, i32* @GTF_S_M_PRIME, align 4
  %166 = mul nsw i32 %165, 1000
  %167 = add i32 %164, %166
  %168 = load i32, i32* @GTF_CELL_GRAN, align 4
  %169 = mul nsw i32 2, %168
  %170 = mul i32 %167, %169
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %29, align 8
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %29, align 8
  %175 = ashr i64 %174, 1
  %176 = add nsw i64 %173, %175
  %177 = trunc i64 %176 to i32
  %178 = load i64, i64* %29, align 8
  %179 = call i32 @div_u64(i32 %177, i64 %178)
  store i32 %179, i32* %25, align 4
  %180 = load i32, i32* @GTF_CELL_GRAN, align 4
  %181 = mul nsw i32 2, %180
  %182 = load i32, i32* %25, align 4
  %183 = mul nsw i32 %182, %181
  store i32 %183, i32* %25, align 4
  br label %184

184:                                              ; preds = %150, %116
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %25, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %25, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %11, align 4
  %192 = mul i32 %190, %191
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* @GTF_PXL_CLK_GRAN, align 4
  %195 = sdiv i32 %193, %194
  %196 = load i32, i32* @GTF_PXL_CLK_GRAN, align 4
  %197 = mul nsw i32 %195, %196
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %21, align 4
  %199 = mul nsw i32 %198, 8
  %200 = add nsw i32 %199, 50
  %201 = sdiv i32 %200, 100
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* @GTF_CELL_GRAN, align 4
  %204 = sdiv i32 %203, 2
  %205 = add nsw i32 %202, %204
  %206 = load i32, i32* @GTF_CELL_GRAN, align 4
  %207 = sdiv i32 %205, %206
  %208 = load i32, i32* @GTF_CELL_GRAN, align 4
  %209 = mul nsw i32 %207, %208
  store i32 %209, i32* %20, align 4
  %210 = load i32, i32* %25, align 4
  %211 = sdiv i32 %210, 2
  %212 = load i32, i32* %20, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* @V4L2_DV_BT_656_1120, align 4
  %215 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %216 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %219 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 15
  store i64 %217, i64* %220, align 8
  %221 = load i32, i32* %23, align 4
  %222 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %223 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load i32, i32* %22, align 4
  %226 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %227 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* %19, align 4
  %230 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %231 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 8
  %233 = load i32, i32* %17, align 4
  %234 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %235 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 3
  store i32 %233, i32* %236, align 4
  %237 = load i32, i32* %20, align 4
  %238 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %239 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 4
  store i32 %237, i32* %240, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %243 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %23, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load i32, i32* %19, align 4
  %249 = sub nsw i32 %247, %248
  %250 = load i32, i32* %20, align 4
  %251 = sub nsw i32 %249, %250
  %252 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %253 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 6
  store i32 %251, i32* %254, align 8
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %184
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %22, align 4
  %260 = sub i32 %258, %259
  %261 = load i32, i32* %17, align 4
  %262 = sub i32 %260, %261
  %263 = load i32, i32* %12, align 4
  %264 = sub i32 %262, %263
  %265 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %266 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 7
  store i32 %264, i32* %267, align 4
  %268 = load i32, i32* @V4L2_DV_PROGRESSIVE, align 4
  %269 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %270 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 14
  store i32 %268, i32* %271, align 8
  br label %321

272:                                              ; preds = %184
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %22, align 4
  %275 = sub i32 %273, %274
  %276 = load i32, i32* %17, align 4
  %277 = mul nsw i32 2, %276
  %278 = sub i32 %275, %277
  %279 = load i32, i32* %12, align 4
  %280 = mul i32 2, %279
  %281 = sub i32 %278, %280
  %282 = udiv i32 %281, 2
  %283 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %284 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 7
  store i32 %282, i32* %285, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %22, align 4
  %288 = sub i32 %286, %287
  %289 = load i32, i32* %17, align 4
  %290 = mul nsw i32 2, %289
  %291 = sub i32 %288, %290
  %292 = load i32, i32* %12, align 4
  %293 = mul i32 2, %292
  %294 = sub i32 %291, %293
  %295 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %296 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = sub i32 %294, %298
  %300 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %301 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 8
  store i32 %299, i32* %302, align 8
  %303 = load i32, i32* %17, align 4
  %304 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %305 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 9
  store i32 %303, i32* %306, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %309 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 10
  store i32 %307, i32* %310, align 8
  %311 = load i32, i32* @V4L2_DV_FL_HALF_LINE, align 4
  %312 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %313 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 12
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, %311
  store i32 %316, i32* %314, align 8
  %317 = load i32, i32* @V4L2_DV_INTERLACED, align 4
  %318 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %319 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 14
  store i32 %317, i32* %320, align 8
  br label %321

321:                                              ; preds = %272, %257
  %322 = load i32, i32* %16, align 4
  %323 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %324 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 11
  store i32 %322, i32* %325, align 4
  %326 = load i32, i32* @V4L2_DV_BT_STD_GTF, align 4
  %327 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %328 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 13
  store i32 %326, i32* %329, align 4
  %330 = load i32, i32* %24, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %321
  %333 = load i32, i32* @V4L2_DV_FL_REDUCED_BLANKING, align 4
  %334 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %15, align 8
  %335 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 12
  %337 = load i32, i32* %336, align 8
  %338 = or i32 %337, %333
  store i32 %338, i32* %336, align 8
  br label %339

339:                                              ; preds = %332, %321
  store i32 1, i32* %8, align 4
  br label %340

340:                                              ; preds = %339, %86, %49, %44, %33
  %341 = load i32, i32* %8, align 4
  ret i32 %341
}

declare dso_local i32 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
