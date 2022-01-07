; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_add_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_add_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %8 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %7)
  store %struct.iwl_mvm_vif* %8, %struct.iwl_mvm_vif** %6, align 8
  %9 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = call i64 @iwl_mvm_sf_update(%struct.iwl_mvm* %21, %struct.ieee80211_vif* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iwl_mvm_binding_update(%struct.iwl_mvm* %29, %struct.ieee80211_vif* %30, i32 %33, i32 1)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %25, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @iwl_mvm_sf_update(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_binding_update(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
