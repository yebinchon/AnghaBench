; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_calibration_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_calibration_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.ath_common = type { i32 }

@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@AR9300_NUM_5G_CAL_PIERS = common dso_local global i32 0, align 4
@AR9300_NUM_2G_CAL_PIERS = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ch=%d f=%d low=%d %d h=%d %d n=%d %d p=%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"for frequency=%d, calibration correction = %d %d %d\0A\00", align 1
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ar9003_hw_calibration_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_calibration_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %35 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %9, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %10, align 8
  %39 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  %42 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %12, align 8
  %45 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %48 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %14, align 8
  %51 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %15, align 8
  %54 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %16, align 8
  %57 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %58 = zext i32 %57 to i64
  %59 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %17, align 8
  %60 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %61 = zext i32 %60 to i64
  %62 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %18, align 8
  %63 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %64 = zext i32 %63 to i64
  %65 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %19, align 8
  %66 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %67 = zext i32 %66 to i64
  %68 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %20, align 8
  %69 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %70 = zext i32 %69 to i64
  %71 = alloca i32, i64 %70, align 16
  store i64 %70, i64* %21, align 8
  %72 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %73 = zext i32 %72 to i64
  %74 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %23, align 8
  %75 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %76 = zext i32 %75 to i64
  %77 = alloca i32, i64 %76, align 16
  store i64 %76, i64* %24, align 8
  %78 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %79 = zext i32 %78 to i64
  %80 = alloca i32, i64 %79, align 16
  store i64 %79, i64* %25, align 8
  %81 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %26, align 8
  %84 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %85 = zext i32 %84 to i64
  %86 = alloca i32, i64 %85, align 16
  store i64 %85, i64* %27, align 8
  %87 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %88 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %87)
  store %struct.ath_common* %88, %struct.ath_common** %34, align 8
  %89 = load i32, i32* %4, align 4
  %90 = icmp sge i32 %89, 4000
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %2
  %95 = load i32, i32* @AR9300_NUM_5G_CAL_PIERS, align 4
  store i32 %95, i32* %7, align 4
  br label %98

96:                                               ; preds = %2
  %97 = load i32, i32* @AR9300_NUM_2G_CAL_PIERS, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %94
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %110, %98
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %38, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %56, i64 %108
  store i32 100000, i32* %109, align 4
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %99

113:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %233, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %236

118:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %229, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %232

123:                                              ; preds = %119
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @ar9003_hw_cal_pier_get(%struct.ath_hw* %124, i32 %125, i32 %126, i32 %127, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %228, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %28, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %22, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %183

136:                                              ; preds = %130
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %56, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %56, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %146, 100000
  br i1 %147, label %157, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %56, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %150, %154
  %156 = icmp sgt i32 %149, %155
  br i1 %156, label %157, label %182

157:                                              ; preds = %148, %142, %136
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %56, i64 %160
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* %29, align 4
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %59, i64 %164
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %62, i64 %168
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* %31, align 4
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %65, i64 %172
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* %32, align 4
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %68, i64 %176
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* %33, align 4
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %71, i64 %180
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %157, %148
  br label %183

183:                                              ; preds = %182, %130
  %184 = load i32, i32* %22, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %227

186:                                              ; preds = %183
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %38, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %38, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %194, %198
  %200 = icmp slt i32 %193, %199
  br i1 %200, label %201, label %226

201:                                              ; preds = %192, %186
  %202 = load i32, i32* %28, align 4
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %38, i64 %204
  store i32 %202, i32* %205, align 4
  %206 = load i32, i32* %29, align 4
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %41, i64 %208
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* %30, align 4
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %44, i64 %212
  store i32 %210, i32* %213, align 4
  %214 = load i32, i32* %31, align 4
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %47, i64 %216
  store i32 %214, i32* %217, align 4
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %50, i64 %220
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* %33, align 4
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %53, i64 %224
  store i32 %222, i32* %225, align 4
  br label %226

226:                                              ; preds = %201, %192
  br label %227

227:                                              ; preds = %226, %183
  br label %228

228:                                              ; preds = %227, %123
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %119

232:                                              ; preds = %119
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %5, align 4
  br label %114

236:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %546, %236
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %549

241:                                              ; preds = %237
  %242 = load %struct.ath_common*, %struct.ath_common** %34, align 8
  %243 = load i32, i32* @EEPROM, align 4
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %38, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %41, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %56, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %59, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %50, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %68, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %53, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %71, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (%struct.ath_common*, i32, i8*, i32, i32, i32, i32, ...) @ath_dbg(%struct.ath_common* %242, i32 %243, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %244, i32 %245, i32 %249, i32 %253, i32 %257, i32 %261, i32 %265, i32 %269, i32 %273, i32 %277)
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %56, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %38, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %282, %286
  br i1 %287, label %288, label %324

288:                                              ; preds = %241
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %41, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %74, i64 %294
  store i32 %292, i32* %295, align 4
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %47, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %77, i64 %301
  store i32 %299, i32* %302, align 4
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %44, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %80, i64 %308
  store i32 %306, i32* %309, align 4
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %50, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %83, i64 %315
  store i32 %313, i32* %316, align 4
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %53, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %86, i64 %322
  store i32 %320, i32* %323, align 4
  br label %545

324:                                              ; preds = %241
  %325 = load i32, i32* %4, align 4
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %38, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = sub nsw i32 %325, %329
  %331 = icmp slt i32 %330, 1000
  br i1 %331, label %332, label %483

332:                                              ; preds = %324
  %333 = load i32, i32* %5, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %56, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %4, align 4
  %338 = sub nsw i32 %336, %337
  %339 = icmp slt i32 %338, 1000
  br i1 %339, label %340, label %446

340:                                              ; preds = %332
  %341 = load i32, i32* %4, align 4
  %342 = load i32, i32* %5, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %38, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %5, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %56, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %41, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %5, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %59, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @interpolate(i32 %341, i32 %345, i32 %349, i32 %353, i32 %357)
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %74, i64 %360
  store i32 %358, i32* %361, align 4
  %362 = load i32, i32* %4, align 4
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %38, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %5, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %56, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %5, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %44, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %62, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @interpolate(i32 %362, i32 %366, i32 %370, i32 %374, i32 %378)
  %380 = load i32, i32* %5, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %80, i64 %381
  store i32 %379, i32* %382, align 4
  %383 = load i32, i32* %4, align 4
  %384 = load i32, i32* %5, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %38, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %5, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %56, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %47, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %5, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %65, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @interpolate(i32 %383, i32 %387, i32 %391, i32 %395, i32 %399)
  %401 = load i32, i32* %5, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %77, i64 %402
  store i32 %400, i32* %403, align 4
  %404 = load i32, i32* %4, align 4
  %405 = load i32, i32* %5, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %38, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %56, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %50, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %5, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %68, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @interpolate(i32 %404, i32 %408, i32 %412, i32 %416, i32 %420)
  %422 = load i32, i32* %5, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %83, i64 %423
  store i32 %421, i32* %424, align 4
  %425 = load i32, i32* %4, align 4
  %426 = load i32, i32* %5, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %38, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %56, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %53, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %71, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @interpolate(i32 %425, i32 %429, i32 %433, i32 %437, i32 %441)
  %443 = load i32, i32* %5, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %86, i64 %444
  store i32 %442, i32* %445, align 4
  br label %482

446:                                              ; preds = %332
  %447 = load i32, i32* %5, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %41, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %5, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %74, i64 %452
  store i32 %450, i32* %453, align 4
  %454 = load i32, i32* %5, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %44, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* %5, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %80, i64 %459
  store i32 %457, i32* %460, align 4
  %461 = load i32, i32* %5, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %47, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %5, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %77, i64 %466
  store i32 %464, i32* %467, align 4
  %468 = load i32, i32* %5, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %50, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %5, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %83, i64 %473
  store i32 %471, i32* %474, align 4
  %475 = load i32, i32* %5, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %53, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* %5, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %86, i64 %480
  store i32 %478, i32* %481, align 4
  br label %482

482:                                              ; preds = %446, %340
  br label %544

483:                                              ; preds = %324
  %484 = load i32, i32* %5, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %56, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* %4, align 4
  %489 = sub nsw i32 %487, %488
  %490 = icmp slt i32 %489, 1000
  br i1 %490, label %491, label %527

491:                                              ; preds = %483
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %59, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %5, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %74, i64 %497
  store i32 %495, i32* %498, align 4
  %499 = load i32, i32* %5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %62, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* %5, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %80, i64 %504
  store i32 %502, i32* %505, align 4
  %506 = load i32, i32* %5, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %65, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %5, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %77, i64 %511
  store i32 %509, i32* %512, align 4
  %513 = load i32, i32* %5, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %68, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %5, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %83, i64 %518
  store i32 %516, i32* %519, align 4
  %520 = load i32, i32* %5, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %71, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* %5, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %86, i64 %525
  store i32 %523, i32* %526, align 4
  br label %543

527:                                              ; preds = %483
  %528 = load i32, i32* %5, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %74, i64 %529
  store i32 0, i32* %530, align 4
  %531 = load i32, i32* %5, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %80, i64 %532
  store i32 0, i32* %533, align 4
  %534 = load i32, i32* %5, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %77, i64 %535
  store i32 0, i32* %536, align 4
  %537 = load i32, i32* %5, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %83, i64 %538
  store i32 0, i32* %539, align 4
  %540 = load i32, i32* %5, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %86, i64 %541
  store i32 0, i32* %542, align 4
  br label %543

543:                                              ; preds = %527, %491
  br label %544

544:                                              ; preds = %543, %482
  br label %545

545:                                              ; preds = %544, %288
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %5, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %5, align 4
  br label %237

549:                                              ; preds = %237
  %550 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %551 = load i32, i32* %4, align 4
  %552 = call i32 @ar9003_hw_power_control_override(%struct.ath_hw* %550, i32 %551, i32* %74, i32* %77, i32* %80)
  %553 = load %struct.ath_common*, %struct.ath_common** %34, align 8
  %554 = load i32, i32* @EEPROM, align 4
  %555 = load i32, i32* %4, align 4
  %556 = getelementptr inbounds i32, i32* %74, i64 0
  %557 = load i32, i32* %556, align 16
  %558 = getelementptr inbounds i32, i32* %74, i64 1
  %559 = load i32, i32* %558, align 4
  %560 = getelementptr inbounds i32, i32* %74, i64 2
  %561 = load i32, i32* %560, align 8
  %562 = call i32 (%struct.ath_common*, i32, i8*, i32, i32, i32, i32, ...) @ath_dbg(%struct.ath_common* %553, i32 %554, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %555, i32 %557, i32 %559, i32 %561)
  store i32 0, i32* %5, align 4
  br label %563

563:                                              ; preds = %617, %549
  %564 = load i32, i32* %5, align 4
  %565 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %620

567:                                              ; preds = %563
  %568 = load i32, i32* %8, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %593

570:                                              ; preds = %567
  %571 = load i32, i32* %5, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %83, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %576 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %576, i32 0, i32 0
  %578 = load i32*, i32** %577, align 8
  %579 = load i32, i32* %5, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  store i32 %574, i32* %581, align 4
  %582 = load i32, i32* %5, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %86, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %587 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %586, i32 0, i32 1
  %588 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %587, i32 0, i32 1
  %589 = load i32*, i32** %588, align 8
  %590 = load i32, i32* %5, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %589, i64 %591
  store i32 %585, i32* %592, align 4
  br label %616

593:                                              ; preds = %567
  %594 = load i32, i32* %5, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %83, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %599 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i32 0, i32 0
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %5, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  store i32 %597, i32* %604, align 4
  %605 = load i32, i32* %5, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %86, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %610 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %610, i32 0, i32 1
  %612 = load i32*, i32** %611, align 8
  %613 = load i32, i32* %5, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %612, i64 %614
  store i32 %608, i32* %615, align 4
  br label %616

616:                                              ; preds = %593, %570
  br label %617

617:                                              ; preds = %616
  %618 = load i32, i32* %5, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %5, align 4
  br label %563

620:                                              ; preds = %563
  %621 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %621)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #2

declare dso_local i32 @ar9003_hw_cal_pier_get(%struct.ath_hw*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32, ...) #2

declare dso_local i32 @interpolate(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ar9003_hw_power_control_override(%struct.ath_hw*, i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
