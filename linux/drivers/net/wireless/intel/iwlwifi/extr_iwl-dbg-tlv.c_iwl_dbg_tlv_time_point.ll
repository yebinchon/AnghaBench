; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_time_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_time_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%union.iwl_dbg_tlv_tp_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_dbg_tlv_time_point(%struct.iwl_fw_runtime* %0, i32 %1, %union.iwl_dbg_tlv_tp_data* %2) #0 {
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.iwl_dbg_tlv_tp_data*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.iwl_dbg_tlv_tp_data* %2, %union.iwl_dbg_tlv_tp_data** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
