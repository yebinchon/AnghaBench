; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_disable_tx_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_disable_tx_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %9 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %8)
  store %struct.iwl_mvm_sta* %9, %struct.iwl_mvm_sta** %7, align 8
  %10 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_bh(i32* %20)
  br label %39

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ieee80211_sta_block_awake(i32 %28, %struct.ieee80211_sta* %29, i32 %30)
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm* %32, %struct.iwl_mvm_sta* %33, i32 %34)
  %36 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %39

39:                                               ; preds = %22, %18
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_sta_block_awake(i32, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
