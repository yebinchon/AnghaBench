; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_cx25840_s_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_cx25840_s_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32** }
%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_s_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [24 x i32], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %4, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %14)
  store %struct.cx25840_state* %15, %struct.cx25840_state** %6, align 8
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %17 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_525_60, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %35, %2
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 23
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %33
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %28

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = call i32 @cx25840_std_setup(%struct.i2c_client* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = call i32 @cx25840_write(%struct.i2c_client* %41, i32 1028, i32 50)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %44 = call i32 @cx25840_write(%struct.i2c_client* %43, i32 1030, i32 19)
  %45 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %46 = call i64 @is_cx23888(%struct.cx25840_state* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @cx25840_write(%struct.i2c_client* %49, i32 1359, i32 %50)
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @cx25840_write(%struct.i2c_client* %53, i32 1151, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp sle i32 %61, 6
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %73 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %60

83:                                               ; preds = %60
  br label %133

84:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i32, i32* %9, align 4
  %87 = icmp sle i32 %86, 9
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %90 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 0, i32* %96, align 4
  %97 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %85

108:                                              ; preds = %85
  store i32 22, i32* %9, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %9, align 4
  %111 = icmp sle i32 %110, 23
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %114 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %113, i32 0, i32 0
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 0, i32* %120, align 4
  %121 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %122 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %121, i32 0, i32 0
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %112
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %109

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132, %83
  store i32 7, i32* %9, align 4
  br label %134

134:                                              ; preds = %195, %133
  %135 = load i32, i32* %9, align 4
  %136 = icmp sle i32 %135, 23
  br i1 %136, label %137, label %198

137:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %191, %137
  %139 = load i32, i32* %10, align 4
  %140 = icmp sle i32 %139, 1
  br i1 %140, label %141, label %194

141:                                              ; preds = %138
  %142 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %143 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 1, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %144, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %190 [
    i32 130, label %154
    i32 128, label %163
    i32 131, label %172
    i32 129, label %181
  ]

154:                                              ; preds = %141
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 4, %155
  %157 = shl i32 1, %156
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  br label %190

163:                                              ; preds = %141
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 4, %164
  %166 = shl i32 4, %165
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 4
  br label %190

172:                                              ; preds = %141
  %173 = load i32, i32* %10, align 4
  %174 = mul nsw i32 4, %173
  %175 = shl i32 6, %174
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %190

181:                                              ; preds = %141
  %182 = load i32, i32* %10, align 4
  %183 = mul nsw i32 4, %182
  %184 = shl i32 9, %183
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %184
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %141, %181, %172, %163, %154
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %138

194:                                              ; preds = %138
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %134

198:                                              ; preds = %134
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %198
  store i32 1, i32* %10, align 4
  %202 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %203 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1060
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %222, %201
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %209 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1076
  %212 = icmp sle i32 %207, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %206
  %214 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 6, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @cx25840_write(%struct.i2c_client* %214, i32 %215, i32 %220)
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %206

227:                                              ; preds = %206
  br label %274

228:                                              ; preds = %198
  store i32 1, i32* %10, align 4
  %229 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %230 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1060
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %249, %228
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %236 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1072
  %239 = icmp sle i32 %234, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %233
  %241 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 9, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [24 x i32], [24 x i32]* %11, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @cx25840_write(%struct.i2c_client* %241, i32 %242, i32 %247)
  br label %249

249:                                              ; preds = %240
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  br label %233

254:                                              ; preds = %233
  %255 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %256 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1073
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %270, %254
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %262 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1076
  %265 = icmp sle i32 %260, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @cx25840_write(%struct.i2c_client* %267, i32 %268, i32 0)
  br label %270

270:                                              ; preds = %266
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %9, align 4
  br label %259

273:                                              ; preds = %259
  br label %274

274:                                              ; preds = %273, %227
  %275 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %276 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %277 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1084
  %280 = call i32 @cx25840_write(%struct.i2c_client* %275, i32 %279, i32 22)
  %281 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %282 = call i64 @is_cx23888(%struct.cx25840_state* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %274
  %285 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %286 = load i32, i32* %7, align 4
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 42, i32 34
  %290 = call i32 @cx25840_write(%struct.i2c_client* %285, i32 1064, i32 %289)
  br label %298

291:                                              ; preds = %274
  %292 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 42, i32 34
  %297 = call i32 @cx25840_write(%struct.i2c_client* %292, i32 1140, i32 %296)
  br label %298

298:                                              ; preds = %291, %284
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
