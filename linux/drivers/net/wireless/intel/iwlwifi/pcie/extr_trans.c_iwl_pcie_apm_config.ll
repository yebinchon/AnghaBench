; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32 }
%struct.iwl_trans_pcie = type { i32 }

@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPM_L1 = common dso_local global i32 0, align 4
@CSR_GIO_REG = common dso_local global i32 0, align 4
@CSR_GIO_REG_VAL_L0S_ENABLED = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPM_L0S = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_LTR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"L1 %sabled - LTR %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_apm_config(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %12 = call i32 @pcie_capability_read_word(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %19 = load i32, i32* @CSR_GIO_REG, align 4
  %20 = load i32, i32* @CSR_GIO_REG_VAL_L0S_ENABLED, align 4
  %21 = call i32 @iwl_set_bit(%struct.iwl_trans* %18, i32 %19, i32 %20)
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = load i32, i32* @CSR_GIO_REG, align 4
  %25 = load i32, i32* @CSR_GIO_REG_VAL_L0S_ENABLED, align 4
  %26 = call i32 @iwl_clear_bit(%struct.iwl_trans* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L0S, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %40 = call i32 @pcie_capability_read_word(i32 %38, i32 %39, i32* %5)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PCI_EXP_DEVCTL2_LTR_EN, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %54 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @IWL_DEBUG_POWER(%struct.iwl_trans* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %58)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_trans*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
