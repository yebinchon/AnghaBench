; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_update_tkip_key(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.iwl_mvm_sta*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %25 = icmp ne %struct.ieee80211_sta* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %6
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  store i32 %32, i32* %15, align 4
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %37 = call %struct.iwl_mvm_sta* @iwl_mvm_get_key_sta(%struct.iwl_mvm* %34, %struct.ieee80211_vif* %35, %struct.ieee80211_sta* %36)
  store %struct.iwl_mvm_sta* %37, %struct.iwl_mvm_sta** %13, align 8
  %38 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %39 = icmp ne %struct.iwl_mvm_sta* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %60

45:                                               ; preds = %31
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %47 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @CMD_ASYNC, align 4
  %55 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %46, i32 %49, %struct.ieee80211_key_conf* %50, i32 %51, i32 %52, i32* %53, i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %45, %44
  %61 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_get_key_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm*, i32, %struct.ieee80211_key_conf*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
