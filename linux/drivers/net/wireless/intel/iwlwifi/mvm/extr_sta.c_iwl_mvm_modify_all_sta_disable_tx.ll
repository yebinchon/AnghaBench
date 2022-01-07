; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_modify_all_sta_disable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_modify_all_sta_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_4__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i64 }

@IWL_UCODE_TLV_API_STA_TYPE = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_modify_all_sta_disable_tx(%struct.iwl_mvm* %0, %struct.iwl_mvm_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %56, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %13
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 1
  %30 = call i32 @lockdep_is_held(i32* %29)
  %31 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %27, i32 %30)
  store %struct.ieee80211_sta* %31, %struct.ieee80211_sta** %7, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %33 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %56

36:                                               ; preds = %20
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %38 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %37)
  store %struct.iwl_mvm_sta* %38, %struct.iwl_mvm_sta** %8, align 8
  %39 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @FW_CMD_ID_AND_COLOR(i32 %44, i32 %47)
  %49 = icmp ne i64 %41, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %56

51:                                               ; preds = %36
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm* %52, %struct.ieee80211_sta* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %50, %35
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %13

59:                                               ; preds = %13
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %65 = call i32 @fw_has_api(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %99

68:                                               ; preds = %59
  %69 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %77 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %78 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %78, i32 0, i32 1
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @iwl_mvm_int_sta_modify_disable_tx(%struct.iwl_mvm* %76, %struct.iwl_mvm_vif* %77, %struct.TYPE_4__* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %82
  %86 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %94 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %95 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %95, i32 0, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @iwl_mvm_int_sta_modify_disable_tx(%struct.iwl_mvm* %93, %struct.iwl_mvm_vif* %94, %struct.TYPE_4__* %96, i32 %97)
  br label %99

99:                                               ; preds = %67, %92, %85, %82
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_int_sta_modify_disable_tx(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
