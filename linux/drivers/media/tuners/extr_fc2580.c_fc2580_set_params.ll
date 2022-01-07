; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fc2580_dev = type { i64, i64, i32, i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"tuner is sleeping\0A\00", align 1
@fc2580_pll_lut = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"frequency=%u bandwidth=%u f_vco=%llu F_REF=%u div_ref=%u div_n=%u k=%u div_out=%u k_cw=%0x\0A\00", align 1
@fc2580_freq_regs_lut = common dso_local global %struct.TYPE_5__* null, align 8
@fc2580_if_filter_lut = common dso_local global %struct.TYPE_5__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"filter did not lock %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@DIV_N_MIN = common dso_local global i32 0, align 4
@DIV_PRE_N = common dso_local global i32 0, align 4
@F_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc2580_dev*)* @fc2580_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc2580_set_params(%struct.fc2580_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc2580_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
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
  %16 = alloca i64, align 8
  store %struct.fc2580_dev* %0, %struct.fc2580_dev** %3, align 8
  %17 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %18 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %17, i32 0, i32 5
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %4, align 8
  %20 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %21 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %650

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_pll_lut, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %36 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_pll_lut, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %29

50:                                               ; preds = %45, %29
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_pll_lut, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %644

58:                                               ; preds = %50
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_pll_lut, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %13, align 4
  %65 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %66 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %13, align 4
  %70 = mul i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_pll_lut, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %78, 2600000000
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, 6
  store i32 %82, i32* %15, align 4
  br label %86

83:                                               ; preds = %58
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, 14
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %89 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = mul nsw i64 152, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @div_u64(i32 %92, i32 1)
  %94 = icmp uge i32 %87, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %108

96:                                               ; preds = %86
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %99 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = mul nsw i64 152, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @div_u64(i32 %102, i32 2)
  %104 = icmp uge i32 %97, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 2, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %107

106:                                              ; preds = %96
  store i32 4, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %110 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = mul nsw i64 2, %111
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = sdiv i64 %112, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @div_u64_rem(i32 %117, i32 %118, i32* %11)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul i32 %120, 1048576
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @div_u64(i32 %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %127 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %130 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %134 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %125, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i64 %128, i64 %131, i32 %132, i64 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %143 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @regmap_write(i32 %144, i32 2, i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %108
  br label %644

150:                                              ; preds = %108
  %151 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %152 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = shl i32 %154, 0
  %156 = load i32, i32* %12, align 4
  %157 = lshr i32 %156, 16
  %158 = or i32 %155, %157
  %159 = call i32 @regmap_write(i32 %153, i32 24, i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %644

163:                                              ; preds = %150
  %164 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %165 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = lshr i32 %167, 8
  %169 = and i32 %168, 255
  %170 = call i32 @regmap_write(i32 %166, i32 26, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %644

174:                                              ; preds = %163
  %175 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %176 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = lshr i32 %178, 0
  %180 = and i32 %179, 255
  %181 = call i32 @regmap_write(i32 %177, i32 27, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %644

185:                                              ; preds = %174
  %186 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %187 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @regmap_write(i32 %188, i32 28, i32 %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %644

194:                                              ; preds = %185
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %213, %194
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %198 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %197)
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %202 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp sle i64 %203, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %216

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %195

216:                                              ; preds = %211, %195
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %219 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %218)
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %644

224:                                              ; preds = %216
  %225 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 28
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %225, i32 37, i32 %231)
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %224
  br label %644

236:                                              ; preds = %224
  %237 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 27
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %237, i32 39, i32 %243)
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  br label %644

248:                                              ; preds = %236
  %249 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 26
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %249, i32 40, i32 %255)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %248
  br label %644

260:                                              ; preds = %248
  %261 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 25
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %261, i32 41, i32 %267)
  store i32 %268, i32* %5, align 4
  %269 = load i32, i32* %5, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  br label %644

272:                                              ; preds = %260
  %273 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 24
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %273, i32 43, i32 %279)
  store i32 %280, i32* %5, align 4
  %281 = load i32, i32* %5, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %272
  br label %644

284:                                              ; preds = %272
  %285 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 23
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %285, i32 44, i32 %291)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %284
  br label %644

296:                                              ; preds = %284
  %297 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 22
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %297, i32 45, i32 %303)
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* %5, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %296
  br label %644

308:                                              ; preds = %296
  %309 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 21
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %309, i32 48, i32 %315)
  store i32 %316, i32* %5, align 4
  %317 = load i32, i32* %5, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %644

320:                                              ; preds = %308
  %321 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 20
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %321, i32 68, i32 %327)
  store i32 %328, i32* %5, align 4
  %329 = load i32, i32* %5, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %320
  br label %644

332:                                              ; preds = %320
  %333 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %335 = load i32, i32* %6, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 19
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %333, i32 80, i32 %339)
  store i32 %340, i32* %5, align 4
  %341 = load i32, i32* %5, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %332
  br label %644

344:                                              ; preds = %332
  %345 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 18
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %345, i32 83, i32 %351)
  store i32 %352, i32* %5, align 4
  %353 = load i32, i32* %5, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %344
  br label %644

356:                                              ; preds = %344
  %357 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 17
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %357, i32 95, i32 %363)
  store i32 %364, i32* %5, align 4
  %365 = load i32, i32* %5, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %356
  br label %644

368:                                              ; preds = %356
  %369 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %371 = load i32, i32* %6, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 16
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %369, i32 97, i32 %375)
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %5, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %368
  br label %644

380:                                              ; preds = %368
  %381 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 15
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %381, i32 98, i32 %387)
  store i32 %388, i32* %5, align 4
  %389 = load i32, i32* %5, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %380
  br label %644

392:                                              ; preds = %380
  %393 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 14
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %393, i32 99, i32 %399)
  store i32 %400, i32* %5, align 4
  %401 = load i32, i32* %5, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %392
  br label %644

404:                                              ; preds = %392
  %405 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %407 = load i32, i32* %6, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 13
  %411 = load i32, i32* %410, align 8
  %412 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %405, i32 103, i32 %411)
  store i32 %412, i32* %5, align 4
  %413 = load i32, i32* %5, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %404
  br label %644

416:                                              ; preds = %404
  %417 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %419 = load i32, i32* %6, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 12
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %417, i32 104, i32 %423)
  store i32 %424, i32* %5, align 4
  %425 = load i32, i32* %5, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %416
  br label %644

428:                                              ; preds = %416
  %429 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 11
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %429, i32 105, i32 %435)
  store i32 %436, i32* %5, align 4
  %437 = load i32, i32* %5, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %428
  br label %644

440:                                              ; preds = %428
  %441 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 10
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %441, i32 106, i32 %447)
  store i32 %448, i32* %5, align 4
  %449 = load i32, i32* %5, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %440
  br label %644

452:                                              ; preds = %440
  %453 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %454 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %455 = load i32, i32* %6, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %453, i32 107, i32 %459)
  store i32 %460, i32* %5, align 4
  %461 = load i32, i32* %5, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %452
  br label %644

464:                                              ; preds = %452
  %465 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 8
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %465, i32 108, i32 %471)
  store i32 %472, i32* %5, align 4
  %473 = load i32, i32* %5, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %464
  br label %644

476:                                              ; preds = %464
  %477 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %479 = load i32, i32* %6, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i32 0, i32 7
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %477, i32 109, i32 %483)
  store i32 %484, i32* %5, align 4
  %485 = load i32, i32* %5, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %476
  br label %644

488:                                              ; preds = %476
  %489 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %490 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %491 = load i32, i32* %6, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %490, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 4
  %496 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %489, i32 110, i32 %495)
  store i32 %496, i32* %5, align 4
  %497 = load i32, i32* %5, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %488
  br label %644

500:                                              ; preds = %488
  %501 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %502 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_freq_regs_lut, align 8
  %503 = load i32, i32* %6, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 5
  %507 = load i32, i32* %506, align 8
  %508 = call i32 @fc2580_wr_reg_ff(%struct.fc2580_dev* %501, i32 111, i32 %507)
  store i32 %508, i32* %5, align 4
  %509 = load i32, i32* %5, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %500
  br label %644

512:                                              ; preds = %500
  store i32 0, i32* %6, align 4
  br label %513

513:                                              ; preds = %531, %512
  %514 = load i32, i32* %6, align 4
  %515 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_if_filter_lut, align 8
  %516 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %515)
  %517 = icmp slt i32 %514, %516
  br i1 %517, label %518, label %534

518:                                              ; preds = %513
  %519 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %520 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %519, i32 0, i32 1
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_if_filter_lut, align 8
  %523 = load i32, i32* %6, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = icmp sle i64 %521, %527
  br i1 %528, label %529, label %530

529:                                              ; preds = %518
  br label %534

530:                                              ; preds = %518
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %6, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %6, align 4
  br label %513

534:                                              ; preds = %529, %513
  %535 = load i32, i32* %6, align 4
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_if_filter_lut, align 8
  %537 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %536)
  %538 = icmp eq i32 %535, %537
  br i1 %538, label %539, label %542

539:                                              ; preds = %534
  %540 = load i32, i32* @EINVAL, align 4
  %541 = sub nsw i32 0, %540
  store i32 %541, i32* %5, align 4
  br label %644

542:                                              ; preds = %534
  %543 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %544 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_if_filter_lut, align 8
  %547 = load i32, i32* %6, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @regmap_write(i32 %545, i32 54, i32 %551)
  store i32 %552, i32* %5, align 4
  %553 = load i32, i32* %5, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %542
  br label %644

556:                                              ; preds = %542
  %557 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %558 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %557, i32 0, i32 1
  %559 = load i64, i64* %558, align 8
  %560 = mul nsw i64 %559, 122
  %561 = sdiv i64 %560, 100
  %562 = sdiv i64 %561, 2
  %563 = sub nsw i64 8058000, %562
  %564 = trunc i64 %563 to i32
  store i32 %564, i32* %7, align 4
  %565 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %566 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %565, i32 0, i32 3
  %567 = load i64, i64* %566, align 8
  %568 = trunc i64 %567 to i32
  %569 = load i32, i32* %7, align 4
  %570 = mul i32 %568, %569
  %571 = call i32 @div64_u64(i32 %570, i64 1000000000000)
  store i32 %571, i32* %7, align 4
  %572 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %573 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 8
  %575 = load i32, i32* %7, align 4
  %576 = call i32 @regmap_write(i32 %574, i32 55, i32 %575)
  store i32 %576, i32* %5, align 4
  %577 = load i32, i32* %5, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %556
  br label %644

580:                                              ; preds = %556
  %581 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %582 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fc2580_if_filter_lut, align 8
  %585 = load i32, i32* %6, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @regmap_write(i32 %583, i32 57, i32 %589)
  store i32 %590, i32* %5, align 4
  %591 = load i32, i32* %5, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %594

593:                                              ; preds = %580
  br label %644

594:                                              ; preds = %580
  %595 = load i64, i64* @jiffies, align 8
  %596 = call i64 @msecs_to_jiffies(i32 30)
  %597 = add i64 %595, %596
  store i64 %597, i64* %16, align 8
  store i32 -193, i32* %7, align 4
  br label %598

598:                                              ; preds = %634, %594
  %599 = load i64, i64* @jiffies, align 8
  %600 = load i64, i64* %16, align 8
  %601 = call i32 @time_after(i64 %599, i64 %600)
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %606, label %603

603:                                              ; preds = %598
  %604 = load i32, i32* %7, align 4
  %605 = icmp ne i32 %604, 192
  br label %606

606:                                              ; preds = %603, %598
  %607 = phi i1 [ false, %598 ], [ %605, %603 ]
  br i1 %607, label %608, label %635

608:                                              ; preds = %606
  %609 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %610 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = call i32 @regmap_write(i32 %611, i32 46, i32 9)
  store i32 %612, i32* %5, align 4
  %613 = load i32, i32* %5, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %608
  br label %644

616:                                              ; preds = %608
  %617 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %618 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %617, i32 0, i32 2
  %619 = load i32, i32* %618, align 8
  %620 = call i32 @regmap_read(i32 %619, i32 47, i32* %7)
  store i32 %620, i32* %5, align 4
  %621 = load i32, i32* %5, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %616
  br label %644

624:                                              ; preds = %616
  %625 = load i32, i32* %7, align 4
  %626 = and i32 %625, 192
  store i32 %626, i32* %7, align 4
  %627 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %628 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %627, i32 0, i32 2
  %629 = load i32, i32* %628, align 8
  %630 = call i32 @regmap_write(i32 %629, i32 46, i32 1)
  store i32 %630, i32* %5, align 4
  %631 = load i32, i32* %5, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %624
  br label %644

634:                                              ; preds = %624
  br label %598

635:                                              ; preds = %606
  %636 = load i32, i32* %7, align 4
  %637 = icmp ne i32 %636, 192
  br i1 %637, label %638, label %643

638:                                              ; preds = %635
  %639 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %640 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %639, i32 0, i32 0
  %641 = load i32, i32* %7, align 4
  %642 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %640, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %641)
  br label %643

643:                                              ; preds = %638, %635
  store i32 0, i32* %2, align 4
  br label %650

644:                                              ; preds = %633, %623, %615, %593, %579, %555, %539, %511, %499, %487, %475, %463, %451, %439, %427, %415, %403, %391, %379, %367, %355, %343, %331, %319, %307, %295, %283, %271, %259, %247, %235, %221, %193, %184, %173, %162, %149, %55
  %645 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %646 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %645, i32 0, i32 0
  %647 = load i32, i32* %5, align 4
  %648 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %646, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %647)
  %649 = load i32, i32* %5, align 4
  store i32 %649, i32* %2, align 4
  br label %650

650:                                              ; preds = %644, %643, %24
  %651 = load i32, i32* %2, align 4
  ret i32 %651
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @fc2580_wr_reg_ff(%struct.fc2580_dev*, i32, i32) #1

declare dso_local i32 @div64_u64(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
