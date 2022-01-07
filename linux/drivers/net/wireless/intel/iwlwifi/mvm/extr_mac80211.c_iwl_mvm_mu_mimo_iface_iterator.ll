; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mu_mimo_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mu_mimo_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.iwl_mu_group_mgmt_notif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_mu_mimo_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mu_mimo_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mu_group_mgmt_notif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.iwl_mu_group_mgmt_notif*
  store %struct.iwl_mu_group_mgmt_notif* %14, %struct.iwl_mu_group_mgmt_notif** %7, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = load %struct.iwl_mu_group_mgmt_notif*, %struct.iwl_mu_group_mgmt_notif** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_mu_group_mgmt_notif, %struct.iwl_mu_group_mgmt_notif* %16, i32 0, i32 1
  %18 = load %struct.iwl_mu_group_mgmt_notif*, %struct.iwl_mu_group_mgmt_notif** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mu_group_mgmt_notif, %struct.iwl_mu_group_mgmt_notif* %18, i32 0, i32 0
  %20 = call i32 @ieee80211_update_mu_groups(%struct.ieee80211_vif* %15, i32* %17, i32* %19)
  br label %21

21:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @ieee80211_update_mu_groups(%struct.ieee80211_vif*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
