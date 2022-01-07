; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_AllocCommonBuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_AllocCommonBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@OVERFLOW_BUFFER_SIZE = common dso_local global i32 0, align 4
@STREAM_VIDEOIN1 = common dso_local global i32 0, align 4
@MAX_STREAM = common dso_local global i32 0, align 4
@KSSTATE_STOP = common dso_local global i32 0, align 4
@NGENE_IO_TV = common dso_local global i32 0, align 4
@NGENE_IO_HDTV = common dso_local global i32 0, align 4
@NGENE_IO_AIN = common dso_local global i32 0, align 4
@RingBufferSizes = common dso_local global i32* null, align 8
@Buffer1Sizes = common dso_local global i32* null, align 8
@Buffer2Sizes = common dso_local global i32* null, align 8
@MAX_HDTV_BUFFER_SIZE = common dso_local global i32 0, align 4
@NGENE_IO_TSIN = common dso_local global i32 0, align 4
@NGENE_IO_TSOUT = common dso_local global i32 0, align 4
@RING_SIZE_TS = common dso_local global i32 0, align 4
@MAX_TS_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*)* @AllocCommonBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocCommonBuffers(%struct.ngene* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ngene*, %struct.ngene** %3, align 8
  %8 = getelementptr inbounds %struct.ngene, %struct.ngene* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ngene*, %struct.ngene** %3, align 8
  %11 = getelementptr inbounds %struct.ngene, %struct.ngene* %10, i32 0, i32 9
  %12 = call i64 @pci_alloc_consistent(i32 %9, i32 4096, i32* %11)
  %13 = load %struct.ngene*, %struct.ngene** %3, align 8
  %14 = getelementptr inbounds %struct.ngene, %struct.ngene* %13, i32 0, i32 5
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ngene*, %struct.ngene** %3, align 8
  %16 = getelementptr inbounds %struct.ngene, %struct.ngene* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %275

22:                                               ; preds = %1
  %23 = load %struct.ngene*, %struct.ngene** %3, align 8
  %24 = getelementptr inbounds %struct.ngene, %struct.ngene* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ngene*, %struct.ngene** %3, align 8
  %27 = getelementptr inbounds %struct.ngene, %struct.ngene* %26, i32 0, i32 8
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ngene*, %struct.ngene** %3, align 8
  %29 = getelementptr inbounds %struct.ngene, %struct.ngene* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 256
  %32 = load %struct.ngene*, %struct.ngene** %3, align 8
  %33 = getelementptr inbounds %struct.ngene, %struct.ngene* %32, i32 0, i32 7
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ngene*, %struct.ngene** %3, align 8
  %35 = getelementptr inbounds %struct.ngene, %struct.ngene* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 512
  %38 = load %struct.ngene*, %struct.ngene** %3, align 8
  %39 = getelementptr inbounds %struct.ngene, %struct.ngene* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ngene*, %struct.ngene** %3, align 8
  %41 = getelementptr inbounds %struct.ngene, %struct.ngene* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OVERFLOW_BUFFER_SIZE, align 4
  %44 = load %struct.ngene*, %struct.ngene** %3, align 8
  %45 = getelementptr inbounds %struct.ngene, %struct.ngene* %44, i32 0, i32 1
  %46 = call i32 @pci_zalloc_consistent(i32 %42, i32 %43, i32* %45)
  %47 = load %struct.ngene*, %struct.ngene** %3, align 8
  %48 = getelementptr inbounds %struct.ngene, %struct.ngene* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ngene*, %struct.ngene** %3, align 8
  %50 = getelementptr inbounds %struct.ngene, %struct.ngene* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %22
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %275

56:                                               ; preds = %22
  %57 = load i32, i32* @STREAM_VIDEOIN1, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %270, %56
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MAX_STREAM, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %273

62:                                               ; preds = %58
  %63 = load %struct.ngene*, %struct.ngene** %3, align 8
  %64 = getelementptr inbounds %struct.ngene, %struct.ngene* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @KSSTATE_STOP, align 4
  %73 = load %struct.ngene*, %struct.ngene** %3, align 8
  %74 = getelementptr inbounds %struct.ngene, %struct.ngene* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @NGENE_IO_TV, align 4
  %82 = load i32, i32* @NGENE_IO_HDTV, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @NGENE_IO_AIN, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %80, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %171

88:                                               ; preds = %62
  %89 = load %struct.ngene*, %struct.ngene** %3, align 8
  %90 = getelementptr inbounds %struct.ngene, %struct.ngene* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ngene*, %struct.ngene** %3, align 8
  %93 = getelementptr inbounds %struct.ngene, %struct.ngene* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32*, i32** @RingBufferSizes, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @create_ring_buffer(i32 %91, i32* %98, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %88
  br label %273

108:                                              ; preds = %88
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @NGENE_IO_TV, align 4
  %111 = load i32, i32* @NGENE_IO_AIN, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %108
  %116 = load %struct.ngene*, %struct.ngene** %3, align 8
  %117 = getelementptr inbounds %struct.ngene, %struct.ngene* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ngene*, %struct.ngene** %3, align 8
  %120 = getelementptr inbounds %struct.ngene, %struct.ngene* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ngene*, %struct.ngene** %3, align 8
  %123 = getelementptr inbounds %struct.ngene, %struct.ngene* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32*, i32** @Buffer1Sizes, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @Buffer2Sizes, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @AllocateRingBuffers(i32 %118, i32 %121, i32* %128, i32 %133, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %115
  br label %273

143:                                              ; preds = %115
  br label %170

144:                                              ; preds = %108
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @NGENE_IO_HDTV, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load %struct.ngene*, %struct.ngene** %3, align 8
  %151 = getelementptr inbounds %struct.ngene, %struct.ngene* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ngene*, %struct.ngene** %3, align 8
  %154 = getelementptr inbounds %struct.ngene, %struct.ngene* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ngene*, %struct.ngene** %3, align 8
  %157 = getelementptr inbounds %struct.ngene, %struct.ngene* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32, i32* @MAX_HDTV_BUFFER_SIZE, align 4
  %164 = call i32 @AllocateRingBuffers(i32 %152, i32 %155, i32* %162, i32 %163, i32 0)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %149
  br label %273

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168, %144
  br label %170

170:                                              ; preds = %169, %143
  br label %171

171:                                              ; preds = %170, %62
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @NGENE_IO_TSIN, align 4
  %174 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %214

178:                                              ; preds = %171
  %179 = load %struct.ngene*, %struct.ngene** %3, align 8
  %180 = getelementptr inbounds %struct.ngene, %struct.ngene* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ngene*, %struct.ngene** %3, align 8
  %183 = getelementptr inbounds %struct.ngene, %struct.ngene* %182, i32 0, i32 0
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* @RING_SIZE_TS, align 4
  %190 = call i32 @create_ring_buffer(i32 %181, i32* %188, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  br label %273

194:                                              ; preds = %178
  %195 = load %struct.ngene*, %struct.ngene** %3, align 8
  %196 = getelementptr inbounds %struct.ngene, %struct.ngene* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ngene*, %struct.ngene** %3, align 8
  %199 = getelementptr inbounds %struct.ngene, %struct.ngene* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ngene*, %struct.ngene** %3, align 8
  %202 = getelementptr inbounds %struct.ngene, %struct.ngene* %201, i32 0, i32 0
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* @MAX_TS_BUFFER_SIZE, align 4
  %209 = call i32 @AllocateRingBuffers(i32 %197, i32 %200, i32* %207, i32 %208, i32 0)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %194
  br label %273

213:                                              ; preds = %194
  br label %214

214:                                              ; preds = %213, %171
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %269

219:                                              ; preds = %214
  %220 = load %struct.ngene*, %struct.ngene** %3, align 8
  %221 = getelementptr inbounds %struct.ngene, %struct.ngene* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ngene*, %struct.ngene** %3, align 8
  %224 = getelementptr inbounds %struct.ngene, %struct.ngene* %223, i32 0, i32 0
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = call i32 @create_ring_buffer(i32 %222, i32* %229, i32 1)
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* %4, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %219
  br label %273

234:                                              ; preds = %219
  %235 = load %struct.ngene*, %struct.ngene** %3, align 8
  %236 = getelementptr inbounds %struct.ngene, %struct.ngene* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ngene*, %struct.ngene** %3, align 8
  %239 = getelementptr inbounds %struct.ngene, %struct.ngene* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.ngene*, %struct.ngene** %3, align 8
  %242 = getelementptr inbounds %struct.ngene, %struct.ngene* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i32, i32* @MAX_TS_BUFFER_SIZE, align 4
  %249 = call i32 @AllocateRingBuffers(i32 %237, i32 %240, i32* %247, i32 %248, i32 0)
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %234
  br label %273

253:                                              ; preds = %234
  %254 = load %struct.ngene*, %struct.ngene** %3, align 8
  %255 = getelementptr inbounds %struct.ngene, %struct.ngene* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load %struct.ngene*, %struct.ngene** %3, align 8
  %262 = getelementptr inbounds %struct.ngene, %struct.ngene* %261, i32 0, i32 0
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = call i32 @FillTSIdleBuffer(i32* %260, i32* %267)
  br label %269

269:                                              ; preds = %253, %214
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %5, align 4
  br label %58

273:                                              ; preds = %252, %233, %212, %193, %167, %142, %107, %58
  %274 = load i32, i32* %4, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %273, %53, %19
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i64 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @create_ring_buffer(i32, i32*, i32) #1

declare dso_local i32 @AllocateRingBuffers(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @FillTSIdleBuffer(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
