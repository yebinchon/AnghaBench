; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_final_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_final_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@GO7007_SENSOR_CONFIG_MASK = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG4 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG1 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG2 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H263 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @final_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @final_package(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.go7007*, %struct.go7007** %4, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.go7007*, %struct.go7007** %4, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 32
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.go7007*, %struct.go7007** %4, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 16
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i32 [ %17, %13 ], [ %22, %18 ]
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  store i32 32768, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 2, i32* %32, align 4
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.go7007*, %struct.go7007** %4, align 8
  %35 = getelementptr inbounds %struct.go7007, %struct.go7007* %34, i32 0, i32 11
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %23
  %43 = load %struct.go7007*, %struct.go7007** %4, align 8
  %44 = getelementptr inbounds %struct.go7007, %struct.go7007* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %23
  %49 = phi i1 [ false, %23 ], [ %47, %42 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 16896, i32 0
  %52 = load %struct.go7007*, %struct.go7007** %4, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = shl i32 %57, 8
  %59 = or i32 %51, %58
  %60 = load %struct.go7007*, %struct.go7007** %4, align 8
  %61 = getelementptr inbounds %struct.go7007, %struct.go7007* %60, i32 0, i32 11
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GO7007_SENSOR_CONFIG_MASK, align 4
  %66 = and i32 %64, %65
  %67 = or i32 %59, %66
  store i32 %67, i32* %33, align 4
  %68 = getelementptr inbounds i32, i32* %33, i64 1
  %69 = load %struct.go7007*, %struct.go7007** %4, align 8
  %70 = getelementptr inbounds %struct.go7007, %struct.go7007* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = shl i32 %74, 14
  %76 = load %struct.go7007*, %struct.go7007** %4, align 8
  %77 = getelementptr inbounds %struct.go7007, %struct.go7007* %76, i32 0, i32 14
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %48
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 %81, 9
  br label %86

83:                                               ; preds = %48
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ %82, %80 ], [ %85, %83 ]
  %88 = or i32 %75, %87
  %89 = load %struct.go7007*, %struct.go7007** %4, align 8
  %90 = getelementptr inbounds %struct.go7007, %struct.go7007* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 64, i32 0
  %95 = or i32 %88, %94
  %96 = load %struct.go7007*, %struct.go7007** %4, align 8
  %97 = getelementptr inbounds %struct.go7007, %struct.go7007* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %86
  %101 = load %struct.go7007*, %struct.go7007** %4, align 8
  %102 = getelementptr inbounds %struct.go7007, %struct.go7007* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 3
  br label %110

105:                                              ; preds = %86
  %106 = load %struct.go7007*, %struct.go7007** %4, align 8
  %107 = getelementptr inbounds %struct.go7007, %struct.go7007* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %104, %100 ], [ %109, %105 ]
  %112 = or i32 %95, %111
  store i32 %112, i32* %68, align 4
  %113 = getelementptr inbounds i32, i32* %68, i64 1
  %114 = load %struct.go7007*, %struct.go7007** %4, align 8
  %115 = getelementptr inbounds %struct.go7007, %struct.go7007* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 6
  %118 = or i32 32768, %117
  %119 = or i32 %118, 128
  %120 = load %struct.go7007*, %struct.go7007** %4, align 8
  %121 = getelementptr inbounds %struct.go7007, %struct.go7007* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 2
  %124 = or i32 %119, %123
  store i32 %124, i32* %113, align 4
  %125 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 64, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load %struct.go7007*, %struct.go7007** %4, align 8
  %130 = getelementptr inbounds %struct.go7007, %struct.go7007* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = shl i32 %132, 8
  %134 = load %struct.go7007*, %struct.go7007** %4, align 8
  %135 = getelementptr inbounds %struct.go7007, %struct.go7007* %134, i32 0, i32 11
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 128, i32 0
  %144 = or i32 %133, %143
  %145 = or i32 %144, 65
  store i32 %145, i32* %128, align 4
  %146 = getelementptr inbounds i32, i32* %128, i64 1
  %147 = load %struct.go7007*, %struct.go7007** %4, align 8
  %148 = getelementptr inbounds %struct.go7007, %struct.go7007* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 3404, i32 875
  store i32 %152, i32* %146, align 4
  %153 = getelementptr inbounds i32, i32* %146, i64 1
  %154 = load i32, i32* %7, align 4
  %155 = shl i32 %154, 8
  %156 = load %struct.go7007*, %struct.go7007** %4, align 8
  %157 = getelementptr inbounds %struct.go7007, %struct.go7007* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 4
  %160 = or i32 %155, %159
  store i32 %160, i32* %153, align 4
  %161 = getelementptr inbounds i32, i32* %153, i64 1
  %162 = load %struct.go7007*, %struct.go7007** %4, align 8
  %163 = getelementptr inbounds %struct.go7007, %struct.go7007* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @V4L2_PIX_FMT_MPEG4, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1028, i32 0
  store i32 %168, i32* %161, align 4
  %169 = getelementptr inbounds i32, i32* %161, i64 1
  %170 = load %struct.go7007*, %struct.go7007** %4, align 8
  %171 = getelementptr inbounds %struct.go7007, %struct.go7007* %170, i32 0, i32 10
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  %176 = shl i32 %175, 13
  %177 = or i32 32768, %176
  %178 = load %struct.go7007*, %struct.go7007** %4, align 8
  %179 = getelementptr inbounds %struct.go7007, %struct.go7007* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 1, i32 0
  %184 = shl i32 %183, 12
  %185 = or i32 %177, %184
  %186 = load %struct.go7007*, %struct.go7007** %4, align 8
  %187 = getelementptr inbounds %struct.go7007, %struct.go7007* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @V4L2_PIX_FMT_MPEG4, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 1, i32 0
  %193 = shl i32 %192, 11
  %194 = or i32 %185, %193
  %195 = load %struct.go7007*, %struct.go7007** %4, align 8
  %196 = getelementptr inbounds %struct.go7007, %struct.go7007* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 3, i32 0
  %201 = shl i32 %200, 7
  %202 = or i32 %194, %201
  %203 = load %struct.go7007*, %struct.go7007** %4, align 8
  %204 = getelementptr inbounds %struct.go7007, %struct.go7007* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 1, i32 0
  %209 = shl i32 %208, 2
  %210 = or i32 %202, %209
  %211 = load %struct.go7007*, %struct.go7007** %4, align 8
  %212 = getelementptr inbounds %struct.go7007, %struct.go7007* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 1, i32 0
  %217 = shl i32 %216, 1
  %218 = or i32 %210, %217
  %219 = or i32 %218, 1
  store i32 %219, i32* %169, align 4
  %220 = getelementptr inbounds i32, i32* %169, i64 1
  %221 = load %struct.go7007*, %struct.go7007** %4, align 8
  %222 = getelementptr inbounds %struct.go7007, %struct.go7007* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @V4L2_PIX_FMT_MPEG1, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %110
  br label %262

227:                                              ; preds = %110
  %228 = load %struct.go7007*, %struct.go7007** %4, align 8
  %229 = getelementptr inbounds %struct.go7007, %struct.go7007* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @V4L2_PIX_FMT_MPEG2, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %260

234:                                              ; preds = %227
  %235 = load %struct.go7007*, %struct.go7007** %4, align 8
  %236 = getelementptr inbounds %struct.go7007, %struct.go7007* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %258

241:                                              ; preds = %234
  %242 = load %struct.go7007*, %struct.go7007** %4, align 8
  %243 = getelementptr inbounds %struct.go7007, %struct.go7007* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @V4L2_PIX_FMT_MPEG4, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %256

248:                                              ; preds = %241
  %249 = load %struct.go7007*, %struct.go7007** %4, align 8
  %250 = getelementptr inbounds %struct.go7007, %struct.go7007* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @V4L2_PIX_FMT_H263, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i32 35104, i32 0
  br label %256

256:                                              ; preds = %248, %247
  %257 = phi i32 [ 35104, %247 ], [ %255, %248 ]
  br label %258

258:                                              ; preds = %256, %240
  %259 = phi i32 [ 35232, %240 ], [ %257, %256 ]
  br label %260

260:                                              ; preds = %258, %233
  %261 = phi i32 [ 35232, %233 ], [ %259, %258 ]
  br label %262

262:                                              ; preds = %260, %226
  %263 = phi i32 [ 35232, %226 ], [ %261, %260 ]
  store i32 %263, i32* %220, align 4
  %264 = getelementptr inbounds i32, i32* %220, i64 1
  %265 = load %struct.go7007*, %struct.go7007** %4, align 8
  %266 = getelementptr inbounds %struct.go7007, %struct.go7007* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 7957, i32 7947
  store i32 %270, i32* %264, align 4
  %271 = getelementptr inbounds i32, i32* %264, i64 1
  %272 = load %struct.go7007*, %struct.go7007** %4, align 8
  %273 = getelementptr inbounds %struct.go7007, %struct.go7007* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i32 21, i32 11
  store i32 %277, i32* %271, align 4
  %278 = getelementptr inbounds i32, i32* %271, i64 1
  %279 = load %struct.go7007*, %struct.go7007** %4, align 8
  %280 = getelementptr inbounds %struct.go7007, %struct.go7007* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 43008, i32 22528
  store i32 %284, i32* %278, align 4
  %285 = getelementptr inbounds i32, i32* %278, i64 1
  store i32 65535, i32* %285, align 4
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 32, i32* %286, align 4
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  store i32 875, i32* %287, align 4
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 1718, i32* %288, align 4
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 2561, i32* %289, align 4
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  store i32 3404, i32* %290, align 4
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  store i32 4247, i32* %291, align 4
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = load %struct.go7007*, %struct.go7007** %4, align 8
  %294 = getelementptr inbounds %struct.go7007, %struct.go7007* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %262
  %298 = load %struct.go7007*, %struct.go7007** %4, align 8
  %299 = getelementptr inbounds %struct.go7007, %struct.go7007* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = sdiv i32 %300, 3
  br label %306

302:                                              ; preds = %262
  %303 = load %struct.go7007*, %struct.go7007** %4, align 8
  %304 = getelementptr inbounds %struct.go7007, %struct.go7007* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  br label %306

306:                                              ; preds = %302, %297
  %307 = phi i32 [ %301, %297 ], [ %305, %302 ]
  store i32 %307, i32* %292, align 4
  %308 = getelementptr inbounds i32, i32* %292, i64 1
  %309 = load %struct.go7007*, %struct.go7007** %4, align 8
  %310 = getelementptr inbounds %struct.go7007, %struct.go7007* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = ashr i32 %311, 4
  %313 = load %struct.go7007*, %struct.go7007** %4, align 8
  %314 = getelementptr inbounds %struct.go7007, %struct.go7007* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %315, 4
  %317 = mul nsw i32 %312, %316
  %318 = mul nsw i32 %317, 110
  %319 = sdiv i32 %318, 100
  store i32 %319, i32* %308, align 4
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %322 = load i32, i32* %6, align 4
  %323 = call i32 @copy_packages(i32* %320, i32* %321, i32 1, i32 %322)
  ret i32 %323
}

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
