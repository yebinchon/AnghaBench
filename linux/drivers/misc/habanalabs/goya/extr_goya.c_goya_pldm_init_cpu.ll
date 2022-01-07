; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_pldm_init_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_pldm_init_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmCPU_CA53_CFG_ARM_RST_CONTROL = common dso_local global i32 0, align 4
@CPU_RESET_ASSERT = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_UNIT_RST_N = common dso_local global i32 0, align 4
@CA53_RESET = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_UBOOT_MAGIC = common dso_local global i32 0, align 4
@KMD_MSG_FIT_RDY = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_WARM_REBOOT = common dso_local global i32 0, align 4
@CPU_BOOT_STATUS_NA = common dso_local global i32 0, align 4
@mmCPU_CA53_CFG_RST_ADDR_LSB_0 = common dso_local global i32 0, align 4
@SRAM_BASE_ADDR = common dso_local global i64 0, align 8
@UBOOT_FW_OFFSET = common dso_local global i64 0, align 8
@mmCPU_CA53_CFG_RST_ADDR_MSB_0 = common dso_local global i32 0, align 4
@CPU_RESET_CORE0_DEASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_pldm_init_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_pldm_init_cpu(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = call i32 @goya_init_golden_registers(%struct.hl_device* %7)
  %9 = load i32, i32* @mmCPU_CA53_CFG_ARM_RST_CONTROL, align 4
  %10 = load i32, i32* @CPU_RESET_ASSERT, align 4
  %11 = call i32 @WREG32(i32 %9, i32 %10)
  %12 = load i32, i32* @mmCPU_CA53_CFG_ARM_RST_CONTROL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @mmPSOC_GLOBAL_CONF_UNIT_RST_N, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @mmPSOC_GLOBAL_CONF_UNIT_RST_N, align 4
  %17 = load i32, i32* @CA53_RESET, align 4
  %18 = call i32 @WREG32(i32 %16, i32 %17)
  %19 = load i32, i32* @mmPSOC_GLOBAL_CONF_UNIT_RST_N, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @mmPSOC_GLOBAL_CONF_UNIT_RST_N, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @WREG32(i32 %21, i32 %22)
  %24 = load i32, i32* @mmPSOC_GLOBAL_CONF_UNIT_RST_N, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %27 = call i32 @goya_push_uboot_to_device(%struct.hl_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %1
  %33 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %34 = call i32 @goya_push_linux_to_device(%struct.hl_device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %32
  %40 = load i32, i32* @mmPSOC_GLOBAL_CONF_UBOOT_MAGIC, align 4
  %41 = load i32, i32* @KMD_MSG_FIT_RDY, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  %43 = load i32, i32* @mmPSOC_GLOBAL_CONF_WARM_REBOOT, align 4
  %44 = load i32, i32* @CPU_BOOT_STATUS_NA, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @mmCPU_CA53_CFG_RST_ADDR_LSB_0, align 4
  %47 = load i64, i64* @SRAM_BASE_ADDR, align 8
  %48 = load i64, i64* @UBOOT_FW_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @lower_32_bits(i64 %49)
  %51 = call i32 @WREG32(i32 %46, i32 %50)
  %52 = load i32, i32* @mmCPU_CA53_CFG_RST_ADDR_MSB_0, align 4
  %53 = load i64, i64* @SRAM_BASE_ADDR, align 8
  %54 = load i64, i64* @UBOOT_FW_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @upper_32_bits(i64 %55)
  %57 = call i32 @WREG32(i32 %52, i32 %56)
  %58 = load i32, i32* @mmCPU_CA53_CFG_ARM_RST_CONTROL, align 4
  %59 = load i32, i32* @CPU_RESET_CORE0_DEASSERT, align 4
  %60 = call i32 @WREG32(i32 %58, i32 %59)
  %61 = load i32, i32* @mmCPU_CA53_CFG_ARM_RST_CONTROL, align 4
  %62 = call i32 @RREG32(i32 %61)
  store i32 %62, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %39, %37, %30
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @goya_init_golden_registers(%struct.hl_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @goya_push_uboot_to_device(%struct.hl_device*) #1

declare dso_local i32 @goya_push_linux_to_device(%struct.hl_device*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
