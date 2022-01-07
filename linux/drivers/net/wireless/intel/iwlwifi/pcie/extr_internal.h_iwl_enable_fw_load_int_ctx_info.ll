; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_enable_fw_load_int_ctx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_enable_fw_load_int_ctx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Enabling ALIVE interrupt only\0A\00", align 1
@CSR_INT_BIT_ALIVE = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_RX = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_ALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_enable_fw_load_int_ctx_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_enable_fw_load_int_ctx_info(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %14 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %19 = load i32, i32* @CSR_INT_MASK, align 4
  %20 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iwl_write32(%struct.iwl_trans* %18, i32 %19, i32 %22)
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_ALIVE, align 4
  %27 = call i32 @iwl_enable_hw_int_msk_msix(%struct.iwl_trans* %25, i32 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iwl_enable_fh_int_msk_msix(%struct.iwl_trans* %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %12
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_enable_hw_int_msk_msix(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_enable_fh_int_msk_msix(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
