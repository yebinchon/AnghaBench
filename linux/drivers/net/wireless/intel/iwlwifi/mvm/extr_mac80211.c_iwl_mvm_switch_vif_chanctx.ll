; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_switch_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_switch_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif_chanctx_switch = type { i32 }
%struct.iwl_mvm = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif_chanctx_switch*, i32, i32)* @iwl_mvm_switch_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_switch_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif_chanctx_switch* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif_chanctx_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif_chanctx_switch* %1, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %12)
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %29 [
    i32 128, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %19
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %23 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  %24 = call i32 @iwl_mvm_switch_vif_chanctx_swap(%struct.iwl_mvm* %22, %struct.ieee80211_vif_chanctx_switch* %23)
  store i32 %24, i32* %11, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %27 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  %28 = call i32 @iwl_mvm_switch_vif_chanctx_reassign(%struct.iwl_mvm* %26, %struct.ieee80211_vif_chanctx_switch* %27)
  store i32 %28, i32* %11, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %25, %21
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %16
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_switch_vif_chanctx_swap(%struct.iwl_mvm*, %struct.ieee80211_vif_chanctx_switch*) #1

declare dso_local i32 @iwl_mvm_switch_vif_chanctx_reassign(%struct.iwl_mvm*, %struct.ieee80211_vif_chanctx_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
