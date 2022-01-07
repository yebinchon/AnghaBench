; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Init card's basic functions\0A\00", align 1
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@CSR_GIO_CHICKEN_BITS = common dso_local global i32 0, align 4
@CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER = common dso_local global i32 0, align 4
@CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX = common dso_local global i32 0, align 4
@CSR_DBG_HPET_MEM_REG = common dso_local global i32 0, align 4
@CSR_DBG_HPET_MEM_REG_VAL = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A = common dso_local global i32 0, align 4
@CSR_ANA_PLL_CFG = common dso_local global i32 0, align 4
@CSR50_ANA_PLL_CFG_VAL = common dso_local global i32 0, align 4
@OSC_CLK = common dso_local global i32 0, align 4
@OSC_CLK_FORCE_CONTROL = common dso_local global i32 0, align 4
@APMG_CLK_EN_REG = common dso_local global i32 0, align 4
@APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_L1_ACT_DIS = common dso_local global i32 0, align 4
@APMG_RTC_INT_STT_REG = common dso_local global i32 0, align 4
@APMG_RTC_INT_STT_RFKILL = common dso_local global i32 0, align 4
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_apm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_apm_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %17 = load i32, i32* @CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER, align 4
  %18 = call i32 @iwl_set_bit(%struct.iwl_trans* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %21 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %22 = load i32, i32* @CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX, align 4
  %23 = call i32 @iwl_set_bit(%struct.iwl_trans* %20, i32 %21, i32 %22)
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = load i32, i32* @CSR_DBG_HPET_MEM_REG, align 4
  %26 = load i32, i32* @CSR_DBG_HPET_MEM_REG_VAL, align 4
  %27 = call i32 @iwl_set_bit(%struct.iwl_trans* %24, i32 %25, i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %30 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A, align 4
  %31 = call i32 @iwl_set_bit(%struct.iwl_trans* %28, i32 %29, i32 %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = call i32 @iwl_pcie_apm_config(%struct.iwl_trans* %32)
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %44 = load i32, i32* @CSR_ANA_PLL_CFG, align 4
  %45 = load i32, i32* @CSR50_ANA_PLL_CFG_VAL, align 4
  %46 = call i32 @iwl_set_bit(%struct.iwl_trans* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %19
  %48 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @iwl_finish_nic_init(%struct.iwl_trans* %48, %struct.TYPE_6__* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %107

57:                                               ; preds = %47
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %57
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %66 = load i32, i32* @OSC_CLK, align 4
  %67 = call i32 @iwl_read_prph(%struct.iwl_trans* %65, i32 %66)
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %69 = load i32, i32* @OSC_CLK, align 4
  %70 = call i32 @iwl_read_prph(%struct.iwl_trans* %68, i32 %69)
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %72 = load i32, i32* @OSC_CLK, align 4
  %73 = load i32, i32* @OSC_CLK_FORCE_CONTROL, align 4
  %74 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %71, i32 %72, i32 %73)
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %76 = load i32, i32* @OSC_CLK, align 4
  %77 = call i32 @iwl_read_prph(%struct.iwl_trans* %75, i32 %76)
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %79 = load i32, i32* @OSC_CLK, align 4
  %80 = call i32 @iwl_read_prph(%struct.iwl_trans* %78, i32 %79)
  br label %81

81:                                               ; preds = %64, %57
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %81
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %90 = load i32, i32* @APMG_CLK_EN_REG, align 4
  %91 = load i32, i32* @APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %92 = call i32 @iwl_write_prph(%struct.iwl_trans* %89, i32 %90, i32 %91)
  %93 = call i32 @udelay(i32 20)
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %95 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %96 = load i32, i32* @APMG_PCIDEV_STT_VAL_L1_ACT_DIS, align 4
  %97 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %94, i32 %95, i32 %96)
  %98 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %99 = load i32, i32* @APMG_RTC_INT_STT_REG, align 4
  %100 = load i32, i32* @APMG_RTC_INT_STT_RFKILL, align 4
  %101 = call i32 @iwl_write_prph(%struct.iwl_trans* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %88, %81
  %103 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %105 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %55
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_apm_config(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_finish_nic_init(%struct.iwl_trans*, %struct.TYPE_6__*) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
