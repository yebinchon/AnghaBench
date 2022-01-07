; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_risc_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_risc_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.bttv_format = type { i32 }
%struct.bttv_overlay = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.btcx_skiplist = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT848_RISC_SYNC = common dso_local global i32 0, align 4
@BT848_FIFO_STATUS_FM1 = common dso_local global i32 0, align 4
@VCR_HACK_LINES = common dso_local global i32 0, align 4
@BT848_RISC_WRITE = common dso_local global i32 0, align 4
@BT848_RISC_SKIP = common dso_local global i32 0, align 4
@BT848_RISC_SOL = common dso_local global i32 0, align 4
@BT848_RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.btcx_riscmem*, %struct.bttv_format*, %struct.bttv_overlay*, i32, i32)* @bttv_risc_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_risc_overlay(%struct.bttv* %0, %struct.btcx_riscmem* %1, %struct.bttv_format* %2, %struct.bttv_overlay* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bttv*, align 8
  %9 = alloca %struct.btcx_riscmem*, align 8
  %10 = alloca %struct.bttv_format*, align 8
  %11 = alloca %struct.bttv_overlay*, align 8
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
  %22 = alloca %struct.btcx_skiplist*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %8, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %9, align 8
  store %struct.bttv_format* %2, %struct.bttv_format** %10, align 8
  store %struct.bttv_overlay* %3, %struct.bttv_overlay** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %28 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.btcx_skiplist* @kmalloc_array(i32 %29, i32 8, i32 %30)
  store %struct.btcx_skiplist* %31, %struct.btcx_skiplist** %22, align 8
  %32 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %33 = icmp eq %struct.btcx_skiplist* null, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %318

37:                                               ; preds = %6
  %38 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %39 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 3, %40
  %42 = add nsw i32 %41, 2
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %37
  %49 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %50 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = ashr i32 %53, 1
  br label %60

55:                                               ; preds = %45
  %56 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %57 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi i32 [ %54, %48 ], [ %59, %55 ]
  %62 = mul nsw i32 %42, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %14, align 4
  %65 = load %struct.bttv*, %struct.bttv** %8, align 8
  %66 = getelementptr inbounds %struct.bttv, %struct.bttv* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %70, 4
  %72 = call i32 @btcx_riscmem_alloc(i32 %68, %struct.btcx_riscmem* %69, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %76 = call i32 @kfree(%struct.btcx_skiplist* %75)
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %7, align 4
  br label %318

78:                                               ; preds = %60
  %79 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %80 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %23, align 8
  %82 = load i32, i32* @BT848_RISC_SYNC, align 4
  %83 = load i32, i32* @BT848_FIFO_STATUS_FM1, align 4
  %84 = or i32 %82, %83
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %23, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %23, align 8
  store i32 %86, i32* %87, align 4
  %89 = call i8* @cpu_to_le32(i32 0)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %23, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %23, align 8
  store i32 %90, i32* %91, align 4
  %93 = load %struct.bttv*, %struct.bttv** %8, align 8
  %94 = getelementptr inbounds %struct.bttv, %struct.bttv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %26, align 4
  %98 = load %struct.bttv*, %struct.bttv** %8, align 8
  %99 = getelementptr inbounds %struct.bttv, %struct.bttv* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %104 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %102, %106
  %108 = load i32, i32* %26, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %26, align 4
  %110 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %111 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 3
  %114 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %115 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %113, %117
  %119 = load i32, i32* %26, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %26, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %283, %78
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %124 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %122, %126
  br i1 %127, label %128, label %293

128:                                              ; preds = %121
  %129 = load %struct.bttv*, %struct.bttv** %8, align 8
  %130 = getelementptr inbounds %struct.bttv, %struct.bttv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %136 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @VCR_HACK_LINES, align 4
  %140 = sub nsw i32 %138, %139
  %141 = icmp sge i32 %134, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %283

143:                                              ; preds = %133, %128
  %144 = load i32, i32* %16, align 4
  %145 = srem i32 %144, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %283

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %16, align 4
  %153 = srem i32 %152, 2
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %283

159:                                              ; preds = %155, %151
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %166 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %170 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %171 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %174 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @btcx_calc_skips(i32 %164, i32 %168, i32* %17, %struct.btcx_skiplist* %169, i32* %21, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %163, %159
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %178

178:                                              ; preds = %280, %177
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %181 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %282

185:                                              ; preds = %178
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp uge i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i32, i32* @BT848_RISC_WRITE, align 4
  store i32 %190, i32* %24, align 4
  %191 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %192 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %19, align 4
  br label %223

195:                                              ; preds = %185
  %196 = load i32, i32* %18, align 4
  %197 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %198 = load i32, i32* %20, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %197, i64 %199
  %201 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %196, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %195
  %205 = load i32, i32* @BT848_RISC_WRITE, align 4
  store i32 %205, i32* %24, align 4
  %206 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %207 = load i32, i32* %20, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %206, i64 %208
  %210 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %19, align 4
  br label %222

212:                                              ; preds = %195
  %213 = load i32, i32* @BT848_RISC_SKIP, align 4
  store i32 %213, i32* %24, align 4
  %214 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %215 = load i32, i32* %20, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %214, i64 %216
  %218 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %20, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %20, align 4
  br label %222

222:                                              ; preds = %212, %204
  br label %223

223:                                              ; preds = %222, %189
  %224 = load i32, i32* @BT848_RISC_WRITE, align 4
  %225 = load i32, i32* %24, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = load i32, i32* %26, align 4
  %229 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %230 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = ashr i32 %231, 3
  %233 = load i32, i32* %18, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %228, %234
  store i32 %235, i32* %25, align 4
  br label %237

236:                                              ; preds = %223
  store i32 0, i32* %25, align 4
  br label %237

237:                                              ; preds = %236, %227
  %238 = load i32, i32* %18, align 4
  %239 = icmp eq i32 0, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32, i32* @BT848_RISC_SOL, align 4
  %242 = load i32, i32* %24, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %24, align 4
  br label %244

244:                                              ; preds = %240, %237
  %245 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %246 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %19, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @BT848_RISC_EOL, align 4
  %253 = load i32, i32* %24, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %24, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %257 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 3
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %18, align 4
  %262 = sub nsw i32 %260, %261
  %263 = mul nsw i32 %259, %262
  %264 = load i32, i32* %24, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %24, align 4
  %266 = load i32, i32* %24, align 4
  %267 = call i8* @cpu_to_le32(i32 %266)
  %268 = ptrtoint i8* %267 to i32
  %269 = load i32*, i32** %23, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 1
  store i32* %270, i32** %23, align 8
  store i32 %268, i32* %269, align 4
  %271 = load i32, i32* %25, align 4
  %272 = icmp ne i32 0, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %255
  %274 = load i32, i32* %25, align 4
  %275 = call i8* @cpu_to_le32(i32 %274)
  %276 = ptrtoint i8* %275 to i32
  %277 = load i32*, i32** %23, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %23, align 8
  store i32 %276, i32* %277, align 4
  br label %279

279:                                              ; preds = %273, %255
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %19, align 4
  store i32 %281, i32* %18, align 4
  br label %178

282:                                              ; preds = %178
  br label %283

283:                                              ; preds = %282, %158, %150, %142
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %16, align 4
  %286 = load %struct.bttv*, %struct.bttv** %8, align 8
  %287 = getelementptr inbounds %struct.bttv, %struct.bttv* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %26, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %26, align 4
  br label %121

293:                                              ; preds = %121
  %294 = load i32*, i32** %23, align 8
  %295 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %296 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %295, i32 0, i32 2
  store i32* %294, i32** %296, align 8
  %297 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %298 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %301 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = ptrtoint i32* %299 to i64
  %304 = ptrtoint i32* %302 to i64
  %305 = sub i64 %303, %304
  %306 = sdiv exact i64 %305, 4
  %307 = add nsw i64 %306, 2
  %308 = mul i64 %307, 4
  %309 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %310 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = icmp ugt i64 %308, %312
  %314 = zext i1 %313 to i32
  %315 = call i32 @BUG_ON(i32 %314)
  %316 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %317 = call i32 @kfree(%struct.btcx_skiplist* %316)
  store i32 0, i32* %7, align 4
  br label %318

318:                                              ; preds = %293, %74, %34
  %319 = load i32, i32* %7, align 4
  ret i32 %319
}

declare dso_local %struct.btcx_skiplist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @btcx_riscmem_alloc(i32, %struct.btcx_riscmem*, i32) #1

declare dso_local i32 @kfree(%struct.btcx_skiplist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @btcx_calc_skips(i32, i32, i32*, %struct.btcx_skiplist*, i32*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
