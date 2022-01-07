; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_alloc_framebuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_alloc_framebuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.coda_dev* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.coda_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.coda_q_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_MPEG4 = common dso_local global i64 0, align 8
@GDI_TILED_FRAME_MB_RASTER_MAP = common dso_local global i64 0, align 8
@CODA_DX6 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fb%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.coda_q_data*, i32)* @coda_alloc_framebuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_alloc_framebuffers(%struct.coda_ctx* %0, %struct.coda_q_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_ctx*, align 8
  %6 = alloca %struct.coda_q_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.coda_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %5, align 8
  store %struct.coda_q_data* %1, %struct.coda_q_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %19, i32 0, i32 4
  %21 = load %struct.coda_dev*, %struct.coda_dev** %20, align 8
  store %struct.coda_dev* %21, %struct.coda_dev** %8, align 8
  %22 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %3
  %30 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %29
  %38 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_PIX_FMT_MPEG4, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_PIX_FMT_MPEG4, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45, %37, %29, %3
  %54 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %55 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @round_up(i32 %57, i32 16)
  %59 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %60 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @round_up(i32 %62, i32 16)
  %64 = mul i32 %58, %63
  store i32 %64, i32* %9, align 4
  br label %76

65:                                               ; preds = %45
  %66 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %67 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @round_up(i32 %69, i32 8)
  %71 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %72 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %70, %74
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %65, %53
  %77 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @GDI_TILED_FRAME_MB_RASTER_MAP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @round_up(i32 %83, i32 4096)
  %85 = load i32, i32* %9, align 4
  %86 = udiv i32 %85, 2
  %87 = add i32 %84, %86
  store i32 %87, i32* %10, align 4
  br label %93

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = udiv i32 %90, 2
  %92 = add i32 %89, %91
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %88, %82
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %167, %93
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %170

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %13, align 8
  %103 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %104 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CODA_DX6, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %100
  %111 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %111, i32 0, i32 2
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %129, label %118

118:                                              ; preds = %110
  %119 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @V4L2_PIX_FMT_MPEG4, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126, %110
  %130 = load i32, i32* %9, align 4
  %131 = udiv i32 %130, 4
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %13, align 8
  br label %135

135:                                              ; preds = %129, %126, %118, %100
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i8* @kasprintf(i32 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %137)
  store i8* %138, i8** %14, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %135
  %142 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %143 = call i32 @coda_free_framebuffers(%struct.coda_ctx* %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %286

146:                                              ; preds = %135
  %147 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %148 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %148, i32 0, i32 3
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %13, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @coda_alloc_context_buf(%struct.coda_ctx* %147, %struct.TYPE_10__* %154, i64 %155, i8* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i8*, i8** %14, align 8
  %159 = call i32 @kfree(i8* %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %146
  %163 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %164 = call i32 @coda_free_framebuffers(%struct.coda_ctx* %163)
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %4, align 4
  br label %286

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %94

170:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %282, %170
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %174 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %285

177:                                              ; preds = %171
  %178 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %179 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %178, i32 0, i32 3
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %9, align 4
  %189 = add i32 %187, %188
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %9, align 4
  %192 = add i32 %190, %191
  %193 = load i32, i32* %9, align 4
  %194 = udiv i32 %193, 4
  %195 = add i32 %192, %194
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %9, align 4
  %198 = add i32 %196, %197
  %199 = load i32, i32* %9, align 4
  %200 = udiv i32 %199, 4
  %201 = add i32 %198, %200
  %202 = load i32, i32* %9, align 4
  %203 = udiv i32 %202, 4
  %204 = add i32 %201, %203
  store i32 %204, i32* %18, align 4
  %205 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %206 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @GDI_TILED_FRAME_MB_RASTER_MAP, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %177
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @round_up(i32 %211, i32 4096)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %9, align 4
  %215 = udiv i32 %214, 2
  %216 = add i32 %213, %215
  store i32 %216, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %217 = load i32, i32* %15, align 4
  %218 = and i32 %217, -4096
  %219 = load i32, i32* %16, align 4
  %220 = lshr i32 %219, 20
  %221 = or i32 %218, %220
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %16, align 4
  %223 = and i32 %222, 1044480
  %224 = shl i32 %223, 12
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %210, %177
  %226 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %227 = load i32, i32* %12, align 4
  %228 = mul nsw i32 %227, 3
  %229 = add nsw i32 %228, 0
  %230 = load i32, i32* %15, align 4
  %231 = call i32 @coda_parabuf_write(%struct.coda_ctx* %226, i32 %229, i32 %230)
  %232 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %233 = load i32, i32* %12, align 4
  %234 = mul nsw i32 %233, 3
  %235 = add nsw i32 %234, 1
  %236 = load i32, i32* %16, align 4
  %237 = call i32 @coda_parabuf_write(%struct.coda_ctx* %232, i32 %235, i32 %236)
  %238 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %239 = load i32, i32* %12, align 4
  %240 = mul nsw i32 %239, 3
  %241 = add nsw i32 %240, 2
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @coda_parabuf_write(%struct.coda_ctx* %238, i32 %241, i32 %242)
  %244 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %245 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %244, i32 0, i32 0
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @CODA_DX6, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %225
  br label %282

252:                                              ; preds = %225
  %253 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %254 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %253, i32 0, i32 2
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %252
  %261 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 96, %262
  %264 = load i32, i32* %18, align 4
  %265 = call i32 @coda_parabuf_write(%struct.coda_ctx* %261, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %260, %252
  %267 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %268 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %267, i32 0, i32 2
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @V4L2_PIX_FMT_MPEG4, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %266
  %275 = load i32, i32* %12, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @coda_parabuf_write(%struct.coda_ctx* %278, i32 97, i32 %279)
  br label %281

281:                                              ; preds = %277, %274, %266
  br label %282

282:                                              ; preds = %281, %251
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %171

285:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %285, %162, %141
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @coda_free_framebuffers(%struct.coda_ctx*) #1

declare dso_local i32 @coda_alloc_context_buf(%struct.coda_ctx*, %struct.TYPE_10__*, i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @coda_parabuf_write(%struct.coda_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
