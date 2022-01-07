; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_csa_noa_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_csa_noa_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"CSA NOA started\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"CSA NOA started too early\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_csa_noa_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_csa_noa_start(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.ieee80211_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ieee80211_vif* @rcu_dereference(i32 %7)
  store %struct.ieee80211_vif* %8, %struct.ieee80211_vif** %3, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %10 = icmp ne %struct.ieee80211_vif* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %34

17:                                               ; preds = %11
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %21 = call i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %25 = call i32 @IWL_WARN(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %28 = call i32 @ieee80211_csa_finish(%struct.ieee80211_vif* %27)
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RCU_INIT_POINTER(i32 %32, i32* null)
  br label %36

34:                                               ; preds = %23, %16
  %35 = call i32 (...) @rcu_read_unlock()
  br label %36

36:                                               ; preds = %34, %26
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @rcu_dereference(i32) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @ieee80211_csa_finish(%struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
