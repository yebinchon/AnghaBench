; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.goya_device*, %struct.asic_fixed_properties }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32)* }
%struct.goya_device = type { i32 }
%struct.asic_fixed_properties = type { i32, i32, i64 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to set hop0 addr for asid %d\0A\00", align 1
@mmSTLB_CACHE_INV_BASE_39_8 = common dso_local global i32 0, align 4
@MMU_CACHE_MNG_ADDR = common dso_local global i32 0, align 4
@mmSTLB_CACHE_INV_BASE_49_40 = common dso_local global i32 0, align 4
@mmSTLB_STLB_FEATURE_EN = common dso_local global i32 0, align 4
@STLB_STLB_FEATURE_EN_FOLLOWER_EN_MASK = common dso_local global i32 0, align 4
@mmMMU_MMU_ENABLE = common dso_local global i32 0, align 4
@mmMMU_SPI_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_mmu_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca %struct.goya_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 6
  store %struct.asic_fixed_properties* %10, %struct.asic_fixed_properties** %4, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 5
  %13 = load %struct.goya_device*, %struct.goya_device** %12, align 8
  store %struct.goya_device* %13, %struct.goya_device** %5, align 8
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

19:                                               ; preds = %1
  %20 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %21 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HW_CAP_MMU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %97

27:                                               ; preds = %19
  %28 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %31 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %62, %27
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %35 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %40 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %44 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %41, %47
  store i64 %48, i64* %6, align 8
  %49 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @goya_mmu_update_asid_hop0_addr(%struct.hl_device* %49, i32 %50, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %95

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i32, i32* @HW_CAP_MMU, align 4
  %67 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %68 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @mmSTLB_CACHE_INV_BASE_39_8, align 4
  %72 = load i32, i32* @MMU_CACHE_MNG_ADDR, align 4
  %73 = ashr i32 %72, 8
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = call i32 @WREG32(i32 %71, i32 %74)
  %76 = load i32, i32* @mmSTLB_CACHE_INV_BASE_49_40, align 4
  %77 = load i32, i32* @MMU_CACHE_MNG_ADDR, align 4
  %78 = ashr i32 %77, 40
  %79 = call i32 @WREG32(i32 %76, i32 %78)
  %80 = load i32, i32* @mmSTLB_STLB_FEATURE_EN, align 4
  %81 = load i32, i32* @STLB_STLB_FEATURE_EN_FOLLOWER_EN_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = call i32 @WREG32_AND(i32 %80, i32 %82)
  %84 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %85 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %87, align 8
  %89 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %90 = call i32 %88(%struct.hl_device* %89, i32 1)
  %91 = load i32, i32* @mmMMU_MMU_ENABLE, align 4
  %92 = call i32 @WREG32(i32 %91, i32 1)
  %93 = load i32, i32* @mmMMU_SPI_MASK, align 4
  %94 = call i32 @WREG32(i32 %93, i32 15)
  store i32 0, i32* %2, align 4
  br label %97

95:                                               ; preds = %55
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %65, %26, %18
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @goya_mmu_update_asid_hop0_addr(%struct.hl_device*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WREG32_AND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
