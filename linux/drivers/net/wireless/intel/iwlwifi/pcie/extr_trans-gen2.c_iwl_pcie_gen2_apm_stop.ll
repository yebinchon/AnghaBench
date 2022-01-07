; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_pcie_gen2_apm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_pcie_gen2_apm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Stop card, put in low power state\0A\00", align 1
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@CSR_DBG_LINK_PWR_MGMT_REG = common dso_local global i32 0, align 4
@CSR_RESET_LINK_PWR_MGMT_DISABLED = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_PREPARE = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_ENABLE_PME = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_gen2_apm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_gen2_apm_stop(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %11, i32 0, i32 1
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %17 = call i32 @iwl_pcie_gen2_apm_init(%struct.iwl_trans* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = load i32, i32* @CSR_DBG_LINK_PWR_MGMT_REG, align 4
  %21 = load i32, i32* @CSR_RESET_LINK_PWR_MGMT_DISABLED, align 4
  %22 = call i32 @iwl_set_bit(%struct.iwl_trans* %19, i32 %20, i32 %21)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %25 = load i32, i32* @CSR_HW_IF_CONFIG_REG_PREPARE, align 4
  %26 = load i32, i32* @CSR_HW_IF_CONFIG_REG_ENABLE_PME, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @iwl_set_bit(%struct.iwl_trans* %23, i32 %24, i32 %27)
  %29 = call i32 @mdelay(i32 1)
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %31 = load i32, i32* @CSR_DBG_LINK_PWR_MGMT_REG, align 4
  %32 = load i32, i32* @CSR_RESET_LINK_PWR_MGMT_DISABLED, align 4
  %33 = call i32 @iwl_clear_bit(%struct.iwl_trans* %30, i32 %31, i32 %32)
  %34 = call i32 @mdelay(i32 5)
  br label %35

35:                                               ; preds = %18, %2
  %36 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %41 = call i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans* %40)
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %43 = call i32 @iwl_trans_sw_reset(%struct.iwl_trans* %42)
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %45 = load i32, i32* @CSR_GP_CNTRL, align 4
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = call i32 @iwl_clear_bit(%struct.iwl_trans* %44, i32 %45, i32 %53)
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_gen2_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_trans_sw_reset(%struct.iwl_trans*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
