; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.cfg80211_pmsr_request* }
%struct.cfg80211_pmsr_request = type { i32 }
%struct.iwl_tof_range_abort_cmd = type { i32 }

@TOF_RANGE_ABORT_CMD = common dso_local global i32 0, align 4
@LOCATION_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to abort FTM process\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_ftm_abort(%struct.iwl_mvm* %0, %struct.cfg80211_pmsr_request* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.cfg80211_pmsr_request*, align 8
  %5 = alloca %struct.iwl_tof_range_abort_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.cfg80211_pmsr_request* %1, %struct.cfg80211_pmsr_request** %4, align 8
  %6 = getelementptr inbounds %struct.iwl_tof_range_abort_cmd, %struct.iwl_tof_range_abort_cmd* %5, i32 0, i32 0
  %7 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %4, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %16, align 8
  %18 = icmp ne %struct.cfg80211_pmsr_request* %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = load i32, i32* @TOF_RANGE_ABORT_CMD, align 4
  %23 = load i32, i32* @LOCATION_GROUP, align 4
  %24 = call i32 @iwl_cmd_id(i32 %22, i32 %23, i32 0)
  %25 = call i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %21, i32 %24, i32 0, i32 4, %struct.iwl_tof_range_abort_cmd* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = call i32 @IWL_ERR(%struct.iwl_mvm* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %19, %27, %20
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tof_range_abort_cmd*) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
