; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_calculate_vrfb_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_calculate_vrfb_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.v4l2_pix_format, %struct.v4l2_rect }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_pix_format = type { i64, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@MAX_PIXELS_PER_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vout_calculate_vrfb_offset(%struct.omap_vout_device* %0) #0 {
  %2 = alloca %struct.omap_vout_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %2, align 8
  %15 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %16 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %19 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %18, i32 0, i32 7
  store %struct.v4l2_rect* %19, %struct.v4l2_rect** %5, align 8
  %20 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %21 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %20, i32 0, i32 6
  store %struct.v4l2_pix_format* %21, %struct.v4l2_pix_format** %6, align 8
  %22 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %23 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %22, i32 0, i32 1
  store i32* %23, i32** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %25 = call i32 @calc_rotation(%struct.omap_vout_device* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31, %1
  %38 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %39 = call i64 @is_rotation_enabled(%struct.omap_vout_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 4, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %43

42:                                               ; preds = %37
  store i32 2, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %60

44:                                               ; preds = %31
  %45 = load i64, i64* @V4L2_PIX_FMT_RGB32, align 8
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 4, i32* %9, align 4
  br label %59

51:                                               ; preds = %44
  %52 = load i64, i64* @V4L2_PIX_FMT_RGB24, align 8
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 3, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %63 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %66 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %68 = call i64 @is_rotation_enabled(%struct.omap_vout_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %60
  %71 = load i32, i32* @MAX_PIXELS_PER_LINE, align 4
  store i32 %71, i32* %14, align 4
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %12, align 4
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %13, align 4
  br label %98

94:                                               ; preds = %60
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %70
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %101 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %3, align 4
  switch i32 %102, label %346 [
    i32 128, label %103
    i32 130, label %164
    i32 129, label %236
    i32 131, label %299
  ]

103:                                              ; preds = %98
  %104 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %105 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %104, i32 0, i32 5
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %111 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %110, i32 0, i32 5
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %109, %115
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %103
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %10, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %13, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %123, %128
  %130 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %129, %134
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  br label %163

137:                                              ; preds = %103
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %13, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %138, %143
  %145 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %144, %149
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %153 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sdiv i32 %154, %155
  %157 = sub nsw i32 %156, 1
  %158 = mul nsw i32 %151, %157
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add nsw i32 %150, %160
  %162 = load i32*, i32** %7, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %137, %122
  br label %374

164:                                              ; preds = %98
  %165 = load i32, i32* @MAX_PIXELS_PER_LINE, align 4
  %166 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %167 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %166, i32 0, i32 5
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %165, %171
  %173 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %174 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %173, i32 0, i32 5
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %172, %178
  %180 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %181 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %180, i32 0, i32 5
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %187 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %186, i32 0, i32 5
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %185, %191
  %193 = add nsw i32 %179, %192
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %164
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %9, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %12, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %197, %202
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %8, align 4
  %206 = sdiv i32 %204, %205
  %207 = load i32, i32* %9, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %203, %208
  %210 = load i32*, i32** %7, align 8
  store i32 %209, i32* %210, align 4
  br label %235

211:                                              ; preds = %164
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %9, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load i32, i32* %12, align 4
  %217 = mul nsw i32 %215, %216
  %218 = add nsw i32 %212, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %8, align 4
  %221 = sdiv i32 %219, %220
  %222 = load i32, i32* %9, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %218, %223
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %227 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  %230 = mul nsw i32 %225, %229
  %231 = load i32, i32* %9, align 4
  %232 = mul nsw i32 %230, %231
  %233 = add nsw i32 %224, %232
  %234 = load i32*, i32** %7, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %211, %196
  br label %374

236:                                              ; preds = %98
  %237 = load i32, i32* @MAX_PIXELS_PER_LINE, align 4
  %238 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %239 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %238, i32 0, i32 5
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %237, %243
  %245 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %246 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %245, i32 0, i32 5
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 %244, %250
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %8, align 4
  %254 = sdiv i32 %252, %253
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %4, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %236
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %10, align 4
  %261 = mul nsw i32 %259, %260
  %262 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %263 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %261, %264
  %266 = add nsw i32 %258, %265
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %9, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %266, %269
  %271 = load i32*, i32** %7, align 8
  store i32 %270, i32* %271, align 4
  br label %298

272:                                              ; preds = %236
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* %10, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %278 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %276, %279
  %281 = add nsw i32 %273, %280
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %9, align 4
  %284 = mul nsw i32 %282, %283
  %285 = add nsw i32 %281, %284
  %286 = load i32, i32* %14, align 4
  %287 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %288 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %8, align 4
  %291 = sdiv i32 %289, %290
  %292 = sub nsw i32 %291, 1
  %293 = mul nsw i32 %286, %292
  %294 = load i32, i32* %9, align 4
  %295 = mul nsw i32 %293, %294
  %296 = add nsw i32 %285, %295
  %297 = load i32*, i32** %7, align 8
  store i32 %296, i32* %297, align 4
  br label %298

298:                                              ; preds = %272, %257
  br label %374

299:                                              ; preds = %98
  %300 = load i32, i32* %4, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %319, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %9, align 4
  %305 = mul nsw i32 %303, %304
  %306 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %307 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = mul nsw i32 %305, %308
  %310 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %311 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %8, align 4
  %314 = sdiv i32 %312, %313
  %315 = load i32, i32* %9, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %309, %316
  %318 = load i32*, i32** %7, align 8
  store i32 %317, i32* %318, align 4
  br label %345

319:                                              ; preds = %299
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %9, align 4
  %322 = mul nsw i32 %320, %321
  %323 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %324 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = mul nsw i32 %322, %325
  %327 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %328 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %8, align 4
  %331 = sdiv i32 %329, %330
  %332 = load i32, i32* %9, align 4
  %333 = mul nsw i32 %331, %332
  %334 = add nsw i32 %326, %333
  %335 = load i32, i32* %14, align 4
  %336 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %337 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %338, 1
  %340 = mul nsw i32 %335, %339
  %341 = load i32, i32* %9, align 4
  %342 = mul nsw i32 %340, %341
  %343 = add nsw i32 %334, %342
  %344 = load i32*, i32** %7, align 8
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %319, %302
  br label %374

346:                                              ; preds = %98
  %347 = load i32, i32* %14, align 4
  %348 = load i32, i32* %9, align 4
  %349 = mul nsw i32 %347, %348
  %350 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %351 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = mul nsw i32 %349, %352
  %354 = load i32, i32* %8, align 4
  %355 = sdiv i32 %353, %354
  %356 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %357 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %9, align 4
  %360 = mul nsw i32 %358, %359
  %361 = load i32, i32* %8, align 4
  %362 = sdiv i32 %360, %361
  %363 = add nsw i32 %355, %362
  %364 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %365 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %8, align 4
  %368 = sdiv i32 %366, %367
  %369 = sub nsw i32 %368, 1
  %370 = load i32, i32* %9, align 4
  %371 = mul nsw i32 %369, %370
  %372 = add nsw i32 %363, %371
  %373 = load i32*, i32** %7, align 8
  store i32 %372, i32* %373, align 4
  br label %374

374:                                              ; preds = %346, %345, %298, %235, %163
  ret void
}

declare dso_local i32 @calc_rotation(%struct.omap_vout_device*) #1

declare dso_local i64 @is_rotation_enabled(%struct.omap_vout_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
