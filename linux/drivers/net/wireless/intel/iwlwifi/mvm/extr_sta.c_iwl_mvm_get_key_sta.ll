; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_get_key_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_get_key_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_sta = type { i32 }
%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_vif = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_mvm_sta* (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwl_mvm_get_key_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_mvm_sta* @iwl_mvm_get_key_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.iwl_mvm_sta*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %8, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %13 = icmp ne %struct.ieee80211_sta* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %16 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %15)
  store %struct.iwl_mvm_sta* %16, %struct.iwl_mvm_sta** %4, align 8
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 0
  %41 = call i32 @lockdep_is_held(i32* %40)
  %42 = call %struct.ieee80211_sta* @rcu_dereference_check(i32 %38, i32 %41)
  store %struct.ieee80211_sta* %42, %struct.ieee80211_sta** %7, align 8
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %44 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  store %struct.iwl_mvm_sta* null, %struct.iwl_mvm_sta** %4, align 8
  br label %51

47:                                               ; preds = %29
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %49 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %48)
  store %struct.iwl_mvm_sta* %49, %struct.iwl_mvm_sta** %4, align 8
  br label %51

50:                                               ; preds = %23, %17
  store %struct.iwl_mvm_sta* null, %struct.iwl_mvm_sta** %4, align 8
  br label %51

51:                                               ; preds = %50, %47, %46, %14
  %52 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %4, align 8
  ret %struct.iwl_mvm_sta* %52
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_check(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
