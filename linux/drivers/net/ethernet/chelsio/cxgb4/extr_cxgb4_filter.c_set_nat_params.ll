; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_set_nat_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_set_nat_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.filter_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i64 }

@TCB_SND_UNA_RAW_W = common dso_local global i64 0, align 8
@WORD_MASK = common dso_local global i32 0, align 4
@TCB_RX_FRAG3_LEN_RAW_W = common dso_local global i64 0, align 8
@TCB_RX_FRAG2_PTR_RAW_W = common dso_local global i64 0, align 8
@TCB_RX_FRAG3_START_IDX_OFFSET_RAW_W = common dso_local global i64 0, align 8
@TCB_PDU_HDR_LEN_W = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.filter_entry*, i32, i32, i32, i32, i32)* @set_nat_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nat_params(%struct.adapter* %0, %struct.filter_entry* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.filter_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store %struct.filter_entry* %1, %struct.filter_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %209

17:                                               ; preds = %7
  %18 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %19 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %171

23:                                               ; preds = %17
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* @TCB_SND_UNA_RAW_W, align 8
  %28 = load i32, i32* @WORD_MASK, align 4
  %29 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %30 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 15
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %36 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 14
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %34, %41
  %43 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %44 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 13
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %42, %49
  %51 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %52 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 24
  %58 = or i32 %50, %57
  %59 = call i32 @set_tcb_field(%struct.adapter* %24, %struct.filter_entry* %25, i32 %26, i64 %27, i32 %28, i32 %58, i32 1)
  %60 = load %struct.adapter*, %struct.adapter** %8, align 8
  %61 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* @TCB_SND_UNA_RAW_W, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* @WORD_MASK, align 4
  %66 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %67 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 11
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %73 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 10
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %71, %78
  %80 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %81 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 9
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %79, %86
  %88 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %89 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 24
  %95 = or i32 %87, %94
  %96 = call i32 @set_tcb_field(%struct.adapter* %60, %struct.filter_entry* %61, i32 %62, i64 %64, i32 %65, i32 %95, i32 1)
  %97 = load %struct.adapter*, %struct.adapter** %8, align 8
  %98 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i64, i64* @TCB_SND_UNA_RAW_W, align 8
  %101 = add nsw i64 %100, 2
  %102 = load i32, i32* @WORD_MASK, align 4
  %103 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %104 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %110 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = or i32 %108, %115
  %117 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %118 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 16
  %124 = or i32 %116, %123
  %125 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %126 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 24
  %132 = or i32 %124, %131
  %133 = call i32 @set_tcb_field(%struct.adapter* %97, %struct.filter_entry* %98, i32 %99, i64 %101, i32 %102, i32 %132, i32 1)
  %134 = load %struct.adapter*, %struct.adapter** %8, align 8
  %135 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i64, i64* @TCB_SND_UNA_RAW_W, align 8
  %138 = add nsw i64 %137, 3
  %139 = load i32, i32* @WORD_MASK, align 4
  %140 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %141 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %147 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 8
  %153 = or i32 %145, %152
  %154 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %155 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 16
  %161 = or i32 %153, %160
  %162 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %163 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 24
  %169 = or i32 %161, %168
  %170 = call i32 @set_tcb_field(%struct.adapter* %134, %struct.filter_entry* %135, i32 %136, i64 %138, i32 %139, i32 %169, i32 1)
  br label %208

171:                                              ; preds = %17
  %172 = load %struct.adapter*, %struct.adapter** %8, align 8
  %173 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i64, i64* @TCB_RX_FRAG3_LEN_RAW_W, align 8
  %176 = load i32, i32* @WORD_MASK, align 4
  %177 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %178 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %184 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 8
  %190 = or i32 %182, %189
  %191 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %192 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 16
  %198 = or i32 %190, %197
  %199 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %200 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 24
  %206 = or i32 %198, %205
  %207 = call i32 @set_tcb_field(%struct.adapter* %172, %struct.filter_entry* %173, i32 %174, i64 %175, i32 %176, i32 %206, i32 1)
  br label %208

208:                                              ; preds = %171, %23
  br label %209

209:                                              ; preds = %208, %7
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %404

212:                                              ; preds = %209
  %213 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %214 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %366

218:                                              ; preds = %212
  %219 = load %struct.adapter*, %struct.adapter** %8, align 8
  %220 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i64, i64* @TCB_RX_FRAG2_PTR_RAW_W, align 8
  %223 = load i32, i32* @WORD_MASK, align 4
  %224 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %225 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 15
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %231 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 14
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 8
  %237 = or i32 %229, %236
  %238 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %239 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 13
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 16
  %245 = or i32 %237, %244
  %246 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %247 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 12
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 24
  %253 = or i32 %245, %252
  %254 = call i32 @set_tcb_field(%struct.adapter* %219, %struct.filter_entry* %220, i32 %221, i64 %222, i32 %223, i32 %253, i32 1)
  %255 = load %struct.adapter*, %struct.adapter** %8, align 8
  %256 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i64, i64* @TCB_RX_FRAG2_PTR_RAW_W, align 8
  %259 = add nsw i64 %258, 1
  %260 = load i32, i32* @WORD_MASK, align 4
  %261 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %262 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 11
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %268 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 10
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 8
  %274 = or i32 %266, %273
  %275 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %276 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 9
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 %280, 16
  %282 = or i32 %274, %281
  %283 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %284 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 8
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 24
  %290 = or i32 %282, %289
  %291 = call i32 @set_tcb_field(%struct.adapter* %255, %struct.filter_entry* %256, i32 %257, i64 %259, i32 %260, i32 %290, i32 1)
  %292 = load %struct.adapter*, %struct.adapter** %8, align 8
  %293 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %294 = load i32, i32* %10, align 4
  %295 = load i64, i64* @TCB_RX_FRAG2_PTR_RAW_W, align 8
  %296 = add nsw i64 %295, 2
  %297 = load i32, i32* @WORD_MASK, align 4
  %298 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %299 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 7
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %305 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 6
  %309 = load i32, i32* %308, align 4
  %310 = shl i32 %309, 8
  %311 = or i32 %303, %310
  %312 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %313 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 5
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %317, 16
  %319 = or i32 %311, %318
  %320 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %321 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 4
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 24
  %327 = or i32 %319, %326
  %328 = call i32 @set_tcb_field(%struct.adapter* %292, %struct.filter_entry* %293, i32 %294, i64 %296, i32 %297, i32 %327, i32 1)
  %329 = load %struct.adapter*, %struct.adapter** %8, align 8
  %330 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %331 = load i32, i32* %10, align 4
  %332 = load i64, i64* @TCB_RX_FRAG2_PTR_RAW_W, align 8
  %333 = add nsw i64 %332, 3
  %334 = load i32, i32* @WORD_MASK, align 4
  %335 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %336 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 3
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %342 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 2
  %346 = load i32, i32* %345, align 4
  %347 = shl i32 %346, 8
  %348 = or i32 %340, %347
  %349 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %350 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 1
  %354 = load i32, i32* %353, align 4
  %355 = shl i32 %354, 16
  %356 = or i32 %348, %355
  %357 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %358 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = shl i32 %362, 24
  %364 = or i32 %356, %363
  %365 = call i32 @set_tcb_field(%struct.adapter* %329, %struct.filter_entry* %330, i32 %331, i64 %333, i32 %334, i32 %364, i32 1)
  br label %403

366:                                              ; preds = %212
  %367 = load %struct.adapter*, %struct.adapter** %8, align 8
  %368 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %369 = load i32, i32* %10, align 4
  %370 = load i64, i64* @TCB_RX_FRAG3_START_IDX_OFFSET_RAW_W, align 8
  %371 = load i32, i32* @WORD_MASK, align 4
  %372 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %373 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 3
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %379 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 2
  %383 = load i32, i32* %382, align 4
  %384 = shl i32 %383, 8
  %385 = or i32 %377, %384
  %386 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %387 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 1
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = shl i32 %391, 16
  %393 = or i32 %385, %392
  %394 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %395 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = shl i32 %399, 24
  %401 = or i32 %393, %400
  %402 = call i32 @set_tcb_field(%struct.adapter* %367, %struct.filter_entry* %368, i32 %369, i64 %370, i32 %371, i32 %401, i32 1)
  br label %403

403:                                              ; preds = %366, %218
  br label %404

404:                                              ; preds = %403, %209
  %405 = load %struct.adapter*, %struct.adapter** %8, align 8
  %406 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %407 = load i32, i32* %10, align 4
  %408 = load i64, i64* @TCB_PDU_HDR_LEN_W, align 8
  %409 = load i32, i32* @WORD_MASK, align 4
  %410 = load i32, i32* %13, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %404
  %413 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %414 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  br label %418

417:                                              ; preds = %404
  br label %418

418:                                              ; preds = %417, %412
  %419 = phi i32 [ %416, %412 ], [ 0, %417 ]
  %420 = load i32, i32* %14, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %418
  %423 = load %struct.filter_entry*, %struct.filter_entry** %9, align 8
  %424 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 %426, 16
  br label %429

428:                                              ; preds = %418
  br label %429

429:                                              ; preds = %428, %422
  %430 = phi i32 [ %427, %422 ], [ 0, %428 ]
  %431 = or i32 %419, %430
  %432 = call i32 @set_tcb_field(%struct.adapter* %405, %struct.filter_entry* %406, i32 %407, i64 %408, i32 %409, i32 %431, i32 1)
  ret void
}

declare dso_local i32 @set_tcb_field(%struct.adapter*, %struct.filter_entry*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
