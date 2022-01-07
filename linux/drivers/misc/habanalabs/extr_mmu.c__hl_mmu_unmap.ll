; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c__hl_mmu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c__hl_mmu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { i32, i64, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i64, i32, i32 }

@PAGE_SIZE_2MB = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@LAST_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"DRAM unmapping should use huge pages only\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PTE_PHYS_ADDR_MASK = common dso_local global i64 0, align 8
@PAGE_PRESENT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"DRAM: hop3 PTE points to zero page, can't unmap, va: 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"DRAM: hop3 PTE is cleared! can't unmap, va: 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"virt addr 0x%llx is not mapped to phys addr\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, i64)* @_hl_mmu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hl_mmu_unmap(%struct.hl_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.asic_fixed_properties*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %23 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %23, i32 0, i32 0
  %25 = load %struct.hl_device*, %struct.hl_device** %24, align 8
  store %struct.hl_device* %25, %struct.hl_device** %6, align 8
  %26 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %27 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %26, i32 0, i32 2
  store %struct.asic_fixed_properties* %27, %struct.asic_fixed_properties** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 1, i32* %21, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %30 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %7, align 8
  %31 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %7, align 8
  %34 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hl_mem_area_inside_range(i64 %28, i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %38 = call i64 @get_hop0_addr(%struct.hl_ctx* %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @get_hop0_pte_addr(%struct.hl_ctx* %39, i64 %40, i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 8
  %46 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %47 = load i64, i64* %18, align 8
  %48 = call i64 @get_next_hop_addr(%struct.hl_ctx* %46, i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @ULLONG_MAX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %2
  br label %237

53:                                               ; preds = %2
  %54 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @get_hop1_pte_addr(%struct.hl_ctx* %54, i64 %55, i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = inttoptr i64 %58 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %18, align 8
  %61 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %62 = load i64, i64* %18, align 8
  %63 = call i64 @get_next_hop_addr(%struct.hl_ctx* %61, i64 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @ULLONG_MAX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %237

68:                                               ; preds = %53
  %69 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @get_hop2_pte_addr(%struct.hl_ctx* %69, i64 %70, i64 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = inttoptr i64 %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %18, align 8
  %76 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i64 @get_next_hop_addr(%struct.hl_ctx* %76, i64 %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @ULLONG_MAX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %237

83:                                               ; preds = %68
  %84 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @get_hop3_pte_addr(%struct.hl_ctx* %84, i64 %85, i64 %86)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = inttoptr i64 %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @LAST_MASK, align 8
  %93 = and i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %83
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %102 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %245

107:                                              ; preds = %97, %83
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %107
  %111 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %112 = load i64, i64* %18, align 8
  %113 = call i64 @get_next_hop_addr(%struct.hl_ctx* %111, i64 %112)
  store i64 %113, i64* %16, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* @ULLONG_MAX, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %237

118:                                              ; preds = %110
  %119 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @get_hop4_pte_addr(%struct.hl_ctx* %119, i64 %120, i64 %121)
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %17, align 8
  %124 = inttoptr i64 %123 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %18, align 8
  store i32 0, i32* %21, align 4
  br label %126

126:                                              ; preds = %118, %107
  %127 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %128 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %172

131:                                              ; preds = %126
  %132 = load i32, i32* %19, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %131
  %135 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %7, align 8
  %136 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PTE_PHYS_ADDR_MASK, align 8
  %139 = and i64 %137, %138
  %140 = load i64, i64* @LAST_MASK, align 8
  %141 = or i64 %139, %140
  %142 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %143 = or i64 %141, %142
  store i64 %143, i64* %22, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %22, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %134
  %148 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %149 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %150, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %151)
  br label %237

153:                                              ; preds = %134
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %160 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i32 (i32, i8*, ...) @dev_err(i32 %161, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %162)
  br label %237

164:                                              ; preds = %153
  %165 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* %22, align 8
  %168 = call i32 @write_final_pte(%struct.hl_ctx* %165, i64 %166, i64 %167)
  %169 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %170 = load i64, i64* %14, align 8
  %171 = call i64 @put_pte(%struct.hl_ctx* %169, i64 %170)
  br label %233

172:                                              ; preds = %131, %126
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  br label %237

178:                                              ; preds = %172
  %179 = load i64, i64* %16, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %183 = load i64, i64* %17, align 8
  %184 = call i32 @clear_pte(%struct.hl_ctx* %182, i64 %183)
  br label %189

185:                                              ; preds = %178
  %186 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %187 = load i64, i64* %15, align 8
  %188 = call i32 @clear_pte(%struct.hl_ctx* %186, i64 %187)
  br label %189

189:                                              ; preds = %185, %181
  %190 = load i64, i64* %16, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %194 = load i64, i64* %16, align 8
  %195 = call i64 @put_pte(%struct.hl_ctx* %193, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  store i32 1, i32* %21, align 4
  br label %198

198:                                              ; preds = %197, %192, %189
  %199 = load i32, i32* %21, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  br label %234

202:                                              ; preds = %198
  %203 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %204 = load i64, i64* %15, align 8
  %205 = call i32 @clear_pte(%struct.hl_ctx* %203, i64 %204)
  %206 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %207 = load i64, i64* %14, align 8
  %208 = call i64 @put_pte(%struct.hl_ctx* %206, i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %234

211:                                              ; preds = %202
  %212 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %213 = load i64, i64* %13, align 8
  %214 = call i32 @clear_pte(%struct.hl_ctx* %212, i64 %213)
  %215 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %216 = load i64, i64* %12, align 8
  %217 = call i64 @put_pte(%struct.hl_ctx* %215, i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %234

220:                                              ; preds = %211
  %221 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %222 = load i64, i64* %11, align 8
  %223 = call i32 @clear_pte(%struct.hl_ctx* %221, i64 %222)
  %224 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %225 = load i64, i64* %10, align 8
  %226 = call i64 @put_pte(%struct.hl_ctx* %224, i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  br label %234

229:                                              ; preds = %220
  %230 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %231 = load i64, i64* %9, align 8
  %232 = call i32 @clear_pte(%struct.hl_ctx* %230, i64 %231)
  br label %233

233:                                              ; preds = %229, %164
  br label %234

234:                                              ; preds = %233, %228, %219, %210, %201
  %235 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %236 = call i32 @flush(%struct.hl_ctx* %235)
  store i32 0, i32* %3, align 4
  br label %245

237:                                              ; preds = %177, %158, %147, %117, %82, %67, %52
  %238 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %239 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i64, i64* %5, align 8
  %242 = call i32 (i32, i8*, ...) @dev_err(i32 %240, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %241)
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %237, %234, %100
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @hl_mem_area_inside_range(i64, i32, i32, i32) #1

declare dso_local i64 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local i64 @get_hop0_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_next_hop_addr(%struct.hl_ctx*, i64) #1

declare dso_local i64 @get_hop1_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop2_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop3_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @get_hop4_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @write_final_pte(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @put_pte(%struct.hl_ctx*, i64) #1

declare dso_local i32 @clear_pte(%struct.hl_ctx*, i64) #1

declare dso_local i32 @flush(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
