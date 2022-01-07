; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_enable_rfkill_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_enable_rfkill_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Enabling rfkill interrupt\0A\00", align 1
@CSR_INT_BIT_RF_KILL = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_MSIX_FH_INT_MASK_AD = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_RF_KILL = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_9000 = common dso_local global i64 0, align 8
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_enable_rfkill_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_enable_rfkill_int(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = load i32, i32* @CSR_INT_MASK, align 4
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iwl_write32(%struct.iwl_trans* %16, i32 %17, i32 %20)
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = load i32, i32* @CSR_MSIX_FH_INT_MASK_AD, align 4
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iwl_write32(%struct.iwl_trans* %23, i32 %24, i32 %27)
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %30 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_RF_KILL, align 4
  %31 = call i32 @iwl_enable_hw_int_msk_msix(%struct.iwl_trans* %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %12
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IWL_DEVICE_FAMILY_9000, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %42 = load i32, i32* @CSR_GP_CNTRL, align 4
  %43 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN, align 4
  %44 = call i32 @iwl_set_bit(%struct.iwl_trans* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %32
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_enable_hw_int_msk_msix(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
