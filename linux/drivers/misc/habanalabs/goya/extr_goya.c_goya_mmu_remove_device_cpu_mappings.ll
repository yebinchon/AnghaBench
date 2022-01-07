; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_remove_device_cpu_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_remove_device_cpu_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, %struct.goya_device*, %struct.asic_fixed_properties }
%struct.goya_device = type { i32, i32 }
%struct.asic_fixed_properties = type { i64 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@mmCPU_IF_ARUSER_OVR_EN = common dso_local global i32 0, align 4
@mmCPU_IF_AWUSER_OVR_EN = common dso_local global i32 0, align 4
@PAGE_SIZE_2MB = common dso_local global i32 0, align 4
@VA_CPU_ACCESSIBLE_MEM_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to unmap CPU accessible memory\0A\00", align 1
@SZ_2M = common dso_local global i64 0, align 8
@PAGE_SIZE_4KB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to unmap address 0x%llx\0A\00", align 1
@CPU_FW_IMAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to unmap address 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_mmu_remove_device_cpu_mappings(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.asic_fixed_properties*, align 8
  %4 = alloca %struct.goya_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 4
  store %struct.asic_fixed_properties* %8, %struct.asic_fixed_properties** %3, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 3
  %11 = load %struct.goya_device*, %struct.goya_device** %10, align 8
  store %struct.goya_device* %11, %struct.goya_device** %4, align 8
  %12 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %13 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HW_CAP_MMU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %21 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %117

25:                                               ; preds = %19
  %26 = load i32, i32* @mmCPU_IF_ARUSER_OVR_EN, align 4
  %27 = call i32 @WREG32(i32 %26, i32 0)
  %28 = load i32, i32* @mmCPU_IF_AWUSER_OVR_EN, align 4
  %29 = call i32 @WREG32(i32 %28, i32 0)
  %30 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %31 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %25
  %38 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %42 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %43 = call i64 @hl_mmu_unmap(i32 %40, i64 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %47 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_warn(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %37
  br label %81

51:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %75, %51
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @SZ_2M, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @PAGE_SIZE_4KB, align 4
  %64 = call i64 @hl_mmu_unmap(i32 %59, i64 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @dev_warn_ratelimited(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %66, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* @PAGE_SIZE_4KB, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %6, align 8
  br label %52

80:                                               ; preds = %52
  br label %81

81:                                               ; preds = %80, %50
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %109, %81
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @CPU_FW_IMAGE_SIZE, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %88 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %91 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %96 = call i64 @hl_mmu_unmap(i32 %89, i64 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %100 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %103 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @dev_warn_ratelimited(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %98, %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %5, align 8
  br label %82

114:                                              ; preds = %82
  %115 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %116 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %24, %18
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @hl_mmu_unmap(i32, i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
