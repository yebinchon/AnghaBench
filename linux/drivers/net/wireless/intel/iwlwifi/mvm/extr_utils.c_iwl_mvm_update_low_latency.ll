; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_update_low_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_update_low_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %10, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %19 = call i32 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif* %20, i32 %21, i32 %22)
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %25 = call i32 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

30:                                               ; preds = %4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm* %31, i32 %32, i32 %35)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %38 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %37, i32 0, i32* null)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %30
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %45 = call i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm* %44)
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %47 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %41, %29
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif*) #1

declare dso_local i32 @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif*, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
