; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c__iwl_trans_pcie_stop_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c__iwl_trans_pcie_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DEVICE_ENABLED bit was set and is now cleared\0A\00", align 1
@APMG_CLK_DIS_REG = common dso_local global i32 0, align 4
@APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@STATUS_SYNC_HCMD_ACTIVE = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @_iwl_trans_pcie_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_iwl_trans_pcie_stop_device(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %82

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %18 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %17)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = call i32 @iwl_pcie_disable_ict(%struct.iwl_trans* %19)
  %21 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %22, i32 0, i32 0
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %14
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %30 = call i32 @iwl_pcie_tx_stop(%struct.iwl_trans* %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = call i32 @iwl_pcie_rx_stop(%struct.iwl_trans* %31)
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %26
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %41 = load i32, i32* @APMG_CLK_DIS_REG, align 4
  %42 = load i32, i32* @APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %43 = call i32 @iwl_write_prph(%struct.iwl_trans* %40, i32 %41, i32 %42)
  %44 = call i32 @udelay(i32 5)
  br label %45

45:                                               ; preds = %39, %26
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %48 = load i32, i32* @CSR_GP_CNTRL, align 4
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %50 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = call i32 @iwl_clear_bit(%struct.iwl_trans* %47, i32 %48, i32 %56)
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %59 = call i32 @iwl_pcie_apm_stop(%struct.iwl_trans* %58, i32 0)
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %61 = call i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans* %60)
  %62 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %63 = call i32 @iwl_pcie_conf_msix_hw(%struct.iwl_trans_pcie* %62)
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %65 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %64)
  %66 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %68 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %67, i32 0, i32 0
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %72 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %71, i32 0, i32 0
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %76 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %79 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %78)
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %81 = call i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %80)
  br label %82

82:                                               ; preds = %46, %13
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_pcie_tx_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_pcie_apm_stop(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_conf_msix_hw(%struct.iwl_trans_pcie*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
