; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_p2p_bcast_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_p2p_bcast_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm_int_sta }
%struct.iwl_mvm_int_sta = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_add_p2p_bcast_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mvm_int_sta*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %6, align 8
  %11 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %11, i32 0, i32 0
  store %struct.iwl_mvm_int_sta* %12, %struct.iwl_mvm_int_sta** %7, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = call i32 @iwl_mvm_alloc_bcast_sta(%struct.iwl_mvm* %16, %struct.ieee80211_vif* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = call i32 @iwl_mvm_send_add_bcast_sta(%struct.iwl_mvm* %24, %struct.ieee80211_vif* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %31 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %7, align 8
  %32 = call i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm* %30, %struct.iwl_mvm_int_sta* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_alloc_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_send_add_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
