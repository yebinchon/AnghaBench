; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64, %struct.goya_device* }
%struct.goya_device = type { i32, i32 }

@GOYA_PLDM_RESET_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@GOYA_RESET_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@DRAM_PHYS_BASE = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG = common dso_local global i32 0, align 4
@RESET_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Issued HARD reset command, going to wait %dms\0A\00", align 1
@DMA_MME_TPC_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Issued SOFT reset command, going to wait %dms\0A\00", align 1
@mmPSOC_GLOBAL_CONF_BTM_FSM = common dso_local global i32 0, align 4
@PSOC_GLOBAL_CONF_BTM_FSM_STATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Timeout while waiting for device to reset 0x%x\0A\00", align 1
@HW_CAP_DMA = common dso_local global i32 0, align 4
@HW_CAP_MME = common dso_local global i32 0, align 4
@HW_CAP_GOLDEN = common dso_local global i32 0, align 4
@HW_CAP_TPC = common dso_local global i32 0, align 4
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_SOFT_RESET = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_BOOT_SEQ_RE_START = common dso_local global i32 0, align 4
@PSOC_GLOBAL_CONF_BOOT_SEQ_RE_START_IND_SHIFT = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_SW_BTM_FSM = common dso_local global i32 0, align 4
@PSOC_GLOBAL_CONF_SW_BTM_FSM_CTRL_SHIFT = common dso_local global i32 0, align 4
@HW_CAP_CPU = common dso_local global i32 0, align 4
@HW_CAP_CPU_Q = common dso_local global i32 0, align 4
@HW_CAP_DDR_0 = common dso_local global i32 0, align 4
@HW_CAP_DDR_1 = common dso_local global i32 0, align 4
@HW_CAP_MMU = common dso_local global i32 0, align 4
@HW_CAP_TPC_MBIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Going to wait up to %ds for CPU boot loader\0A\00", align 1
@GOYA_CPU_TIMEOUT_USEC = common dso_local global i32 0, align 4
@mmPSOC_GLOBAL_CONF_WARM_REBOOT = common dso_local global i32 0, align 4
@CPU_BOOT_STATUS_DRAM_RDY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to wait for CPU boot loader\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32)* @goya_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_hw_fini(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.goya_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 2
  %11 = load %struct.goya_device*, %struct.goya_device** %10, align 8
  store %struct.goya_device* %11, %struct.goya_device** %5, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GOYA_PLDM_RESET_TIMEOUT_MSEC, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @GOYA_RESET_TIMEOUT_MSEC, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = load i32, i32* @DRAM_PHYS_BASE, align 4
  %26 = call i32 @goya_set_ddr_bar_base(%struct.hl_device* %24, i32 %25)
  %27 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %28 = call i32 @goya_disable_clk_rlx(%struct.hl_device* %27)
  %29 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %30 = call i32 @goya_set_pll_refclk(%struct.hl_device* %29)
  %31 = load i32, i32* @mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG, align 4
  %32 = load i32, i32* @RESET_ALL, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %48

39:                                               ; preds = %20
  %40 = load i32, i32* @mmPSOC_GLOBAL_CONF_SW_ALL_RST_CFG, align 4
  %41 = load i32, i32* @DMA_MME_TPC_RESET, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  %43 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %39, %23
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @msleep(i32 %49)
  %51 = load i32, i32* @mmPSOC_GLOBAL_CONF_BTM_FSM, align 4
  %52 = call i32 @RREG32(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @PSOC_GLOBAL_CONF_BTM_FSM_STATE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %48
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @HW_CAP_DMA, align 4
  %68 = load i32, i32* @HW_CAP_MME, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @HW_CAP_GOLDEN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @HW_CAP_TPC, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %76 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %80 = load i32, i32* @GOYA_ASYNC_EVENT_ID_SOFT_RESET, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  br label %148

82:                                               ; preds = %63
  %83 = load i32, i32* @mmPSOC_GLOBAL_CONF_BOOT_SEQ_RE_START, align 4
  %84 = load i32, i32* @PSOC_GLOBAL_CONF_BOOT_SEQ_RE_START_IND_SHIFT, align 4
  %85 = shl i32 1, %84
  %86 = call i32 @WREG32(i32 %83, i32 %85)
  %87 = load i32, i32* @mmPSOC_GLOBAL_CONF_SW_BTM_FSM, align 4
  %88 = load i32, i32* @PSOC_GLOBAL_CONF_SW_BTM_FSM_CTRL_SHIFT, align 4
  %89 = shl i32 10, %88
  %90 = call i32 @WREG32(i32 %87, i32 %89)
  %91 = load i32, i32* @HW_CAP_CPU, align 4
  %92 = load i32, i32* @HW_CAP_CPU_Q, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @HW_CAP_DDR_0, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @HW_CAP_DDR_1, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @HW_CAP_DMA, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @HW_CAP_MME, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @HW_CAP_MMU, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @HW_CAP_TPC_MBIST, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @HW_CAP_GOLDEN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @HW_CAP_TPC, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %112 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %116 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memset(i32 %117, i32 0, i32 4)
  %119 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %120 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %148, label %123

123:                                              ; preds = %82
  %124 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %125 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GOYA_CPU_TIMEOUT_USEC, align 4
  %128 = sdiv i32 %127, 1000
  %129 = sdiv i32 %128, 1000
  %130 = call i32 @dev_info(i32 %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %132 = load i32, i32* @mmPSOC_GLOBAL_CONF_WARM_REBOOT, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @CPU_BOOT_STATUS_DRAM_RDY, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* @GOYA_CPU_TIMEOUT_USEC, align 4
  %139 = call i32 @hl_poll_timeout(%struct.hl_device* %131, i32 %132, i32 %133, i32 %137, i32 10000, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %123
  %143 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %144 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %147

147:                                              ; preds = %142, %123
  br label %148

148:                                              ; preds = %66, %147, %82
  ret void
}

declare dso_local i32 @goya_set_ddr_bar_base(%struct.hl_device*, i32) #1

declare dso_local i32 @goya_disable_clk_rlx(%struct.hl_device*) #1

declare dso_local i32 @goya_set_pll_refclk(%struct.hl_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
