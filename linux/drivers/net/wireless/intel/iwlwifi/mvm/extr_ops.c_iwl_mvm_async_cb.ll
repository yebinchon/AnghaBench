; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_async_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_async_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_mvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)* @iwl_mvm_async_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_async_cb(%struct.iwl_op_mode* %0, %struct.iwl_device_cmd* %1) #0 {
  %3 = alloca %struct.iwl_op_mode*, align 8
  %4 = alloca %struct.iwl_device_cmd*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %3, align 8
  store %struct.iwl_device_cmd* %1, %struct.iwl_device_cmd** %4, align 8
  %6 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %3, align 8
  %7 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %6)
  store %struct.iwl_mvm* %7, %struct.iwl_mvm** %5, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iwl_trans_block_txq_ptrs(i32 %10, i32 0)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local i32 @iwl_trans_block_txq_ptrs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
