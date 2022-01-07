; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c__hl_mmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c__hl_mmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { i32, i64, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE_2MB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"DRAM mapping should use huge pages only\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@PTE_PHYS_ADDR_MASK = common dso_local global i64 0, align 8
@LAST_MASK = common dso_local global i64 0, align 8
@PAGE_PRESENT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"DRAM: mapping already exists for virt_addr 0x%llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"DRAM mapping should not allocate more hops\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"mapping already exists for virt_addr 0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"hop0 pte: 0x%llx (0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"hop1 pte: 0x%llx (0x%llx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"hop2 pte: 0x%llx (0x%llx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"hop3 pte: 0x%llx (0x%llx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"hop4 pte: 0x%llx (0x%llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, i64, i64, i64)* @_hl_mmu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hl_mmu_map(%struct.hl_ctx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hl_device*, align 8
  %11 = alloca %struct.asic_fixed_properties*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %31 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %31, i32 0, i32 0
  %33 = load %struct.hl_device*, %struct.hl_device** %32, align 8
  store %struct.hl_device* %33, %struct.hl_device** %10, align 8
  %34 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 2
  store %struct.asic_fixed_properties* %35, %struct.asic_fixed_properties** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %29, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @PAGE_SIZE_2MB, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %27, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %11, align 8
  %45 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %11, align 8
  %48 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hl_mem_area_inside_range(i64 %42, i64 %43, i32 %46, i32 %49)
  store i32 %50, i32* %28, align 4
  %51 = load i32, i32* %28, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %4
  %54 = load i32, i32* %27, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %368

63:                                               ; preds = %53, %4
  %64 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %65 = call i64 @get_hop0_addr(%struct.hl_ctx* %64)
  store i64 %65, i64* %12, align 8
  %66 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @get_hop0_pte_addr(%struct.hl_ctx* %66, i64 %67, i64 %68)
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = inttoptr i64 %70 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %22, align 8
  %73 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %74 = load i64, i64* %22, align 8
  %75 = call i64 @get_alloc_next_hop_addr(%struct.hl_ctx* %73, i64 %74, i32* %23)
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @ULLONG_MAX, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %338

80:                                               ; preds = %63
  %81 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @get_hop1_pte_addr(%struct.hl_ctx* %81, i64 %82, i64 %83)
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %15, align 8
  %86 = inttoptr i64 %85 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %22, align 8
  %88 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %89 = load i64, i64* %22, align 8
  %90 = call i64 @get_alloc_next_hop_addr(%struct.hl_ctx* %88, i64 %89, i32* %24)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* @ULLONG_MAX, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %338

95:                                               ; preds = %80
  %96 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i64 @get_hop2_pte_addr(%struct.hl_ctx* %96, i64 %97, i64 %98)
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* %17, align 8
  %101 = inttoptr i64 %100 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %22, align 8
  %103 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %104 = load i64, i64* %22, align 8
  %105 = call i64 @get_alloc_next_hop_addr(%struct.hl_ctx* %103, i64 %104, i32* %25)
  store i64 %105, i64* %18, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* @ULLONG_MAX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %338

110:                                              ; preds = %95
  %111 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @get_hop3_pte_addr(%struct.hl_ctx* %111, i64 %112, i64 %113)
  store i64 %114, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = inttoptr i64 %115 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %22, align 8
  %118 = load i32, i32* %27, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %110
  %121 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %122 = load i64, i64* %22, align 8
  %123 = call i64 @get_alloc_next_hop_addr(%struct.hl_ctx* %121, i64 %122, i32* %26)
  store i64 %123, i64* %20, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @ULLONG_MAX, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %338

128:                                              ; preds = %120
  %129 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %130 = load i64, i64* %20, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i64 @get_hop4_pte_addr(%struct.hl_ctx* %129, i64 %130, i64 %131)
  store i64 %132, i64* %21, align 8
  %133 = load i64, i64* %21, align 8
  %134 = inttoptr i64 %133 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %22, align 8
  br label %136

136:                                              ; preds = %128, %110
  %137 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %138 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %185

141:                                              ; preds = %136
  %142 = load i32, i32* %28, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %185

144:                                              ; preds = %141
  %145 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %11, align 8
  %146 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %149 = and i64 %147, %148
  %150 = load i64, i64* @LAST_MASK, align 8
  %151 = or i64 %149, %150
  %152 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %153 = or i64 %151, %152
  store i64 %153, i64* %30, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %30, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %144
  %158 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %159 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %29, align 4
  br label %338

165:                                              ; preds = %144
  %166 = load i32, i32* %23, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %24, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %25, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %26, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174, %171, %168, %165
  %178 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %179 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %182 = load i32, i32* @EFAULT, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %29, align 4
  br label %338

184:                                              ; preds = %174
  br label %243

185:                                              ; preds = %141, %136
  %186 = load i64, i64* %22, align 8
  %187 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %188 = and i64 %186, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %242

190:                                              ; preds = %185
  %191 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %192 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i32 (i32, i8*, ...) @dev_err(i32 %193, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %194)
  %196 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %197 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = inttoptr i64 %199 to i64*
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @dev_dbg(i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %201, i64 %202)
  %204 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %205 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* %15, align 8
  %208 = inttoptr i64 %207 to i64*
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %15, align 8
  %211 = call i32 @dev_dbg(i32 %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %209, i64 %210)
  %212 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %213 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i64, i64* %17, align 8
  %216 = inttoptr i64 %215 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %17, align 8
  %219 = call i32 @dev_dbg(i32 %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %217, i64 %218)
  %220 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %221 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i64, i64* %19, align 8
  %224 = inttoptr i64 %223 to i64*
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %19, align 8
  %227 = call i32 @dev_dbg(i32 %222, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %225, i64 %226)
  %228 = load i32, i32* %27, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %190
  %231 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %232 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i64, i64* %21, align 8
  %235 = inttoptr i64 %234 to i64*
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %21, align 8
  %238 = call i32 @dev_dbg(i32 %233, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %236, i64 %237)
  br label %239

239:                                              ; preds = %230, %190
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %29, align 4
  br label %338

242:                                              ; preds = %185
  br label %243

243:                                              ; preds = %242, %184
  %244 = load i64, i64* %8, align 8
  %245 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %246 = and i64 %244, %245
  %247 = load i64, i64* @LAST_MASK, align 8
  %248 = or i64 %246, %247
  %249 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %250 = or i64 %248, %249
  store i64 %250, i64* %22, align 8
  %251 = load i32, i32* %27, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %243
  %254 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %255 = load i64, i64* %19, align 8
  %256 = load i64, i64* %22, align 8
  %257 = call i32 @write_final_pte(%struct.hl_ctx* %254, i64 %255, i64 %256)
  br label %263

258:                                              ; preds = %243
  %259 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %260 = load i64, i64* %21, align 8
  %261 = load i64, i64* %22, align 8
  %262 = call i32 @write_final_pte(%struct.hl_ctx* %259, i64 %260, i64 %261)
  br label %263

263:                                              ; preds = %258, %253
  %264 = load i32, i32* %23, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load i64, i64* %14, align 8
  %268 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %269 = and i64 %267, %268
  %270 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %271 = or i64 %269, %270
  store i64 %271, i64* %22, align 8
  %272 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %273 = load i64, i64* %13, align 8
  %274 = load i64, i64* %22, align 8
  %275 = call i32 @write_pte(%struct.hl_ctx* %272, i64 %273, i64 %274)
  br label %276

276:                                              ; preds = %266, %263
  %277 = load i32, i32* %24, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %282 = and i64 %280, %281
  %283 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %284 = or i64 %282, %283
  store i64 %284, i64* %22, align 8
  %285 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %286 = load i64, i64* %15, align 8
  %287 = load i64, i64* %22, align 8
  %288 = call i32 @write_pte(%struct.hl_ctx* %285, i64 %286, i64 %287)
  %289 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %290 = load i64, i64* %14, align 8
  %291 = call i32 @get_pte(%struct.hl_ctx* %289, i64 %290)
  br label %292

292:                                              ; preds = %279, %276
  %293 = load i32, i32* %25, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %292
  %296 = load i64, i64* %18, align 8
  %297 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %298 = and i64 %296, %297
  %299 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %300 = or i64 %298, %299
  store i64 %300, i64* %22, align 8
  %301 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %302 = load i64, i64* %17, align 8
  %303 = load i64, i64* %22, align 8
  %304 = call i32 @write_pte(%struct.hl_ctx* %301, i64 %302, i64 %303)
  %305 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %306 = load i64, i64* %16, align 8
  %307 = call i32 @get_pte(%struct.hl_ctx* %305, i64 %306)
  br label %308

308:                                              ; preds = %295, %292
  %309 = load i32, i32* %27, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %331, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %26, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %311
  %315 = load i64, i64* %20, align 8
  %316 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %317 = and i64 %315, %316
  %318 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %319 = or i64 %317, %318
  store i64 %319, i64* %22, align 8
  %320 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %321 = load i64, i64* %19, align 8
  %322 = load i64, i64* %22, align 8
  %323 = call i32 @write_pte(%struct.hl_ctx* %320, i64 %321, i64 %322)
  %324 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %325 = load i64, i64* %18, align 8
  %326 = call i32 @get_pte(%struct.hl_ctx* %324, i64 %325)
  br label %327

327:                                              ; preds = %314, %311
  %328 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %329 = load i64, i64* %20, align 8
  %330 = call i32 @get_pte(%struct.hl_ctx* %328, i64 %329)
  br label %335

331:                                              ; preds = %308
  %332 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %333 = load i64, i64* %18, align 8
  %334 = call i32 @get_pte(%struct.hl_ctx* %332, i64 %333)
  br label %335

335:                                              ; preds = %331, %327
  %336 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %337 = call i32 @flush(%struct.hl_ctx* %336)
  store i32 0, i32* %5, align 4
  br label %368

338:                                              ; preds = %239, %177, %157, %127, %109, %94, %79
  %339 = load i32, i32* %26, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %338
  %342 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %343 = load i64, i64* %20, align 8
  %344 = call i32 @free_hop(%struct.hl_ctx* %342, i64 %343)
  br label %345

345:                                              ; preds = %341, %338
  %346 = load i32, i32* %25, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %345
  %349 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %350 = load i64, i64* %18, align 8
  %351 = call i32 @free_hop(%struct.hl_ctx* %349, i64 %350)
  br label %352

352:                                              ; preds = %348, %345
  %353 = load i32, i32* %24, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %352
  %356 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %357 = load i64, i64* %16, align 8
  %358 = call i32 @free_hop(%struct.hl_ctx* %356, i64 %357)
  br label %359

359:                                              ; preds = %355, %352
  %360 = load i32, i32* %23, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %364 = load i64, i64* %14, align 8
  %365 = call i32 @free_hop(%struct.hl_ctx* %363, i64 %364)
  br label %366

366:                                              ; preds = %362, %359
  %367 = load i32, i32* %29, align 4
  store i32 %367, i32* %5, align 4
  br label %368

368:                                              ; preds = %366, %335, %56
  %369 = load i32, i32* %5, align 4
  ret i32 %369
}

declare dso_local i32 @hl_mem_area_inside_range(i64, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local i64 @get_hop0_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_alloc_next_hop_addr(%struct.hl_ctx*, i64, i32*) #1

declare dso_local i64 @get_hop1_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop2_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop3_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop4_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @write_final_pte(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @write_pte(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @get_pte(%struct.hl_ctx*, i64) #1

declare dso_local i32 @flush(%struct.hl_ctx*) #1

declare dso_local i32 @free_hop(%struct.hl_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
