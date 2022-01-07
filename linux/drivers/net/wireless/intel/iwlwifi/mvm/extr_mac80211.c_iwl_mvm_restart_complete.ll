; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_restart_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_restart_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to update quotas after restart (%d)\0A\00", align 1
@ERROR_RECOVERY_END_OF_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_restart_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_restart_complete(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %12 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %11, i32 1, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @IWL_ERR(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %21 = load i32, i32* @ERROR_RECOVERY_END_OF_RECOVERY, align 4
  %22 = call i32 @iwl_mvm_send_recovery_cmd(%struct.iwl_mvm* %20, i32 %21)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %24 = call i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm* %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_send_recovery_cmd(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
