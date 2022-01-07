; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h__iwl_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h__iwl_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@CSR_MSIX_FH_INT_MASK_AD = common dso_local global i32 0, align 4
@CSR_MSIX_HW_INT_MASK_AD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Disabled interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @_iwl_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_iwl_disable_interrupts(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 0
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = load i32, i32* @CSR_INT_MASK, align 4
  %17 = call i32 @iwl_write32(%struct.iwl_trans* %15, i32 %16, i32 0)
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %19 = load i32, i32* @CSR_INT, align 4
  %20 = call i32 @iwl_write32(%struct.iwl_trans* %18, i32 %19, i32 -1)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %22 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %23 = call i32 @iwl_write32(%struct.iwl_trans* %21, i32 %22, i32 -1)
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = load i32, i32* @CSR_MSIX_FH_INT_MASK_AD, align 4
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iwl_write32(%struct.iwl_trans* %25, i32 %26, i32 %29)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = load i32, i32* @CSR_MSIX_HW_INT_MASK_AD, align 4
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iwl_write32(%struct.iwl_trans* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %24, %14
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %39 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
