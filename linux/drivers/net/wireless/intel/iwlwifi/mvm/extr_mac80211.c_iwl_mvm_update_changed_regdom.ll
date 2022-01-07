; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_update_changed_regdom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_update_changed_regdom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_regdomain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_update_changed_regdom(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = call i32 @iwl_mvm_is_lar_supported(%struct.iwl_mvm* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %11 = call %struct.ieee80211_regdomain* @iwl_mvm_get_current_regdomain(%struct.iwl_mvm* %10, i32* %3)
  store %struct.ieee80211_regdomain* %11, %struct.ieee80211_regdomain** %4, align 8
  %12 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %13 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %25 = call i32 @regulatory_set_wiphy_regd(i32 %23, %struct.ieee80211_regdomain* %24)
  br label %26

26:                                               ; preds = %18, %15
  %27 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %28 = call i32 @kfree(%struct.ieee80211_regdomain* %27)
  br label %29

29:                                               ; preds = %8, %26, %9
  ret void
}

declare dso_local i32 @iwl_mvm_is_lar_supported(%struct.iwl_mvm*) #1

declare dso_local %struct.ieee80211_regdomain* @iwl_mvm_get_current_regdomain(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @regulatory_set_wiphy_regd(i32, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
