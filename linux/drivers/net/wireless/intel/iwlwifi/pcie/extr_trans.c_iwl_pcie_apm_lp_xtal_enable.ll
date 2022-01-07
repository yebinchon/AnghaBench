; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_lp_xtal_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_lp_xtal_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_XTAL_ON = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_PERSIST_DIS = common dso_local global i32 0, align 4
@SHR_APMG_XTAL_CFG_REG = common dso_local global i32 0, align 4
@SHR_APMG_XTAL_CFG_XTAL_ON_REQ = common dso_local global i32 0, align 4
@SHR_APMG_GP1_REG = common dso_local global i32 0, align 4
@SHR_APMG_GP1_WF_XTAL_LP_EN = common dso_local global i32 0, align 4
@SHR_APMG_GP1_CHICKEN_BIT_SELECT = common dso_local global i32 0, align 4
@SHR_APMG_DL_CFG_REG = common dso_local global i32 0, align 4
@SHR_APMG_DL_CFG_DL_CLOCK_POWER_UP = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_PERSIST_MODE = common dso_local global i32 0, align 4
@CSR_MONITOR_CFG_REG = common dso_local global i32 0, align 4
@CSR_MONITOR_XTAL_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_apm_lp_xtal_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_apm_lp_xtal_enable(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = load i32, i32* @CSR_GP_CNTRL, align 4
  %9 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_XTAL_ON, align 4
  %10 = call i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans* %7, i32 %8, i32 %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = call i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans* %11)
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @iwl_finish_nic_init(%struct.iwl_trans* %13, %struct.TYPE_4__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %23 = load i32, i32* @CSR_GP_CNTRL, align 4
  %24 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_XTAL_ON, align 4
  %25 = call i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans* %22, i32 %23, i32 %24)
  br label %94

26:                                               ; preds = %1
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %29 = load i32, i32* @APMG_PCIDEV_STT_VAL_PERSIST_DIS, align 4
  %30 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %27, i32 %28, i32 %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = load i32, i32* @SHR_APMG_XTAL_CFG_REG, align 4
  %33 = call i32 @iwl_trans_pcie_read_shr(%struct.iwl_trans* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %35 = load i32, i32* @SHR_APMG_XTAL_CFG_REG, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SHR_APMG_XTAL_CFG_XTAL_ON_REQ, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @iwl_trans_pcie_write_shr(%struct.iwl_trans* %34, i32 %35, i32 %38)
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %41 = call i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans* %40)
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %43 = load i32, i32* @SHR_APMG_GP1_REG, align 4
  %44 = call i32 @iwl_trans_pcie_read_shr(%struct.iwl_trans* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %46 = load i32, i32* @SHR_APMG_GP1_REG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SHR_APMG_GP1_WF_XTAL_LP_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SHR_APMG_GP1_CHICKEN_BIT_SELECT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @iwl_trans_pcie_write_shr(%struct.iwl_trans* %45, i32 %46, i32 %51)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %54 = load i32, i32* @SHR_APMG_DL_CFG_REG, align 4
  %55 = call i32 @iwl_trans_pcie_read_shr(%struct.iwl_trans* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %57 = load i32, i32* @SHR_APMG_DL_CFG_REG, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SHR_APMG_DL_CFG_DL_CLOCK_POWER_UP, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @iwl_trans_pcie_write_shr(%struct.iwl_trans* %56, i32 %57, i32 %61)
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %64 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %65 = load i32, i32* @CSR_HW_IF_CONFIG_REG_PERSIST_MODE, align 4
  %66 = call i32 @iwl_set_bit(%struct.iwl_trans* %63, i32 %64, i32 %65)
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %68 = load i32, i32* @CSR_GP_CNTRL, align 4
  %69 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %70 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = call i32 @iwl_clear_bit(%struct.iwl_trans* %67, i32 %68, i32 %76)
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %79 = load i32, i32* @CSR_MONITOR_CFG_REG, align 4
  %80 = load i32, i32* @CSR_MONITOR_XTAL_RESOURCES, align 4
  %81 = call i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans* %78, i32 %79, i32 %80)
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %83 = load i32, i32* @CSR_GP_CNTRL, align 4
  %84 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_XTAL_ON, align 4
  %85 = call i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans* %82, i32 %83, i32 %84)
  %86 = call i32 @udelay(i32 10)
  %87 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %88 = load i32, i32* @SHR_APMG_XTAL_CFG_REG, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SHR_APMG_XTAL_CFG_XTAL_ON_REQ, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = call i32 @iwl_trans_pcie_write_shr(%struct.iwl_trans* %87, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @__iwl_trans_pcie_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_finish_nic_init(%struct.iwl_trans*, %struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__iwl_trans_pcie_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_trans_pcie_read_shr(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_pcie_write_shr(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
