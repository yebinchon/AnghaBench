; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_calc_skips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_calc_skips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btcx_skiplist = type { i32, i64 }
%struct.v4l2_clip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@btcx_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"btcx: skips line %d-%d:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btcx_calc_skips(i32 %0, i32 %1, i32* %2, %struct.btcx_skiplist* %3, i32* %4, %struct.v4l2_clip* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.btcx_skiplist*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.v4l2_clip*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.btcx_skiplist* %3, %struct.btcx_skiplist** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.v4l2_clip* %5, %struct.v4l2_clip** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 9999, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %277, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %280

23:                                               ; preds = %19
  %24 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %24, i64 %26
  %28 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %32 = load i32, i32* %15, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %31, i64 %33
  %35 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %30, %37
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %277

41:                                               ; preds = %23
  %42 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %43 = load i32, i32* %15, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %42, i64 %44
  %46 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %280

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %54, i64 %56
  %58 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %61, i64 %63
  %65 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %60, %67
  %69 = sub nsw i32 %68, 1
  %70 = icmp sgt i32 %53, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  br label %277

72:                                               ; preds = %52
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %74, i64 %76
  %78 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %73, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %72
  %83 = load i32, i32* %18, align 4
  %84 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %85 = load i32, i32* %15, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %84, i64 %86
  %88 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp sgt i32 %83, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %95 = load i32, i32* %15, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %94, i64 %96
  %98 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %93, %82
  br label %277

103:                                              ; preds = %72
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %105, i64 %107
  %109 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %113 = load i32, i32* %15, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %112, i64 %114
  %116 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %111, %118
  %120 = sub nsw i32 %119, 1
  %121 = icmp sgt i32 %104, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %103
  %123 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %123, i64 %125
  %127 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %130, i64 %132
  %134 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %129, %136
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %122, %103
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 0, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %139
  %143 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %143, i64 %145
  %147 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sub i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %150, i64 %153
  %155 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %149, %156
  br i1 %157, label %158, label %224

158:                                              ; preds = %142, %139
  %159 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %160 = load i32, i32* %15, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %159, i64 %161
  %163 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %168 = load i32, i32* %16, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %167, i64 %169
  %171 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %170, i32 0, i32 1
  store i64 %166, i64* %171, align 8
  %172 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %173 = load i32, i32* %16, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %172, i64 %174
  %176 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %158
  %180 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %181 = load i32, i32* %16, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %180, i64 %182
  %184 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %179, %158
  %186 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %187 = load i32, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %186, i64 %188
  %190 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %194 = load i32, i32* %15, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %193, i64 %195
  %197 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %192, %199
  %201 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %202 = load i32, i32* %16, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %201, i64 %203
  %205 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %204, i32 0, i32 0
  store i32 %200, i32* %205, align 8
  %206 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %206, i64 %208
  %210 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %185
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %217 = load i32, i32* %16, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %216, i64 %218
  %220 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %219, i32 0, i32 0
  store i32 %215, i32* %220, align 8
  br label %221

221:                                              ; preds = %214, %185
  %222 = load i32, i32* %16, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %16, align 4
  br label %276

224:                                              ; preds = %142
  %225 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %226 = load i32, i32* %15, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %225, i64 %227
  %229 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.v4l2_clip*, %struct.v4l2_clip** %13, align 8
  %233 = load i32, i32* %15, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %232, i64 %234
  %236 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %231, %238
  store i32 %239, i32* %17, align 4
  %240 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sub i32 %241, 1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %240, i64 %243
  %245 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %17, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %224
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %252 = load i32, i32* %16, align 4
  %253 = sub i32 %252, 1
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %251, i64 %254
  %256 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %255, i32 0, i32 0
  store i32 %250, i32* %256, align 8
  br label %257

257:                                              ; preds = %249, %224
  %258 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sub i32 %259, 1
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %258, i64 %261
  %263 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %257
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sub i32 %270, 1
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %269, i64 %272
  %274 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %273, i32 0, i32 0
  store i32 %268, i32* %274, align 8
  br label %275

275:                                              ; preds = %267, %257
  br label %276

276:                                              ; preds = %275, %221
  br label %277

277:                                              ; preds = %276, %102, %71, %40
  %278 = load i32, i32* %15, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %15, align 4
  br label %19

280:                                              ; preds = %51, %19
  %281 = load i32, i32* %16, align 4
  %282 = load i32*, i32** %12, align 8
  store i32 %281, i32* %282, align 4
  %283 = load i32, i32* %18, align 4
  %284 = load i32*, i32** %10, align 8
  store i32 %283, i32* %284, align 4
  %285 = load i64, i64* @btcx_debug, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %315

287:                                              ; preds = %280
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %18, align 4
  %290 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %288, i32 %289)
  store i32 0, i32* %16, align 4
  br label %291

291:                                              ; preds = %310, %287
  %292 = load i32, i32* %16, align 4
  %293 = load i32*, i32** %12, align 8
  %294 = load i32, i32* %293, align 4
  %295 = icmp ult i32 %292, %294
  br i1 %295, label %296, label %313

296:                                              ; preds = %291
  %297 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %298 = load i32, i32* %16, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %297, i64 %299
  %301 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %11, align 8
  %304 = load i32, i32* %16, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %303, i64 %305
  %307 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %302, i32 %308)
  br label %310

310:                                              ; preds = %296
  %311 = load i32, i32* %16, align 4
  %312 = add i32 %311, 1
  store i32 %312, i32* %16, align 4
  br label %291

313:                                              ; preds = %291
  %314 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %315

315:                                              ; preds = %313, %280
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
