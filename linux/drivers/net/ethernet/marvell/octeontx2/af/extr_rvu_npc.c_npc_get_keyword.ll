; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_get_keyword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_get_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_entry = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_entry*, i32, i32*, i32*)* @npc_get_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npc_get_keyword(%struct.mcam_entry* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mcam_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mcam_entry* %0, %struct.mcam_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %276 [
    i32 0, label %11
    i32 1, label %23
    i32 2, label %41
    i32 3, label %84
    i32 4, label %127
    i32 5, label %170
    i32 6, label %213
    i32 7, label %256
  ]

11:                                               ; preds = %4
  %12 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %13 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %19 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  br label %276

23:                                               ; preds = %4
  %24 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %34 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %9, align 4
  br label %276

41:                                               ; preds = %4
  %42 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %43 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 48
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %53 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = shl i32 %59, 16
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %65 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 48
  %70 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %74 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %77, %79
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %276

84:                                               ; preds = %4
  %85 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %86 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 48
  %91 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %90, %92
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %96 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %99, %101
  %103 = shl i32 %102, 16
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %108 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 48
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %112, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %117 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %122 = sub nsw i32 %121, 1
  %123 = and i32 %120, %122
  %124 = shl i32 %123, 16
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %276

127:                                              ; preds = %4
  %128 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %129 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 32
  %134 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %133, %135
  %137 = load i32*, i32** %8, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %139 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %144 = sub nsw i32 %143, 1
  %145 = and i32 %142, %144
  %146 = shl i32 %145, 32
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %151 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 32
  %156 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %157 = sub nsw i32 %156, 1
  %158 = and i32 %155, %157
  store i32 %158, i32* %9, align 4
  %159 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %160 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %165 = sub nsw i32 %164, 1
  %166 = and i32 %163, %165
  %167 = shl i32 %166, 32
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %276

170:                                              ; preds = %4
  %171 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %172 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 32
  %177 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %178 = sub nsw i32 %177, 1
  %179 = and i32 %176, %178
  %180 = load i32*, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  %181 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %182 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %187 = sub nsw i32 %186, 1
  %188 = and i32 %185, %187
  %189 = shl i32 %188, 32
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  %193 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %194 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 32
  %199 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 32)
  %200 = sub nsw i32 %199, 1
  %201 = and i32 %198, %200
  store i32 %201, i32* %9, align 4
  %202 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %203 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %208 = sub nsw i32 %207, 1
  %209 = and i32 %206, %208
  %210 = shl i32 %209, 32
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %9, align 4
  br label %276

213:                                              ; preds = %4
  %214 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %215 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 5
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 16
  %220 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %221 = sub nsw i32 %220, 1
  %222 = and i32 %219, %221
  %223 = load i32*, i32** %8, align 8
  store i32 %222, i32* %223, align 4
  %224 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %225 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 6
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %230 = sub nsw i32 %229, 1
  %231 = and i32 %228, %230
  %232 = shl i32 %231, 48
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %232
  store i32 %235, i32* %233, align 4
  %236 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %237 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 5
  %240 = load i32, i32* %239, align 4
  %241 = ashr i32 %240, 16
  %242 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %243 = sub nsw i32 %242, 1
  %244 = and i32 %241, %243
  store i32 %244, i32* %9, align 4
  %245 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %246 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 6
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 16)
  %251 = sub nsw i32 %250, 1
  %252 = and i32 %249, %251
  %253 = shl i32 %252, 48
  %254 = load i32, i32* %9, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %9, align 4
  br label %276

256:                                              ; preds = %4
  %257 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %258 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 6
  %261 = load i32, i32* %260, align 4
  %262 = ashr i32 %261, 16
  %263 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %264 = sub nsw i32 %263, 1
  %265 = and i32 %262, %264
  %266 = load i32*, i32** %8, align 8
  store i32 %265, i32* %266, align 4
  %267 = load %struct.mcam_entry*, %struct.mcam_entry** %5, align 8
  %268 = getelementptr inbounds %struct.mcam_entry, %struct.mcam_entry* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 6
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 16
  %273 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 48)
  %274 = sub nsw i32 %273, 1
  %275 = and i32 %272, %274
  store i32 %275, i32* %9, align 4
  br label %276

276:                                              ; preds = %4, %256, %213, %170, %127, %84, %41, %23, %11
  %277 = load i32, i32* %9, align 4
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %277
  store i32 %280, i32* %278, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = load i32, i32* %281, align 4
  %283 = xor i32 %282, -1
  %284 = load i32, i32* %9, align 4
  %285 = and i32 %283, %284
  %286 = load i32*, i32** %7, align 8
  store i32 %285, i32* %286, align 4
  ret void
}

declare dso_local i32 @BIT_ULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
