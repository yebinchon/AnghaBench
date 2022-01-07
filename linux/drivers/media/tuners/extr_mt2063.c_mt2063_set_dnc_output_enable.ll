; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_set_dnc_output_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_set_dnc_output_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt2063_state = type { i32*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_REG_DNC_GAIN = common dso_local global i64 0, align 8
@MT2063_REG_VGA_GAIN = common dso_local global i64 0, align 8
@MT2063_REG_RSVD_20 = common dso_local global i64 0, align 8
@DNC1GC = common dso_local global i32* null, align 8
@DNC2GC = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt2063_state*, i32)* @mt2063_set_dnc_output_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2063_set_dnc_output_enable(%struct.mt2063_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mt2063_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt2063_state* %0, %struct.mt2063_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %325 [
    i32 128, label %9
    i32 131, label %81
    i32 130, label %160
    i32 129, label %239
  ]

9:                                                ; preds = %2
  %10 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %11 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 252
  %17 = or i32 %16, 3
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %19 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %9
  %27 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %28 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mt2063_setreg(%struct.mt2063_state* %27, i64 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %9
  %34 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %35 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 252
  %41 = or i32 %40, 3
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %43 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %52 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mt2063_setreg(%struct.mt2063_state* %51, i64 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %33
  %58 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %59 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, -65
  store i32 %64, i32* %6, align 4
  %65 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %66 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %57
  %74 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %75 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @mt2063_setreg(%struct.mt2063_state* %74, i64 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %73, %57
  br label %326

81:                                               ; preds = %2
  %82 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %83 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 252
  %89 = load i32*, i32** @DNC1GC, align 8
  %90 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %91 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 3
  %96 = or i32 %88, %95
  store i32 %96, i32* %6, align 4
  %97 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %98 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %81
  %106 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %107 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @mt2063_setreg(%struct.mt2063_state* %106, i64 %107, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %105, %81
  %113 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %114 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 252
  %120 = or i32 %119, 3
  store i32 %120, i32* %6, align 4
  %121 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %122 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %112
  %130 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %131 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @mt2063_setreg(%struct.mt2063_state* %130, i64 %131, i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %129, %112
  %137 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %138 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, -65
  store i32 %143, i32* %6, align 4
  %144 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %145 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %136
  %153 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %154 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @mt2063_setreg(%struct.mt2063_state* %153, i64 %154, i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %152, %136
  br label %326

160:                                              ; preds = %2
  %161 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %162 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 252
  %168 = or i32 %167, 3
  store i32 %168, i32* %6, align 4
  %169 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %170 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %160
  %178 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %179 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @mt2063_setreg(%struct.mt2063_state* %178, i64 %179, i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %177, %160
  %185 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %186 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 252
  %192 = load i32*, i32** @DNC2GC, align 8
  %193 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %194 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 3
  %199 = or i32 %191, %198
  store i32 %199, i32* %6, align 4
  %200 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %201 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %184
  %209 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %210 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @mt2063_setreg(%struct.mt2063_state* %209, i64 %210, i32 %211)
  %213 = load i32, i32* %5, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %208, %184
  %216 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %217 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, 64
  store i32 %222, i32* %6, align 4
  %223 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %224 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %215
  %232 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %233 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @mt2063_setreg(%struct.mt2063_state* %232, i64 %233, i32 %234)
  %236 = load i32, i32* %5, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %231, %215
  br label %326

239:                                              ; preds = %2
  %240 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %241 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 252
  %247 = load i32*, i32** @DNC1GC, align 8
  %248 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %249 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, 3
  %254 = or i32 %246, %253
  store i32 %254, i32* %6, align 4
  %255 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %256 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %239
  %264 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %265 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @mt2063_setreg(%struct.mt2063_state* %264, i64 %265, i32 %266)
  %268 = load i32, i32* %5, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %263, %239
  %271 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %272 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 252
  %278 = load i32*, i32** @DNC2GC, align 8
  %279 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %280 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 3
  %285 = or i32 %277, %284
  store i32 %285, i32* %6, align 4
  %286 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %287 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %270
  %295 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %296 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %297 = load i32, i32* %6, align 4
  %298 = call i32 @mt2063_setreg(%struct.mt2063_state* %295, i64 %296, i32 %297)
  %299 = load i32, i32* %5, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %294, %270
  %302 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %303 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, 64
  store i32 %308, i32* %6, align 4
  %309 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %310 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %6, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %324

317:                                              ; preds = %301
  %318 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %319 = load i64, i64* @MT2063_REG_RSVD_20, align 8
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @mt2063_setreg(%struct.mt2063_state* %318, i64 %319, i32 %320)
  %322 = load i32, i32* %5, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %5, align 4
  br label %324

324:                                              ; preds = %317, %301
  br label %326

325:                                              ; preds = %2
  br label %326

326:                                              ; preds = %325, %324, %238, %159, %80
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @mt2063_setreg(%struct.mt2063_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
