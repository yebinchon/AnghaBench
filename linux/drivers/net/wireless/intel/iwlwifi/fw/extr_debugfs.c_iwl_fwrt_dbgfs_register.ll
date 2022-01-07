; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_debugfs.c_iwl_fwrt_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_debugfs.c_iwl_fwrt_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }

@iwl_fw_timestamp_marker_wk = common dso_local global i32 0, align 4
@timestamp_marker = common dso_local global i32 0, align 4
@send_hcmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_fwrt_dbgfs_register(%struct.iwl_fw_runtime* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @iwl_fw_timestamp_marker_wk, align 4
  %9 = call i32 @INIT_DELAYED_WORK(i32* %7, i32 %8)
  %10 = load i32, i32* @timestamp_marker, align 4
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call i32 @FWRT_DEBUGFS_ADD_FILE(i32 %10, %struct.dentry* %11, i32 128)
  %13 = load i32, i32* @send_hcmd, align 4
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @FWRT_DEBUGFS_ADD_FILE(i32 %13, %struct.dentry* %14, i32 128)
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @FWRT_DEBUGFS_ADD_FILE(i32, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
