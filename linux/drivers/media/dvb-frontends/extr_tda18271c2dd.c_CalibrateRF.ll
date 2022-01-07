; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_CalibrateRF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_CalibrateRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32* }

@NUM_REGS = common dso_local global i32 0, align 4
@EP4 = common dso_local global i64 0, align 8
@EB18 = common dso_local global i64 0, align 8
@ID = common dso_local global i64 0, align 8
@EP3 = common dso_local global i64 0, align 8
@m_BP_Filter_Map = common dso_local global i32 0, align 4
@m_GainTaper_Map = common dso_local global i32 0, align 4
@m_KM_Map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EP1 = common dso_local global i64 0, align 8
@EP2 = common dso_local global i64 0, align 8
@EB13 = common dso_local global i64 0, align 8
@EB4 = common dso_local global i64 0, align 8
@EB7 = common dso_local global i64 0, align 8
@EB14 = common dso_local global i64 0, align 8
@EB20 = common dso_local global i64 0, align 8
@EP5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*, i32, i64, i32*)* @CalibrateRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalibrateRF(%struct.tda_state* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @NUM_REGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  br label %22

22:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %24 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @EP4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -4
  store i32 %29, i32* %27, align 4
  %30 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %31 = load i64, i64* @EP4, align 8
  %32 = call i32 @UpdateReg(%struct.tda_state* %30, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %352

36:                                               ; preds = %22
  %37 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %38 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @EB18, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 3
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %45 = load i64, i64* @EB18, align 8
  %46 = call i32 @UpdateReg(%struct.tda_state* %44, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %352

50:                                               ; preds = %36
  %51 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %52 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @ID, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 131
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %60 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @EP3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 64
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %58, %50
  %67 = load i32, i32* @m_BP_Filter_Map, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @SearchMap1(i32 %67, i64 %68, i32* %13)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32, i32* @m_GainTaper_Map, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @SearchMap1(i32 %72, i64 %73, i32* %14)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @m_KM_Map, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @SearchMap3(i32 %77, i64 %78, i32* %15, i32* %16)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %71, %66
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %354

84:                                               ; preds = %76
  %85 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %86 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @EP1, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, -8
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %95 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @EP1, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 5
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %104 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @EP2, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %109 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @EB13, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, -125
  %115 = load i32, i32* %15, align 4
  %116 = shl i32 %115, 4
  %117 = or i32 %114, %116
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 %118, 2
  %120 = or i32 %117, %119
  %121 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %122 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @EB13, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %127 = load i64, i64* @EP1, align 8
  %128 = load i64, i64* @EP3, align 8
  %129 = call i32 @UpdateRegs(%struct.tda_state* %126, i64 %127, i64 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %84
  br label %352

133:                                              ; preds = %84
  %134 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %135 = load i64, i64* @EB13, align 8
  %136 = call i32 @UpdateReg(%struct.tda_state* %134, i64 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %352

140:                                              ; preds = %133
  %141 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %142 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @EB4, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, 32
  store i32 %147, i32* %145, align 4
  %148 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %149 = load i64, i64* @EB4, align 8
  %150 = call i32 @UpdateReg(%struct.tda_state* %148, i64 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %352

154:                                              ; preds = %140
  %155 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %156 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @EB7, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, 32
  store i32 %161, i32* %159, align 4
  %162 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %163 = load i64, i64* @EB7, align 8
  %164 = call i32 @UpdateReg(%struct.tda_state* %162, i64 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %352

168:                                              ; preds = %154
  %169 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %170 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @EB14, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 0, i32* %173, align 4
  %174 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %175 = load i64, i64* @EB14, align 8
  %176 = call i32 @UpdateReg(%struct.tda_state* %174, i64 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %352

180:                                              ; preds = %168
  %181 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %182 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @EB20, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, -33
  store i32 %187, i32* %185, align 4
  %188 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %189 = load i64, i64* @EB20, align 8
  %190 = call i32 @UpdateReg(%struct.tda_state* %188, i64 %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %180
  br label %352

194:                                              ; preds = %180
  %195 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %196 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @EP4, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, 3
  store i32 %201, i32* %199, align 4
  %202 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %203 = load i64, i64* @EP4, align 8
  %204 = load i64, i64* @EP5, align 8
  %205 = call i32 @UpdateRegs(%struct.tda_state* %202, i64 %203, i64 %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %194
  br label %352

209:                                              ; preds = %194
  %210 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %211 = load i64, i64* %8, align 8
  %212 = call i32 @CalcCalPLL(%struct.tda_state* %210, i64 %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %352

216:                                              ; preds = %209
  %217 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %218 = load i64, i64* %8, align 8
  %219 = add nsw i64 %218, 1000000
  %220 = call i32 @CalcMainPLL(%struct.tda_state* %217, i64 %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %352

224:                                              ; preds = %216
  %225 = call i32 @msleep(i32 5)
  %226 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %227 = load i64, i64* @EP2, align 8
  %228 = call i32 @UpdateReg(%struct.tda_state* %226, i64 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %352

232:                                              ; preds = %224
  %233 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %234 = load i64, i64* @EP1, align 8
  %235 = call i32 @UpdateReg(%struct.tda_state* %233, i64 %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %352

239:                                              ; preds = %232
  %240 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %241 = load i64, i64* @EP2, align 8
  %242 = call i32 @UpdateReg(%struct.tda_state* %240, i64 %241)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %352

246:                                              ; preds = %239
  %247 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %248 = load i64, i64* @EP1, align 8
  %249 = call i32 @UpdateReg(%struct.tda_state* %247, i64 %248)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %352

253:                                              ; preds = %246
  %254 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %255 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @EB4, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, -33
  store i32 %260, i32* %258, align 4
  %261 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %262 = load i64, i64* @EB4, align 8
  %263 = call i32 @UpdateReg(%struct.tda_state* %261, i64 %262)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %253
  br label %352

267:                                              ; preds = %253
  %268 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %269 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* @EB7, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, -33
  store i32 %274, i32* %272, align 4
  %275 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %276 = load i64, i64* @EB7, align 8
  %277 = call i32 @UpdateReg(%struct.tda_state* %275, i64 %276)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %267
  br label %352

281:                                              ; preds = %267
  %282 = call i32 @msleep(i32 10)
  %283 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %284 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @EB20, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, 32
  store i32 %289, i32* %287, align 4
  %290 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %291 = load i64, i64* @EB20, align 8
  %292 = call i32 @UpdateReg(%struct.tda_state* %290, i64 %291)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %281
  br label %352

296:                                              ; preds = %281
  %297 = call i32 @msleep(i32 60)
  %298 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %299 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* @EP4, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, -4
  store i32 %304, i32* %302, align 4
  %305 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %306 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* @EP3, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, -65
  store i32 %311, i32* %309, align 4
  %312 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %313 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* @EB18, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, -4
  store i32 %318, i32* %316, align 4
  %319 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %320 = load i64, i64* @EB18, align 8
  %321 = call i32 @UpdateReg(%struct.tda_state* %319, i64 %320)
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %296
  br label %352

325:                                              ; preds = %296
  %326 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %327 = load i64, i64* @EP3, align 8
  %328 = load i64, i64* @EP4, align 8
  %329 = call i32 @UpdateRegs(%struct.tda_state* %326, i64 %327, i64 %328)
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %10, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  br label %352

333:                                              ; preds = %325
  %334 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %335 = load i64, i64* @EP1, align 8
  %336 = call i32 @UpdateReg(%struct.tda_state* %334, i64 %335)
  store i32 %336, i32* %10, align 4
  %337 = load i32, i32* %10, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %333
  br label %352

340:                                              ; preds = %333
  %341 = load %struct.tda_state*, %struct.tda_state** %6, align 8
  %342 = call i32 @ReadExtented(%struct.tda_state* %341, i32* %21)
  store i32 %342, i32* %10, align 4
  %343 = load i32, i32* %10, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  br label %352

346:                                              ; preds = %340
  %347 = load i64, i64* @EB14, align 8
  %348 = getelementptr inbounds i32, i32* %21, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %9, align 8
  store i32 %349, i32* %350, align 4
  br label %351

351:                                              ; preds = %346
  br label %352

352:                                              ; preds = %351, %345, %339, %332, %324, %295, %280, %266, %252, %245, %238, %231, %223, %215, %208, %193, %179, %167, %153, %139, %132, %49, %35
  %353 = load i32, i32* %10, align 4
  store i32 %353, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %354

354:                                              ; preds = %352, %81
  %355 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %355)
  %356 = load i32, i32* %5, align 4
  ret i32 %356
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UpdateReg(%struct.tda_state*, i64) #2

declare dso_local i64 @SearchMap1(i32, i64, i32*) #2

declare dso_local i64 @SearchMap3(i32, i64, i32*, i32*) #2

declare dso_local i32 @UpdateRegs(%struct.tda_state*, i64, i64) #2

declare dso_local i32 @CalcCalPLL(%struct.tda_state*, i64) #2

declare dso_local i32 @CalcMainPLL(%struct.tda_state*, i64) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @ReadExtented(%struct.tda_state*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
