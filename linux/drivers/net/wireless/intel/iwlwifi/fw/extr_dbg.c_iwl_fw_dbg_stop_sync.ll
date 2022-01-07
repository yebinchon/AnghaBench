; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_stop_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_stop_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }

@IWL_FW_RUNTIME_DUMP_WK_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_fw_dbg_stop_sync(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %4 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @iwl_dbg_tlv_del_timers(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %16, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IWL_FW_RUNTIME_DUMP_WK_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @iwl_fw_dbg_collect_sync(%struct.iwl_fw_runtime* %13, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %21 = call i32 @iwl_fw_dbg_stop_restart_recording(%struct.iwl_fw_runtime* %20, i32* null, i32 1)
  ret void
}

declare dso_local i32 @iwl_dbg_tlv_del_timers(i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_sync(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @iwl_fw_dbg_stop_restart_recording(%struct.iwl_fw_runtime*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
