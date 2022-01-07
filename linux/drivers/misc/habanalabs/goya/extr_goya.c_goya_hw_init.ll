; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Starting initialization of H/W\0A\00", align 1
@mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG = common dso_local global i32 0, align 4
@mmHW_STATE = common dso_local global i32 0, align 4
@HL_DEVICE_HW_STATE_DIRTY = common dso_local global i32 0, align 4
@GOYA_CPU_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to initialize CPU\0A\00", align 1
@DRAM_PHYS_BASE = common dso_local global i64 0, align 8
@MMU_PAGE_TABLES_ADDR = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to map DDR bar to MMU page tables\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_hw_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 1
  store %struct.asic_fixed_properties* %8, %struct.asic_fixed_properties** %4, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @mmHW_STATE, align 4
  %16 = load i32, i32* @HL_DEVICE_HW_STATE_DIRTY, align 4
  %17 = call i32 @WREG32(i32 %15, i32 %16)
  %18 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %19 = load i32, i32* @GOYA_CPU_TIMEOUT_USEC, align 4
  %20 = call i32 @goya_init_cpu(%struct.hl_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %1
  %30 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %31 = call i32 @goya_tpc_mbist_workaround(%struct.hl_device* %30)
  %32 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %33 = call i32 @goya_init_golden_registers(%struct.hl_device* %32)
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = load i64, i64* @DRAM_PHYS_BASE, align 8
  %36 = load i32, i32* @MMU_PAGE_TABLES_ADDR, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %39 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 1
  %43 = xor i64 %42, -1
  %44 = and i64 %37, %43
  %45 = add i64 %35, %44
  %46 = call i64 @goya_set_ddr_bar_base(%struct.hl_device* %34, i64 %45)
  %47 = load i64, i64* @U64_MAX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %29
  %50 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %88

56:                                               ; preds = %29
  %57 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %58 = call i32 @goya_mmu_init(%struct.hl_device* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %56
  %64 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %65 = call i32 @goya_init_security(%struct.hl_device* %64)
  %66 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %67 = call i32 @goya_init_dma_qmans(%struct.hl_device* %66)
  %68 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %69 = call i32 @goya_init_mme_qmans(%struct.hl_device* %68)
  %70 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %71 = call i32 @goya_init_tpc_qmans(%struct.hl_device* %70)
  %72 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %73 = call i32 @goya_enable_timestamp(%struct.hl_device* %72)
  %74 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %75 = call i32 @goya_enable_msix(%struct.hl_device* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %82

79:                                               ; preds = %63
  %80 = load i32, i32* @mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG, align 4
  %81 = call i32 @RREG32(i32 %80)
  store i32 %81, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %88

82:                                               ; preds = %78
  %83 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %84 = call i32 @goya_disable_internal_queues(%struct.hl_device* %83)
  %85 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %86 = call i32 @goya_disable_external_queues(%struct.hl_device* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %79, %61, %49, %23
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @goya_init_cpu(%struct.hl_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @goya_tpc_mbist_workaround(%struct.hl_device*) #1

declare dso_local i32 @goya_init_golden_registers(%struct.hl_device*) #1

declare dso_local i64 @goya_set_ddr_bar_base(%struct.hl_device*, i64) #1

declare dso_local i32 @goya_mmu_init(%struct.hl_device*) #1

declare dso_local i32 @goya_init_security(%struct.hl_device*) #1

declare dso_local i32 @goya_init_dma_qmans(%struct.hl_device*) #1

declare dso_local i32 @goya_init_mme_qmans(%struct.hl_device*) #1

declare dso_local i32 @goya_init_tpc_qmans(%struct.hl_device*) #1

declare dso_local i32 @goya_enable_timestamp(%struct.hl_device*) #1

declare dso_local i32 @goya_enable_msix(%struct.hl_device*) #1

declare dso_local i32 @goya_disable_internal_queues(%struct.hl_device*) #1

declare dso_local i32 @goya_disable_external_queues(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
