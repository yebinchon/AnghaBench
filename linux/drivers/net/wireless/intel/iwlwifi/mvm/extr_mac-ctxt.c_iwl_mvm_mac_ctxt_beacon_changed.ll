; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_beacon_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_beacon_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.sk_buff = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = call %struct.sk_buff* @ieee80211_beacon_get_template(i32 %25, %struct.ieee80211_vif* %26, i32* null)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %19
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @iwl_mvm_mac_ctxt_send_beacon(%struct.iwl_mvm* %34, %struct.ieee80211_vif* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @dev_kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get_template(i32, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
