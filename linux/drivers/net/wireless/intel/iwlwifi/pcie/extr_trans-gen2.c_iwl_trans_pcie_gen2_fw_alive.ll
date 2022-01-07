; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_trans_pcie_gen2_fw_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans-gen2.c_iwl_trans_pcie_gen2_fw_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_gen2_fw_alive(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %5, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call i32 @iwl_pcie_reset_ict(%struct.iwl_trans* %8)
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memset(i32 %16, i32 0, i32 4)
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = call i32 @iwl_pcie_ctxt_info_free(%struct.iwl_trans* %18)
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %21 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %20)
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = call i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans* %25)
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_reset_ict(%struct.iwl_trans*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_ctxt_info_free(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_pcie_check_hw_rf_kill(%struct.iwl_trans*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
