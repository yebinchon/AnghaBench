; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_get_wakeup_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_get_wakeup_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_wowlan_status = type { i32 }
%struct.iwl_mvm = type { i32 }

@OFFLOADS_QUERY_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to query offload statistics (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_wowlan_status* (%struct.iwl_mvm*)* @iwl_mvm_get_wakeup_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_wowlan_status* @iwl_mvm_get_wakeup_status(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %5 = load i32, i32* @OFFLOADS_QUERY_CMD, align 4
  %6 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %4, i32 %5, i32 0, i32 0, i32* null)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @IWL_ERR(%struct.iwl_mvm* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %15 = call %struct.iwl_wowlan_status* @iwl_mvm_send_wowlan_get_status(%struct.iwl_mvm* %14)
  ret %struct.iwl_wowlan_status* %15
}

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local %struct.iwl_wowlan_status* @iwl_mvm_send_wowlan_get_status(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
