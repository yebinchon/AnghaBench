; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_op_mode_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_op_mode_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_trans_pcie_op_mode_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_op_mode_leave(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = call i32 @iwl_pcie_apm_stop(%struct.iwl_trans* %11, i32 1)
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %14 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = call i32 @iwl_pcie_disable_ict(%struct.iwl_trans* %15)
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %21 = call i32 @iwl_pcie_synchronize_irqs(%struct.iwl_trans* %20)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_apm_stop(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_pcie_synchronize_irqs(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
