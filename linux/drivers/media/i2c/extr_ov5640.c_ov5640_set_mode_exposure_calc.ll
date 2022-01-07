; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_mode_exposure_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_mode_exposure_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32, i32, i32, i32, i32 }
%struct.ov5640_mode_info = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OV5640_MODE_720P_1280_720 = common dso_local global i64 0, align 8
@OV5640_MODE_1080P_1920_1080 = common dso_local global i64 0, align 8
@OV5640_REG_AVG_READOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, %struct.ov5640_mode_info*)* @ov5640_set_mode_exposure_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_mode_exposure_calc(%struct.ov5640_dev* %0, %struct.ov5640_mode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca %struct.ov5640_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store %struct.ov5640_mode_info* %1, %struct.ov5640_mode_info** %5, align 8
  %19 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %20 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %315

26:                                               ; preds = %2
  %27 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %28 = call i32 @ov5640_get_exposure(%struct.ov5640_dev* %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %3, align 4
  br label %315

33:                                               ; preds = %26
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %36 = call i32 @ov5640_get_binning(%struct.ov5640_dev* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %3, align 4
  br label %315

41:                                               ; preds = %33
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %46 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OV5640_MODE_720P_1280_720, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %52 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OV5640_MODE_1080P_1920_1080, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %50, %44, %41
  %60 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %61 = call i32 @ov5640_get_gain(%struct.ov5640_dev* %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %18, align 4
  store i32 %65, i32* %3, align 4
  br label %315

66:                                               ; preds = %59
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %69 = load i32, i32* @OV5640_REG_AVG_READOUT, align 4
  %70 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %68, i32 %69, i32* %17)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %3, align 4
  br label %315

75:                                               ; preds = %66
  %76 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %77 = call i32 @ov5640_set_night_mode(%struct.ov5640_dev* %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %3, align 4
  br label %315

82:                                               ; preds = %75
  %83 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %84 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %85 = call i32 @ov5640_load_regs(%struct.ov5640_dev* %83, %struct.ov5640_mode_info* %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %3, align 4
  br label %315

90:                                               ; preds = %82
  %91 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %92 = call i32 @ov5640_get_vts(%struct.ov5640_dev* %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %3, align 4
  br label %315

97:                                               ; preds = %90
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %12, align 4
  %99 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %100 = call i32 @ov5640_get_hts(%struct.ov5640_dev* %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %3, align 4
  br label %315

105:                                              ; preds = %97
  %106 = load i32, i32* %18, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %315

111:                                              ; preds = %105
  %112 = load i32, i32* %18, align 4
  store i32 %112, i32* %11, align 4
  %113 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %114 = call i32 @ov5640_get_sysclk(%struct.ov5640_dev* %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %3, align 4
  br label %315

119:                                              ; preds = %111
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %315

125:                                              ; preds = %119
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %10, align 4
  %127 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %128 = call i32 @ov5640_get_light_freq(%struct.ov5640_dev* %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %3, align 4
  br label %315

133:                                              ; preds = %125
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 60
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %138, 100
  %140 = load i32, i32* %11, align 4
  %141 = sdiv i32 %139, %140
  %142 = mul nsw i32 %141, 100
  %143 = sdiv i32 %142, 120
  store i32 %143, i32* %14, align 4
  br label %149

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = mul nsw i32 %145, 100
  %147 = load i32, i32* %11, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %144, %137
  %150 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %151 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %149
  %155 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %156 = call i32 @ov5640_get_sysclk(%struct.ov5640_dev* %155)
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %18, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %3, align 4
  br label %315

161:                                              ; preds = %154
  %162 = load i32, i32* %18, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %315

167:                                              ; preds = %161
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %170 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %149
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %315

177:                                              ; preds = %171
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %178, 4
  %180 = load i32, i32* %14, align 4
  %181 = sdiv i32 %179, %180
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %184 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %177
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %190 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %215

193:                                              ; preds = %187
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %6, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %200 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %198, %201
  %203 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %204 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  %207 = load i32, i32* %11, align 4
  %208 = sdiv i32 %206, %207
  %209 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %210 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %17, align 4
  %214 = sdiv i32 %212, %213
  store i32 %214, i32* %16, align 4
  br label %231

215:                                              ; preds = %187, %177
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %6, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %10, align 4
  %220 = mul nsw i32 %218, %219
  %221 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %222 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sdiv i32 %220, %223
  %225 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %226 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %224, %227
  %229 = load i32, i32* %11, align 4
  %230 = sdiv i32 %228, %229
  store i32 %230, i32* %16, align 4
  br label %231

231:                                              ; preds = %215, %193
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %14, align 4
  %234 = mul nsw i32 %233, 16
  %235 = icmp slt i32 %232, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %231
  %237 = load i32, i32* %16, align 4
  %238 = sdiv i32 %237, 16
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  store i32 1, i32* %8, align 4
  br label %242

242:                                              ; preds = %241, %236
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* %8, align 4
  %245 = sdiv i32 %243, %244
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp slt i32 %246, 16
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  store i32 16, i32* %9, align 4
  br label %249

249:                                              ; preds = %248, %242
  br label %287

250:                                              ; preds = %231
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %15, align 4
  %254 = mul nsw i32 %252, %253
  %255 = mul nsw i32 %254, 16
  %256 = icmp sgt i32 %251, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %250
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %15, align 4
  %260 = mul nsw i32 %258, %259
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %257
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %3, align 4
  br label %315

266:                                              ; preds = %257
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %8, align 4
  %269 = sdiv i32 %267, %268
  store i32 %269, i32* %9, align 4
  br label %286

270:                                              ; preds = %250
  %271 = load i32, i32* %16, align 4
  %272 = sdiv i32 %271, 16
  %273 = load i32, i32* %14, align 4
  %274 = sdiv i32 %272, %273
  %275 = load i32, i32* %14, align 4
  %276 = mul nsw i32 %274, %275
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %270
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %3, align 4
  br label %315

282:                                              ; preds = %270
  %283 = load i32, i32* %16, align 4
  %284 = load i32, i32* %8, align 4
  %285 = sdiv i32 %283, %284
  store i32 %285, i32* %9, align 4
  br label %286

286:                                              ; preds = %282, %266
  br label %287

287:                                              ; preds = %286, %249
  %288 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @ov5640_set_gain(%struct.ov5640_dev* %288, i32 %289)
  store i32 %290, i32* %18, align 4
  %291 = load i32, i32* %18, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %287
  %294 = load i32, i32* %18, align 4
  store i32 %294, i32* %3, align 4
  br label %315

295:                                              ; preds = %287
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %12, align 4
  %298 = sub nsw i32 %297, 4
  %299 = icmp sgt i32 %296, %298
  br i1 %299, label %300, label %311

300:                                              ; preds = %295
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 4
  store i32 %302, i32* %12, align 4
  %303 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @ov5640_set_vts(%struct.ov5640_dev* %303, i32 %304)
  store i32 %305, i32* %18, align 4
  %306 = load i32, i32* %18, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %300
  %309 = load i32, i32* %18, align 4
  store i32 %309, i32* %3, align 4
  br label %315

310:                                              ; preds = %300
  br label %311

311:                                              ; preds = %310, %295
  %312 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @ov5640_set_exposure(%struct.ov5640_dev* %312, i32 %313)
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %311, %308, %293, %279, %263, %174, %164, %159, %131, %122, %117, %108, %103, %95, %88, %80, %73, %64, %39, %31, %23
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @ov5640_get_exposure(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_get_binning(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_get_gain(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_read_reg(%struct.ov5640_dev*, i32, i32*) #1

declare dso_local i32 @ov5640_set_night_mode(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_load_regs(%struct.ov5640_dev*, %struct.ov5640_mode_info*) #1

declare dso_local i32 @ov5640_get_vts(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_get_hts(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_get_sysclk(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_get_light_freq(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_set_gain(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_vts(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_exposure(%struct.ov5640_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
