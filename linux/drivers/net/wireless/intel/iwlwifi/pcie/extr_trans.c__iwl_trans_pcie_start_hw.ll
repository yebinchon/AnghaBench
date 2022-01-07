; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c__iwl_trans_pcie_start_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c__iwl_trans_pcie_start_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error while preparing HW: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @_iwl_trans_pcie_start_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_iwl_trans_pcie_start_hw(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %4, align 8
  %8 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %8, i32 0, i32 2
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = call i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @IWL_ERR(%struct.iwl_trans* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = call i32 @iwl_trans_pcie_clear_persistence_bit(%struct.iwl_trans* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %20
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = call i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans* %28)
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %31 = call i32 @iwl_pcie_apm_init(%struct.iwl_trans* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %27
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %38 = call i32 @iwl_pcie_init_msix(%struct.iwl_trans_pcie* %37)
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %40 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %39)
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %46 = call i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %34, %25, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_pcie_prepare_card_hw(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_trans_pcie_clear_persistence_bit(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_trans_pcie_sw_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_apm_init(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_init_msix(%struct.iwl_trans_pcie*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
