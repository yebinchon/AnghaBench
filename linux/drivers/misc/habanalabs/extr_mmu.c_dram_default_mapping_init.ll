; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_dram_default_mapping_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_dram_default_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i64, i32*, %struct.hl_device* }
%struct.hl_device = type { i32, i32, i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i32, i32 }

@HL_KERNEL_ASID_ID = common dso_local global i64 0, align 8
@PTE_ENTRIES_IN_HOP = common dso_local global i32 0, align 4
@HL_PTE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to alloc hop 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to alloc hop 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to alloc hop 3, i: %d\0A\00", align 1
@PTE_PHYS_ADDR_MASK = common dso_local global i32 0, align 4
@PAGE_PRESENT_MASK = common dso_local global i32 0, align 4
@LAST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*)* @dram_default_mapping_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dram_default_mapping_init(%struct.hl_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_ctx*, align 8
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.asic_fixed_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %3, align 8
  %18 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %18, i32 0, i32 2
  %20 = load %struct.hl_device*, %struct.hl_device** %19, align 8
  store %struct.hl_device* %20, %struct.hl_device** %4, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 3
  store %struct.asic_fixed_properties* %22, %struct.asic_fixed_properties** %5, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HL_KERNEL_ASID_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %27, %1
  store i32 0, i32* %2, align 4
  br label %288

39:                                               ; preds = %32
  %40 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %41 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %45 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @do_div(i32 %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PTE_ENTRIES_IN_HOP, align 4
  %50 = call i32 @do_div(i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @HL_PTE_SIZE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kzalloc(i32 %55, i32 %56)
  %58 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %288

67:                                               ; preds = %39
  %68 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %69 = call i32 @get_hop0_addr(%struct.hl_ctx* %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %71 = call i8* @alloc_hop(%struct.hl_ctx* %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ULLONG_MAX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %78 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %282

83:                                               ; preds = %67
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  %92 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %93 = call i8* @alloc_hop(%struct.hl_ctx* %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ULLONG_MAX, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %83
  %99 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %100 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %14, align 4
  br label %278

105:                                              ; preds = %83
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %106, i32* %113, align 4
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %148, %105
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %114
  %119 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %120 = call i8* @alloc_hop(%struct.hl_ctx* %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %129 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ULLONG_MAX, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %118
  %138 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %139 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %14, align 4
  br label %256

145:                                              ; preds = %118
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %114

151:                                              ; preds = %114
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @PTE_PHYS_ADDR_MASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @PAGE_PRESENT_MASK, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %13, align 4
  %157 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @write_pte(%struct.hl_ctx* %157, i32 %158, i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @PTE_PHYS_ADDR_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @PAGE_PRESENT_MASK, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %13, align 4
  %166 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @write_pte(%struct.hl_ctx* %166, i32 %167, i32 %168)
  %170 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @get_pte(%struct.hl_ctx* %170, i32 %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %174

174:                                              ; preds = %200, %151
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %203

178:                                              ; preds = %174
  %179 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PTE_PHYS_ADDR_MASK, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* @PAGE_PRESENT_MASK, align 4
  %189 = or i32 %187, %188
  store i32 %189, i32* %13, align 4
  %190 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @write_pte(%struct.hl_ctx* %190, i32 %191, i32 %192)
  %194 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @get_pte(%struct.hl_ctx* %194, i32 %195)
  %197 = load i32, i32* @HL_PTE_SIZE, align 4
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %178
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %174

203:                                              ; preds = %174
  %204 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %205 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PTE_PHYS_ADDR_MASK, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* @LAST_MASK, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @PAGE_PRESENT_MASK, align 4
  %212 = or i32 %210, %211
  store i32 %212, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %213

213:                                              ; preds = %250, %203
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %253

217:                                              ; preds = %213
  %218 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %219 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %225

225:                                              ; preds = %246, %217
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* @PTE_ENTRIES_IN_HOP, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %225
  %230 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @write_final_pte(%struct.hl_ctx* %230, i32 %231, i32 %232)
  %234 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %235 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %236 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @get_pte(%struct.hl_ctx* %234, i32 %241)
  %243 = load i32, i32* @HL_PTE_SIZE, align 4
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %229
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %225

249:                                              ; preds = %225
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %15, align 4
  br label %213

253:                                              ; preds = %213
  %254 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %255 = call i32 @flush(%struct.hl_ctx* %254)
  store i32 0, i32* %2, align 4
  br label %288

256:                                              ; preds = %137
  store i32 0, i32* %15, align 4
  br label %257

257:                                              ; preds = %271, %256
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %17, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %263 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %264 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @free_hop(%struct.hl_ctx* %262, i32 %269)
  br label %271

271:                                              ; preds = %261
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %15, align 4
  br label %257

274:                                              ; preds = %257
  %275 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @free_hop(%struct.hl_ctx* %275, i32 %276)
  br label %278

278:                                              ; preds = %274, %98
  %279 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @free_hop(%struct.hl_ctx* %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %76
  %283 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %284 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @kfree(i32* %285)
  %287 = load i32, i32* %14, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %282, %253, %64, %38
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local i8* @alloc_hop(%struct.hl_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @write_pte(%struct.hl_ctx*, i32, i32) #1

declare dso_local i32 @get_pte(%struct.hl_ctx*, i32) #1

declare dso_local i32 @write_final_pte(%struct.hl_ctx*, i32, i32) #1

declare dso_local i32 @flush(%struct.hl_ctx*) #1

declare dso_local i32 @free_hop(%struct.hl_ctx*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
