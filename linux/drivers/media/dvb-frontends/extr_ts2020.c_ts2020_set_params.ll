; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ts2020_priv*, %struct.dtv_frontend_properties }
%struct.ts2020_priv = type { i32, i32, i64, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@TS2020_XTAL_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"frequency=%u offset=%d f_vco_khz=%u pll_n=%u div_ref=%u div_out=%u\0A\00", align 1
@TS2020_M88TS2020 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TS2020_M88TS2022 = common dso_local global i64 0, align 8
@FREQ_OFFSET_LOW_SYM_RATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @ts2020_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts2020_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ts2020_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1
  store %struct.dtv_frontend_properties* %26, %struct.dtv_frontend_properties** %4, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = load %struct.ts2020_priv*, %struct.ts2020_priv** %28, align 8
  store %struct.ts2020_priv* %29, %struct.ts2020_priv** %5, align 8
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* @TS2020_XTAL_FREQ, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = call i32 @DIV_ROUND_CLOSEST(i32 %34, i32 2000)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 4, i32* %22, align 4
  store i32 16, i32* %14, align 4
  br label %43

42:                                               ; preds = %1
  store i32 2, i32* %22, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %24, align 4
  %45 = load i32, i32* %22, align 4
  %46 = mul i32 %44, %45
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = mul i32 %47, %48
  %50 = load i32, i32* %19, align 4
  %51 = udiv i32 %49, %50
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %23, align 4
  %53 = urem i32 %52, 2
  %54 = load i32, i32* %23, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %19, align 4
  %58 = mul i32 %56, %57
  %59 = load i32, i32* %21, align 4
  %60 = udiv i32 %58, %59
  %61 = load i32, i32* %22, align 4
  %62 = udiv i32 %60, %61
  %63 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %64 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %66 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %70, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %81 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TS2020_M88TS2020, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %43
  store i32 2766, i32* %12, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %89 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @regmap_write(i32 %90, i32 16, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %107

93:                                               ; preds = %43
  store i32 3200, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, 11
  store i32 %95, i32* %14, align 4
  %96 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %97 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @regmap_write(i32 %98, i32 16, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %102 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @regmap_write(i32 %103, i32 17, i32 64)
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %93, %85
  %108 = load i32, i32* %23, align 4
  %109 = sub i32 %108, 1024
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = ashr i32 %114, 0
  %116 = and i32 %115, 255
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %21, align 4
  %119 = sub i32 %118, 8
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %119, i32* %120, align 4
  %121 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %122 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @regmap_write(i32 %123, i32 1, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %130 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @regmap_write(i32 %131, i32 2, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  %137 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %138 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @regmap_write(i32 %139, i32 3, i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %146 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %145, i32 16)
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %107
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %345

154:                                              ; preds = %107
  %155 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %156 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %155, i32 8)
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %160 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TS2020_M88TS2020, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %166 = call i32 @ts2020_set_tuner_rf(%struct.dvb_frontend* %165)
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %164, %154
  %170 = load i32, i32* @TS2020_XTAL_FREQ, align 4
  %171 = sdiv i32 %170, 1000
  %172 = mul nsw i32 %171, 1694
  %173 = add nsw i32 %172, 500
  %174 = sdiv i32 %173, 1000
  store i32 %174, i32* %9, align 4
  %175 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %176 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %178, 255
  %180 = call i32 @regmap_write(i32 %177, i32 4, i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %184 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %183, i32 4)
  %185 = load i32, i32* %6, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %169
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %345

192:                                              ; preds = %169
  %193 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %194 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @TS2020_M88TS2022, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %227

198:                                              ; preds = %192
  %199 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %200 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @regmap_write(i32 %201, i32 37, i32 0)
  store i32 %202, i32* %6, align 4
  %203 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %204 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @regmap_write(i32 %205, i32 39, i32 112)
  %207 = load i32, i32* %6, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %6, align 4
  %209 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %210 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @regmap_write(i32 %211, i32 65, i32 9)
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %6, align 4
  %215 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %216 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @regmap_write(i32 %217, i32 8, i32 11)
  %219 = load i32, i32* %6, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %198
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %345

226:                                              ; preds = %198
  br label %227

227:                                              ; preds = %226, %192
  %228 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %229 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @regmap_read(i32 %230, i32 38, i32* %7)
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %11, align 4
  %233 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %234 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sdiv i32 %235, 1000
  %237 = sdiv i32 %236, 2
  %238 = add nsw i32 %237, 2000
  store i32 %238, i32* %8, align 4
  %239 = load i64, i64* @FREQ_OFFSET_LOW_SYM_RATE, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %241, %239
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @clamp(i32 %244, i32 7000, i32 40000)
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %9, align 4
  %247 = mul nsw i32 %246, 207
  %248 = load i32, i32* %11, align 4
  %249 = mul nsw i32 %248, 2
  %250 = add nsw i32 %249, 151
  %251 = sdiv i32 %247, %250
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 %252, 135
  %254 = sdiv i32 %253, 100
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %9, align 4
  %256 = mul nsw i32 %255, 78
  %257 = sdiv i32 %256, 100
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %16, align 4
  %259 = icmp sgt i32 %258, 63
  br i1 %259, label %260, label %261

260:                                              ; preds = %227
  store i32 63, i32* %16, align 4
  br label %261

261:                                              ; preds = %260, %227
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %9, align 4
  %264 = mul nsw i32 %262, %263
  %265 = mul nsw i32 %264, 2
  %266 = load i32, i32* %12, align 4
  %267 = sdiv i32 %265, %266
  %268 = load i32, i32* @TS2020_XTAL_FREQ, align 4
  %269 = sdiv i32 %268, 1000
  %270 = sdiv i32 %267, %269
  %271 = add nsw i32 %270, 1
  %272 = sdiv i32 %271, 2
  store i32 %272, i32* %18, align 4
  %273 = load i32, i32* %18, align 4
  %274 = icmp sgt i32 %273, 23
  br i1 %274, label %275, label %276

275:                                              ; preds = %261
  store i32 23, i32* %18, align 4
  br label %276

276:                                              ; preds = %275, %261
  %277 = load i32, i32* %18, align 4
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  store i32 1, i32* %18, align 4
  br label %280

280:                                              ; preds = %279, %276
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* @TS2020_XTAL_FREQ, align 4
  %283 = sdiv i32 %282, 1000
  %284 = mul nsw i32 %281, %283
  %285 = load i32, i32* %12, align 4
  %286 = mul nsw i32 %284, %285
  %287 = mul nsw i32 %286, 2
  %288 = load i32, i32* %8, align 4
  %289 = sdiv i32 %287, %288
  %290 = add nsw i32 %289, 1
  %291 = sdiv i32 %290, 2
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %17, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %280
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* @TS2020_XTAL_FREQ, align 4
  %300 = sdiv i32 %299, 1000
  %301 = mul nsw i32 %298, %300
  %302 = load i32, i32* %12, align 4
  %303 = mul nsw i32 %301, %302
  %304 = mul nsw i32 %303, 2
  %305 = load i32, i32* %8, align 4
  %306 = sdiv i32 %304, %305
  %307 = add nsw i32 %306, 1
  %308 = sdiv i32 %307, 2
  store i32 %308, i32* %15, align 4
  br label %309

309:                                              ; preds = %295, %280
  %310 = load i32, i32* %15, align 4
  %311 = load i32, i32* %16, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i32, i32* %16, align 4
  store i32 %314, i32* %15, align 4
  br label %315

315:                                              ; preds = %313, %309
  %316 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %317 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %15, align 4
  %320 = call i32 @regmap_write(i32 %318, i32 4, i32 %319)
  store i32 %320, i32* %6, align 4
  %321 = load %struct.ts2020_priv*, %struct.ts2020_priv** %5, align 8
  %322 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %18, align 4
  %325 = call i32 @regmap_write(i32 %323, i32 6, i32 %324)
  %326 = load i32, i32* %6, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %6, align 4
  %328 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %329 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %328, i32 4)
  %330 = load i32, i32* %6, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %6, align 4
  %332 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %333 = call i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend* %332, i32 1)
  %334 = load i32, i32* %6, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %6, align 4
  %336 = call i32 @msleep(i32 80)
  %337 = load i32, i32* %6, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %315
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  br label %343

342:                                              ; preds = %315
  br label %343

343:                                              ; preds = %342, %339
  %344 = phi i32 [ %341, %339 ], [ 0, %342 ]
  store i32 %344, i32* %2, align 4
  br label %345

345:                                              ; preds = %343, %223, %189, %151
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ts2020_tuner_gate_ctrl(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @ts2020_set_tuner_rf(%struct.dvb_frontend*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
