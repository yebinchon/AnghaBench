; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-rx.c_vivid_radio_rx_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-rx.c_vivid_radio_rx_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i32, i32, i64, i64, i64 }
%struct.vivid_dev = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VIVID_HW_SEEK_BOUNDED = common dso_local global i64 0, align 8
@VIVID_HW_SEEK_WRAP = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@TOT_BANDS = common dso_local global i32 0, align 4
@vivid_radio_bands = common dso_local global %struct.TYPE_2__* null, align 8
@BAND_AM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_radio_rx_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.vivid_dev* @video_drvdata(%struct.file* %14)
  store %struct.vivid_dev* %15, %struct.vivid_dev** %8, align 8
  %16 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %309

23:                                               ; preds = %3
  %24 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VIVID_HW_SEEK_BOUNDED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %309

37:                                               ; preds = %28, %23
  %38 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VIVID_HW_SEEK_WRAP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %309

51:                                               ; preds = %42, %37
  %52 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = xor i32 %57, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %309

69:                                               ; preds = %51
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @O_NONBLOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EWOULDBLOCK, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %309

79:                                               ; preds = %69
  %80 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %160

84:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %113, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @TOT_BANDS, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %92, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %89
  %101 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ule i32 %103, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %116

112:                                              ; preds = %100, %89
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %85

116:                                              ; preds = %111, %85
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @TOT_BANDS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %309

123:                                              ; preds = %116
  %124 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %125 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %123
  %129 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %133 = load i32, i32* %13, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %131, %137
  br i1 %138, label %150, label %139

139:                                              ; preds = %128
  %140 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %141 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %144 = load i32, i32* %13, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %142, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %139, %128
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %309

153:                                              ; preds = %139, %123
  %154 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %155 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %9, align 4
  %157 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %10, align 4
  br label %212

160:                                              ; preds = %79
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %189, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @TOT_BANDS, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %192

165:                                              ; preds = %161
  %166 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %167 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp sge i32 %168, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %165
  %177 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %178 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ule i32 %179, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %192

188:                                              ; preds = %176, %165
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %13, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %161

192:                                              ; preds = %187, %161
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @TOT_BANDS, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %309

199:                                              ; preds = %192
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %201 = load i32, i32* %13, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %9, align 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %207 = load i32, i32* %13, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %10, align 4
  br label %212

212:                                              ; preds = %199, %153
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @BAND_AM, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1600, i32 16000
  store i32 %217, i32* %12, align 4
  %218 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %219 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @clamp(i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %11, align 4
  %224 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %225 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %265

228:                                              ; preds = %212
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %12, align 4
  %232 = udiv i32 %230, %231
  %233 = mul i32 %229, %232
  %234 = load i32, i32* %12, align 4
  %235 = add i32 %233, %234
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ugt i32 %236, %237
  br i1 %238, label %239, label %264

239:                                              ; preds = %228
  %240 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %241 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @ENODATA, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %4, align 4
  br label %309

247:                                              ; preds = %239
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %12, align 4
  %251 = udiv i32 %249, %250
  %252 = mul i32 %248, %251
  %253 = load i32, i32* %12, align 4
  %254 = add i32 %252, %253
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %257 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = icmp uge i32 %255, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %247
  %261 = load i32, i32* @ENODATA, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %4, align 4
  br label %309

263:                                              ; preds = %247
  br label %264

264:                                              ; preds = %263, %228
  br label %308

265:                                              ; preds = %212
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %12, align 4
  %269 = add i32 %267, %268
  %270 = sub i32 %269, 1
  %271 = load i32, i32* %12, align 4
  %272 = udiv i32 %270, %271
  %273 = mul i32 %266, %272
  %274 = load i32, i32* %12, align 4
  %275 = sub i32 %273, %274
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %279, label %307

279:                                              ; preds = %265
  %280 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %281 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = load i32, i32* @ENODATA, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %4, align 4
  br label %309

287:                                              ; preds = %279
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* %12, align 4
  %291 = add i32 %289, %290
  %292 = sub i32 %291, 1
  %293 = load i32, i32* %12, align 4
  %294 = udiv i32 %292, %293
  %295 = mul i32 %288, %294
  %296 = load i32, i32* %12, align 4
  %297 = sub i32 %295, %296
  store i32 %297, i32* %11, align 4
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %300 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = icmp ule i32 %298, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %287
  %304 = load i32, i32* @ENODATA, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  br label %309

306:                                              ; preds = %287
  br label %307

307:                                              ; preds = %306, %265
  br label %308

308:                                              ; preds = %307, %264
  store i32 0, i32* %4, align 4
  br label %309

309:                                              ; preds = %308, %303, %284, %260, %244, %196, %150, %120, %76, %66, %48, %34, %20
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
