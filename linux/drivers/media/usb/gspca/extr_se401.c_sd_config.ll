; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, i32, %struct.cam }
%struct.cam = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, %struct.TYPE_2__* }

@MAX_MODES = common dso_local global i32 0, align 4
@SE401_REQ_GET_CAMERA_DESCRIPTOR = common dso_local global i32 0, align 4
@SE401_REQ_LED_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Wrong descriptor type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SE401_FORMAT_BAYER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Bayer format not supported!\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ExtraFeatures: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Too many frame sizes\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Frame size: %dx%d bayer\0A\00", align 1
@V4L2_PIX_FMT_SE401 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Frame size: %dx%d 1/%dth janggu\0A\00", align 1
@BULK_SIZE = common dso_local global i32 0, align 4
@SE401_REQ_GET_BRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = bitcast %struct.gspca_dev* %16 to %struct.sd*
  store %struct.sd* %17, %struct.sd** %6, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 3
  store %struct.cam* %19, %struct.cam** %7, align 8
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @MAX_MODES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @MAX_MODES, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %31 = load i32, i32* @SE401_REQ_GET_CAMERA_DESCRIPTOR, align 4
  %32 = call i32 @se401_read_req(%struct.gspca_dev* %30, i32 %31, i32 1)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %2
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_reset_device(i32 %40)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = load i32, i32* @SE401_REQ_GET_CAMERA_DESCRIPTOR, align 4
  %46 = call i32 @se401_read_req(%struct.gspca_dev* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %37, %2
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = load i32, i32* @SE401_REQ_LED_CONTROL, align 4
  %50 = call i32 @se401_write_req(%struct.gspca_dev* %48, i32 %49, i32 0, i32 0)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %434

59:                                               ; preds = %47
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 65
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %434

68:                                               ; preds = %59
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SE401_FORMAT_BAYER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %434

79:                                               ; preds = %68
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %92, %96
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @MAX_MODES, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %434

105:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %153, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %156

110:                                              ; preds = %106
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %112, 4
  %114 = add nsw i32 6, %113
  %115 = add nsw i32 %114, 0
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 6, %121
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = or i32 %118, %127
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %26, i64 %130
  store i32 %128, i32* %131, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 6, %134
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 %141, 4
  %143 = add nsw i32 6, %142
  %144 = add nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 8
  %149 = or i32 %139, %148
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %29, i64 %151
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %110
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %106

156:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %399, %156
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %402

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %26, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sd*, %struct.sd** %6, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %29, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sd*, %struct.sd** %6, align 8
  %178 = getelementptr inbounds %struct.sd, %struct.sd* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  store i32 %176, i32* %183, align 4
  %184 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %185 = load %struct.sd*, %struct.sd** %6, align 8
  %186 = getelementptr inbounds %struct.sd, %struct.sd* %185, i32 0, i32 2
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 7
  store i32 %184, i32* %191, align 4
  %192 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %193 = load %struct.sd*, %struct.sd** %6, align 8
  %194 = getelementptr inbounds %struct.sd, %struct.sd* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 6
  store i32 %192, i32* %199, align 4
  %200 = load %struct.sd*, %struct.sd** %6, align 8
  %201 = getelementptr inbounds %struct.sd, %struct.sd* %200, i32 0, i32 2
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  store i32 1, i32* %206, align 4
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %242, %161
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %245

211:                                              ; preds = %207
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %26, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sdiv i32 %215, 2
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %26, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %216, %220
  br i1 %221, label %222, label %241

222:                                              ; preds = %211
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %29, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sdiv i32 %226, 2
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %29, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %227, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %222
  %234 = load %struct.sd*, %struct.sd** %6, align 8
  %235 = getelementptr inbounds %struct.sd, %struct.sd* %234, i32 0, i32 2
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 2
  store i32 2, i32* %240, align 4
  br label %245

241:                                              ; preds = %222, %211
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %207

245:                                              ; preds = %233, %207
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %281, %245
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %11, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %284

250:                                              ; preds = %246
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %26, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = sdiv i32 %254, 4
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %26, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %255, %259
  br i1 %260, label %261, label %280

261:                                              ; preds = %250
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %29, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sdiv i32 %265, 4
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %29, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %266, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %261
  %273 = load %struct.sd*, %struct.sd** %6, align 8
  %274 = getelementptr inbounds %struct.sd, %struct.sd* %273, i32 0, i32 2
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 2
  store i32 4, i32* %279, align 4
  br label %284

280:                                              ; preds = %261, %250
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %10, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %10, align 4
  br label %246

284:                                              ; preds = %272, %246
  %285 = load %struct.sd*, %struct.sd** %6, align 8
  %286 = getelementptr inbounds %struct.sd, %struct.sd* %285, i32 0, i32 2
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %339

294:                                              ; preds = %284
  %295 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %296 = load %struct.sd*, %struct.sd** %6, align 8
  %297 = getelementptr inbounds %struct.sd, %struct.sd* %296, i32 0, i32 2
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 5
  store i32 %295, i32* %302, align 4
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %26, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.sd*, %struct.sd** %6, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 2
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** %308, align 8
  %310 = load i32, i32* %9, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 3
  store i32 %306, i32* %313, align 4
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %26, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %29, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %317, %321
  %323 = load %struct.sd*, %struct.sd** %6, align 8
  %324 = getelementptr inbounds %struct.sd, %struct.sd* %323, i32 0, i32 2
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 4
  store i32 %322, i32* %329, align 4
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %26, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %9, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %29, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %333, i32 %337)
  br label %398

339:                                              ; preds = %284
  %340 = load i32, i32* @V4L2_PIX_FMT_SE401, align 4
  %341 = load %struct.sd*, %struct.sd** %6, align 8
  %342 = getelementptr inbounds %struct.sd, %struct.sd* %341, i32 0, i32 2
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %342, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 5
  store i32 %340, i32* %347, align 4
  %348 = load %struct.sd*, %struct.sd** %6, align 8
  %349 = getelementptr inbounds %struct.sd, %struct.sd* %348, i32 0, i32 2
  %350 = load %struct.TYPE_2__*, %struct.TYPE_2__** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 3
  store i32 0, i32* %354, align 4
  %355 = load i32, i32* %9, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %26, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %29, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = mul nsw i32 %358, %362
  %364 = mul nsw i32 %363, 3
  %365 = load %struct.sd*, %struct.sd** %6, align 8
  %366 = getelementptr inbounds %struct.sd, %struct.sd* %365, i32 0, i32 2
  %367 = load %struct.TYPE_2__*, %struct.TYPE_2__** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 4
  store i32 %364, i32* %371, align 4
  %372 = load i32, i32* %9, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %26, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %29, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.sd*, %struct.sd** %6, align 8
  %381 = getelementptr inbounds %struct.sd, %struct.sd* %380, i32 0, i32 2
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = load i32, i32* %9, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.sd*, %struct.sd** %6, align 8
  %389 = getelementptr inbounds %struct.sd, %struct.sd* %388, i32 0, i32 2
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** %389, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = mul nsw i32 %387, %395
  %397 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %375, i32 %379, i32 %396)
  br label %398

398:                                              ; preds = %339, %294
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  br label %157

402:                                              ; preds = %157
  %403 = load %struct.sd*, %struct.sd** %6, align 8
  %404 = getelementptr inbounds %struct.sd, %struct.sd* %403, i32 0, i32 2
  %405 = load %struct.TYPE_2__*, %struct.TYPE_2__** %404, align 8
  %406 = load %struct.cam*, %struct.cam** %7, align 8
  %407 = getelementptr inbounds %struct.cam, %struct.cam* %406, i32 0, i32 4
  store %struct.TYPE_2__* %405, %struct.TYPE_2__** %407, align 8
  %408 = load i32, i32* %11, align 4
  %409 = load %struct.cam*, %struct.cam** %7, align 8
  %410 = getelementptr inbounds %struct.cam, %struct.cam* %409, i32 0, i32 0
  store i32 %408, i32* %410, align 8
  %411 = load %struct.cam*, %struct.cam** %7, align 8
  %412 = getelementptr inbounds %struct.cam, %struct.cam* %411, i32 0, i32 1
  store i32 1, i32* %412, align 4
  %413 = load i32, i32* @BULK_SIZE, align 4
  %414 = load %struct.cam*, %struct.cam** %7, align 8
  %415 = getelementptr inbounds %struct.cam, %struct.cam* %414, i32 0, i32 3
  store i32 %413, i32* %415, align 4
  %416 = load %struct.cam*, %struct.cam** %7, align 8
  %417 = getelementptr inbounds %struct.cam, %struct.cam* %416, i32 0, i32 2
  store i32 4, i32* %417, align 8
  %418 = load %struct.sd*, %struct.sd** %6, align 8
  %419 = getelementptr inbounds %struct.sd, %struct.sd* %418, i32 0, i32 0
  store i32 45, i32* %419, align 8
  %420 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %421 = load i32, i32* @SE401_REQ_GET_BRT, align 4
  %422 = call i32 @se401_read_req(%struct.gspca_dev* %420, i32 %421, i32 1)
  %423 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %424 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = icmp ne i32 %425, 0
  %427 = xor i1 %426, true
  %428 = xor i1 %427, true
  %429 = zext i1 %428 to i32
  %430 = load %struct.sd*, %struct.sd** %6, align 8
  %431 = getelementptr inbounds %struct.sd, %struct.sd* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 4
  %432 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %433 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %432, i32 0, i32 1
  store i32 0, i32* %433, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %434

434:                                              ; preds = %402, %101, %75, %64, %55
  %435 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %435)
  %436 = load i32, i32* %3, align 4
  ret i32 %436
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @se401_read_req(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @usb_reset_device(i32) #2

declare dso_local i32 @se401_write_req(%struct.gspca_dev*, i32, i32, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @pr_info(i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
