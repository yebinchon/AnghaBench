; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c__iwl_trans_pcie_gen2_stop_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c__iwl_trans_pcie_gen2_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DEVICE_ENABLED bit was set and is now cleared\0A\00", align 1
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@STATUS_SYNC_HCMD_ACTIVE = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_iwl_trans_pcie_gen2_stop_device(%struct.iwl_trans* %0) #0 {
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
  br label %85

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
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %30 = call i32 @iwl_pcie_gen2_tx_stop(%struct.iwl_trans* %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = call i32 @iwl_pcie_rx_stop(%struct.iwl_trans* %31)
  br label %33

33:                                               ; preds = %26, %14
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %35 = call i32 @iwl_pcie_ctxt_info_free_paging(%struct.iwl_trans* %34)
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %45 = call i32 @iwl_pcie_ctxt_info_gen3_free(%struct.iwl_trans* %44)
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %48 = call i32 @iwl_pcie_ctxt_info_free(%struct.iwl_trans* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %51 = load i32, i32* @CSR_GP_CNTRL, align 4
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %53 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = call i32 @iwl_clear_bit(%struct.iwl_trans* %50, i32 %51, i32 %59)
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %62 = call i32 @iwl_pcie_gen2_apm_stop(%struct.iwl_trans* %61, i32 0)
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %64 = call i32 @iwl_trans_sw_reset(%struct.iwl_trans* %63)
  %65 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %66 = call i32 @iwl_pcie_conf_msix_hw(%struct.iwl_trans_pcie* %65)
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %68 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %67)
  %69 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %71 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %74 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %75 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %79 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %78, i32 0, i32 0
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %82 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %81)
  %83 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %84 = call i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %83)
  br label %85

85:                                               ; preds = %49, %13
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_pcie_gen2_tx_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_ctxt_info_free_paging(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_ctxt_info_gen3_free(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_ctxt_info_free(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_pcie_gen2_apm_stop(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_sw_reset(%struct.iwl_trans*) #1

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
