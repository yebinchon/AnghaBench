; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_add_mappings_for_device_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_add_mappings_for_device_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, %struct.goya_device*, %struct.asic_fixed_properties }
%struct.goya_device = type { i32, i32 }
%struct.asic_fixed_properties = type { i64 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@CPU_FW_IMAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Map failed for address 0x%llx\0A\00", align 1
@VA_CPU_ACCESSIBLE_MEM_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Map failed for CPU accessible memory\0A\00", align 1
@SZ_2M = common dso_local global i64 0, align 8
@PAGE_SIZE_4KB = common dso_local global i64 0, align 8
@mmCPU_IF_ARUSER_OVR = common dso_local global i32 0, align 4
@HL_KERNEL_ASID_ID = common dso_local global i32 0, align 4
@mmCPU_IF_AWUSER_OVR = common dso_local global i32 0, align 4
@mmCPU_IF_ARUSER_OVR_EN = common dso_local global i32 0, align 4
@mmCPU_IF_AWUSER_OVR_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to unmap address 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_mmu_add_mappings_for_device_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_mmu_add_mappings_for_device_cpu(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca %struct.goya_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 4
  store %struct.asic_fixed_properties* %10, %struct.asic_fixed_properties** %4, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 3
  %13 = load %struct.goya_device*, %struct.goya_device** %12, align 8
  store %struct.goya_device* %13, %struct.goya_device** %5, align 8
  %14 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %15 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HW_CAP_MMU, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %209

21:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CPU_FW_IMAGE_SIZE, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %31 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %36 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @hl_mmu_map(i32 %29, i64 %34, i64 %39, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %26
  %46 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %47 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %50 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %175

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %22

61:                                               ; preds = %22
  %62 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %63 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %61
  %70 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %74 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %75 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @hl_mmu_map(i32 %72, i64 %73, i64 %77, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %69
  %84 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %85 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %6, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %175

92:                                               ; preds = %69
  br label %129

93:                                               ; preds = %61
  store i64 0, i64* %7, align 8
  br label %94

94:                                               ; preds = %124, %93
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @SZ_2M, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %94
  %99 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %100 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %106 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* @PAGE_SIZE_4KB, align 8
  %112 = call i32 @hl_mmu_map(i32 %101, i64 %104, i64 %110, i64 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %98
  %116 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %117 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i64, i64* @PAGE_SIZE_4KB, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sub nsw i64 %121, %120
  store i64 %122, i64* %7, align 8
  br label %146

123:                                              ; preds = %98
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* @PAGE_SIZE_4KB, align 8
  %126 = load i64, i64* %7, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %7, align 8
  br label %94

128:                                              ; preds = %94
  br label %129

129:                                              ; preds = %128, %92
  %130 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %131 = load i32, i32* @mmCPU_IF_ARUSER_OVR, align 4
  %132 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %133 = call i32 @goya_mmu_prepare_reg(%struct.hl_device* %130, i32 %131, i32 %132)
  %134 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %135 = load i32, i32* @mmCPU_IF_AWUSER_OVR, align 4
  %136 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %137 = call i32 @goya_mmu_prepare_reg(%struct.hl_device* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @mmCPU_IF_ARUSER_OVR_EN, align 4
  %139 = call i32 @WREG32(i32 %138, i32 2047)
  %140 = load i32, i32* @mmCPU_IF_AWUSER_OVR_EN, align 4
  %141 = call i32 @WREG32(i32 %140, i32 2047)
  %142 = load i32, i32* @mmCPU_IF_AWUSER_OVR_EN, align 4
  %143 = call i32 @RREG32(i32 %142)
  %144 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %145 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  store i32 0, i32* %2, align 4
  br label %209

146:                                              ; preds = %115
  br label %147

147:                                              ; preds = %170, %146
  %148 = load i64, i64* %7, align 8
  %149 = icmp sge i64 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %147
  %151 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %152 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %155 = load i64, i64* %7, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i64, i64* @PAGE_SIZE_4KB, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i64 @hl_mmu_unmap(i32 %153, i64 %156, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %163 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %166 = load i64, i64* %7, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @dev_warn_ratelimited(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %161, %150
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* @PAGE_SIZE_4KB, align 8
  %172 = load i64, i64* %7, align 8
  %173 = sub nsw i64 %172, %171
  store i64 %173, i64* %7, align 8
  br label %147

174:                                              ; preds = %147
  br label %175

175:                                              ; preds = %174, %83, %45
  br label %176

176:                                              ; preds = %202, %175
  %177 = load i64, i64* %6, align 8
  %178 = icmp sge i64 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %176
  %180 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %181 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %184 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = add nsw i64 %185, %186
  %188 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %189 = call i64 @hl_mmu_unmap(i32 %182, i64 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %179
  %192 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %193 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %196 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %6, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @dev_warn_ratelimited(i32 %194, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %199)
  br label %201

201:                                              ; preds = %191, %179
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %6, align 8
  %206 = sub nsw i64 %205, %204
  store i64 %206, i64* %6, align 8
  br label %176

207:                                              ; preds = %176
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %129, %20
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @hl_mmu_map(i32, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @goya_mmu_prepare_reg(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @hl_mmu_unmap(i32, i64, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
