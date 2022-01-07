; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"mix_div=%d div_num=%d vco_fine_tune=%d\0A\00", align 1
@CHIP_R828D = common dso_local global i64 0, align 8
@VCO_POWER_REF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"freq %d kHz, pll ref %d%s, sdm=0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" / 2\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"tuner has lock at frequency %d kHz\0A\00", align 1
@CHIP_R620D = common dso_local global i64 0, align 8
@CHIP_R828 = common dso_local global i64 0, align 8
@V4L2_TUNER_DIGITAL_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, i32, i32)* @r820t_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_set_pll(%struct.r820t_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r820t_priv*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [5 x i32], align 16
  store %struct.r820t_priv* %0, %struct.r820t_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 10000, i32* %11, align 4
  store i32 1770000, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %14, align 4
  store i32 2, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 1000
  store i32 %31, i32* %7, align 4
  %32 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %33 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 1000
  store i32 %37, i32* %15, align 4
  %38 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %39 = load i32, i32* %21, align 4
  %40 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %38, i32 16, i32 %39, i32 16)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %338

45:                                               ; preds = %3
  %46 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %47 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %46, i32 26, i32 0, i32 12)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %338

52:                                               ; preds = %45
  %53 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %54 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %53, i32 18, i32 128, i32 224)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %338

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32, i32* %18, align 4
  %62 = icmp sle i32 %61, 64
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %18, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %13, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %18, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %80, %75
  %78 = load i32, i32* %19, align 4
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %19, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %20, align 4
  br label %77

85:                                               ; preds = %77
  br label %89

86:                                               ; preds = %69, %63
  %87 = load i32, i32* %18, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %60

89:                                               ; preds = %85, %60
  %90 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i64 0, i64 0
  %92 = call i32 @r820t_read(%struct.r820t_priv* %90, i32 0, i32* %91, i32 20)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %338

97:                                               ; preds = %89
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i64 0, i64 4
  %99 = load i32, i32* %98, align 16
  %100 = and i32 %99, 48
  %101 = ashr i32 %100, 4
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %25, align 4
  %105 = call i32 (i8*, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103, i32 %104)
  %106 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %107 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CHIP_R828D, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %97
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* @VCO_POWER_REF, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %20, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %20, align 4
  br label %128

120:                                              ; preds = %113
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* @VCO_POWER_REF, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %20, align 4
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127, %117
  br label %129

129:                                              ; preds = %128, %97
  %130 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %131 = load i32, i32* %20, align 4
  %132 = shl i32 %131, 5
  %133 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %130, i32 16, i32 %132, i32 224)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %338

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %18, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %15, align 4
  %144 = mul nsw i32 2, %143
  %145 = sdiv i32 %142, %144
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %15, align 4
  %148 = mul nsw i32 2, %147
  %149 = load i32, i32* %24, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sub nsw i32 %146, %150
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sdiv i32 %153, 64
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  br label %197

157:                                              ; preds = %138
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %15, align 4
  %160 = mul nsw i32 %159, 127
  %161 = sdiv i32 %160, 64
  %162 = icmp sgt i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  store i32 0, i32* %12, align 4
  %164 = load i32, i32* %24, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %24, align 4
  br label %196

166:                                              ; preds = %157
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %15, align 4
  %169 = mul nsw i32 %168, 127
  %170 = sdiv i32 %169, 128
  %171 = icmp sgt i32 %167, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* %15, align 4
  %178 = mul nsw i32 %177, 127
  %179 = sdiv i32 %178, 128
  store i32 %179, i32* %12, align 4
  br label %195

180:                                              ; preds = %172, %166
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %15, align 4
  %187 = mul nsw i32 %186, 129
  %188 = sdiv i32 %187, 128
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32, i32* %15, align 4
  %192 = mul nsw i32 %191, 129
  %193 = sdiv i32 %192, 128
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %190, %184, %180
  br label %195

195:                                              ; preds = %194, %176
  br label %196

196:                                              ; preds = %195, %163
  br label %197

197:                                              ; preds = %196, %156
  %198 = load i32, i32* %24, align 4
  %199 = sub nsw i32 %198, 13
  %200 = sdiv i32 %199, 4
  store i32 %200, i32* %22, align 4
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %22, align 4
  %203 = mul nsw i32 4, %202
  %204 = sub nsw i32 %201, %203
  %205 = sub nsw i32 %204, 13
  store i32 %205, i32* %23, align 4
  %206 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %23, align 4
  %209 = shl i32 %208, 6
  %210 = add nsw i32 %207, %209
  %211 = call i32 @r820t_write_reg(%struct.r820t_priv* %206, i32 20, i32 %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %197
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %4, align 4
  br label %338

216:                                              ; preds = %197
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  store i32 8, i32* %26, align 4
  br label %221

220:                                              ; preds = %216
  store i32 0, i32* %26, align 4
  br label %221

221:                                              ; preds = %220, %219
  %222 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %223 = load i32, i32* %26, align 4
  %224 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %222, i32 18, i32 %223, i32 8)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %4, align 4
  br label %338

229:                                              ; preds = %221
  br label %230

230:                                              ; preds = %256, %229
  %231 = load i32, i32* %12, align 4
  %232 = icmp sgt i32 %231, 1
  br i1 %232, label %233, label %259

233:                                              ; preds = %230
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %15, align 4
  %236 = mul nsw i32 2, %235
  %237 = load i32, i32* %16, align 4
  %238 = sdiv i32 %236, %237
  %239 = icmp sgt i32 %234, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %233
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %16, align 4
  %243 = sdiv i32 %242, 2
  %244 = sdiv i32 32768, %243
  %245 = add nsw i32 %241, %244
  store i32 %245, i32* %17, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %15, align 4
  %248 = mul nsw i32 2, %247
  %249 = load i32, i32* %16, align 4
  %250 = sdiv i32 %248, %249
  %251 = sub nsw i32 %246, %250
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %16, align 4
  %253 = icmp sge i32 %252, 32768
  br i1 %253, label %254, label %255

254:                                              ; preds = %240
  br label %259

255:                                              ; preds = %240
  br label %256

256:                                              ; preds = %255, %233
  %257 = load i32, i32* %16, align 4
  %258 = shl i32 %257, 1
  store i32 %258, i32* %16, align 4
  br label %230

259:                                              ; preds = %254, %230
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %266 = load i32, i32* %17, align 4
  %267 = call i32 (i8*, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %260, i32 %261, i8* %265, i32 %266)
  %268 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %269 = load i32, i32* %17, align 4
  %270 = ashr i32 %269, 8
  %271 = call i32 @r820t_write_reg(%struct.r820t_priv* %268, i32 22, i32 %270)
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %259
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %4, align 4
  br label %338

276:                                              ; preds = %259
  %277 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %278 = load i32, i32* %17, align 4
  %279 = and i32 %278, 255
  %280 = call i32 @r820t_write_reg(%struct.r820t_priv* %277, i32 21, i32 %279)
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %9, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %276
  %284 = load i32, i32* %9, align 4
  store i32 %284, i32* %4, align 4
  br label %338

285:                                              ; preds = %276
  store i32 0, i32* %10, align 4
  br label %286

286:                                              ; preds = %319, %285
  %287 = load i32, i32* %10, align 4
  %288 = icmp slt i32 %287, 2
  br i1 %288, label %289, label %322

289:                                              ; preds = %286
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %11, align 4
  %292 = add i32 %291, 1000
  %293 = call i32 @usleep_range(i32 %290, i32 %292)
  %294 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %295 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i64 0, i64 0
  %296 = call i32 @r820t_read(%struct.r820t_priv* %294, i32 0, i32* %295, i32 3)
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %289
  %300 = load i32, i32* %9, align 4
  store i32 %300, i32* %4, align 4
  br label %338

301:                                              ; preds = %289
  %302 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i64 0, i64 2
  %303 = load i32, i32* %302, align 8
  %304 = and i32 %303, 64
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %322

307:                                              ; preds = %301
  %308 = load i32, i32* %10, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %307
  %311 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %312 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %311, i32 18, i32 96, i32 224)
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %9, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* %9, align 4
  store i32 %316, i32* %4, align 4
  br label %338

317:                                              ; preds = %310
  br label %318

318:                                              ; preds = %317, %307
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %10, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %10, align 4
  br label %286

322:                                              ; preds = %306, %286
  %323 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i64 0, i64 2
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, 64
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %322
  %328 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %329 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %328, i32 0, i32 0
  store i32 0, i32* %329, align 8
  store i32 0, i32* %4, align 4
  br label %338

330:                                              ; preds = %322
  %331 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %332 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %331, i32 0, i32 0
  store i32 1, i32* %332, align 8
  %333 = load i32, i32* %7, align 4
  %334 = call i32 (i8*, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %333)
  %335 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %336 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %335, i32 26, i32 8, i32 8)
  store i32 %336, i32* %9, align 4
  %337 = load i32, i32* %9, align 4
  store i32 %337, i32* %4, align 4
  br label %338

338:                                              ; preds = %330, %327, %315, %299, %283, %274, %227, %214, %136, %95, %57, %50, %43
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @r820t_write_reg_mask(%struct.r820t_priv*, i32, i32, i32) #1

declare dso_local i32 @r820t_read(%struct.r820t_priv*, i32, i32*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32, ...) #1

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
