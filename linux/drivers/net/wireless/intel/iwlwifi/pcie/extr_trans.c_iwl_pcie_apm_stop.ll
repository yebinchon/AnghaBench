; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Stop card, put in low power state\0A\00", align 1
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_WAKE_ME = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@CSR_DBG_LINK_PWR_MGMT_REG = common dso_local global i32 0, align 4
@CSR_RESET_LINK_PWR_MGMT_DISABLED = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_PREPARE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_ENABLE_PME = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_apm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_apm_stop(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %2
  %10 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %17 = call i32 @iwl_pcie_apm_init(%struct.iwl_trans* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %28 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %29 = load i32, i32* @APMG_PCIDEV_STT_VAL_WAKE_ME, align 4
  %30 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %27, i32 %28, i32 %29)
  br label %56

31:                                               ; preds = %18
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %41 = load i32, i32* @CSR_DBG_LINK_PWR_MGMT_REG, align 4
  %42 = load i32, i32* @CSR_RESET_LINK_PWR_MGMT_DISABLED, align 4
  %43 = call i32 @iwl_set_bit(%struct.iwl_trans* %40, i32 %41, i32 %42)
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %45 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %46 = load i32, i32* @CSR_HW_IF_CONFIG_REG_PREPARE, align 4
  %47 = load i32, i32* @CSR_HW_IF_CONFIG_REG_ENABLE_PME, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @iwl_set_bit(%struct.iwl_trans* %44, i32 %45, i32 %48)
  %50 = call i32 @mdelay(i32 1)
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %52 = load i32, i32* @CSR_DBG_LINK_PWR_MGMT_REG, align 4
  %53 = load i32, i32* @CSR_RESET_LINK_PWR_MGMT_DISABLED, align 4
  %54 = call i32 @iwl_clear_bit(%struct.iwl_trans* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %39, %31
  br label %56

56:                                               ; preds = %55, %26
  %57 = call i32 @mdelay(i32 5)
  br label %58

58:                                               ; preds = %56, %2
  %59 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %60, i32 0, i32 2
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %64 = call i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans* %63)
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %66 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %73 = call i32 @iwl_pcie_apm_lp_xtal_enable(%struct.iwl_trans* %72)
  br label %88

74:                                               ; preds = %58
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %76 = call i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans* %75)
  %77 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %78 = load i32, i32* @CSR_GP_CNTRL, align 4
  %79 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %80 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = call i32 @iwl_clear_bit(%struct.iwl_trans* %77, i32 %78, i32 %86)
  br label %88

88:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_apm_lp_xtal_enable(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
