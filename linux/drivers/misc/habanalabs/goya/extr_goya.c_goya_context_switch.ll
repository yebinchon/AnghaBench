; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_context_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_context_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i32 }

@mmDMA_CH_1_WR_COMP_ADDR_LO = common dso_local global i32 0, align 4
@mmDMA_CH_0_WR_COMP_ADDR_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to clear SRAM in context switch\0A\00", align 1
@CFG_BASE = common dso_local global i32 0, align 4
@mmSYNC_MNGR_SOB_OBJ_1007 = common dso_local global i32 0, align 4
@NUMBER_OF_EXT_HW_QUEUES = common dso_local global i32 0, align 4
@mmSYNC_MNGR_SOB_OBJ_1000 = common dso_local global i32 0, align 4
@mmTPC_PLL_CLK_RLX_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_context_switch(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asic_fixed_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 2
  store %struct.asic_fixed_properties* %15, %struct.asic_fixed_properties** %6, align 8
  %16 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %17 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %26 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 65536, %23 ], [ %27, %24 ]
  store i32 %29, i32* %9, align 4
  store i32 2004318071, i32* %10, align 4
  %30 = load i32, i32* @mmDMA_CH_1_WR_COMP_ADDR_LO, align 4
  %31 = load i32, i32* @mmDMA_CH_0_WR_COMP_ADDR_LO, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @goya_memset_device_memory(%struct.hl_device* %33, i32 %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %3, align 4
  br label %85

46:                                               ; preds = %28
  %47 = load i32, i32* @CFG_BASE, align 4
  %48 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_1007, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @mmDMA_CH_0_WR_COMP_ADDR_LO, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @lower_32_bits(i32 %51)
  %53 = call i32 @WREG32(i32 %50, i32 %52)
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %74, %46
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @NUMBER_OF_EXT_HW_QUEUES, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* @CFG_BASE, align 4
  %60 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_1000, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1
  %64 = mul nsw i32 %63, 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @mmDMA_CH_0_WR_COMP_ADDR_LO, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @lower_32_bits(i32 %71)
  %73 = call i32 @WREG32(i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %54

77:                                               ; preds = %54
  %78 = load i32, i32* @mmTPC_PLL_CLK_RLX_0, align 4
  %79 = call i32 @WREG32(i32 %78, i32 2097184)
  %80 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @goya_mmu_prepare(%struct.hl_device* %80, i32 %81)
  %83 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %84 = call i32 @goya_clear_sm_regs(%struct.hl_device* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %40
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @goya_memset_device_memory(%struct.hl_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @goya_mmu_prepare(%struct.hl_device*, i32) #1

declare dso_local i32 @goya_clear_sm_regs(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
