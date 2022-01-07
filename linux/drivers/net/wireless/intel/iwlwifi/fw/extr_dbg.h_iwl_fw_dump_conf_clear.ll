; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fw_dump_conf_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fw_dump_conf_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FW_DBG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*)* @iwl_fw_dump_conf_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_dump_conf_clear(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %3 = load i32, i32* @FW_DBG_INVALID, align 4
  %4 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
