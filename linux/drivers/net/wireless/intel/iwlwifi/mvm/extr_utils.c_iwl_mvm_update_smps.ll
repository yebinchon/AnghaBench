; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_update_smps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_update_smps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm_vif = type { i32* }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4
@NUM_IWL_MVM_SMPS_REQ = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_update_smps(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %16 = call i32 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm* %15)
  %17 = call i32 @num_of_ant(i32 %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %31)
  store %struct.iwl_mvm_vif* %32, %struct.iwl_mvm_vif** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %73, %30
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @NUM_IWL_MVM_SMPS_REQ, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %76

58:                                               ; preds = %44
  %59 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %40

76:                                               ; preds = %55, %40
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ieee80211_request_smps(%struct.ieee80211_vif* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %19
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_request_smps(%struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
