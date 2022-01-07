; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h__iwl_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h__iwl_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Enabling interrupts\0A\00", align 1
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_INI_SET_MASK = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_MSIX_FH_INT_MASK_AD = common dso_local global i32 0, align 4
@CSR_MSIX_HW_INT_MASK_AD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @_iwl_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_iwl_enable_interrupts(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %9, i32 0, i32 0
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @CSR_INI_SET_MASK, align 4
  %18 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %21 = load i32, i32* @CSR_INT_MASK, align 4
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iwl_write32(%struct.iwl_trans* %20, i32 %21, i32 %24)
  br label %51

26:                                               ; preds = %1
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %38 = load i32, i32* @CSR_MSIX_FH_INT_MASK_AD, align 4
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @iwl_write32(%struct.iwl_trans* %37, i32 %38, i32 %42)
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %45 = load i32, i32* @CSR_MSIX_HW_INT_MASK_AD, align 4
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @iwl_write32(%struct.iwl_trans* %44, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %26, %16
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
