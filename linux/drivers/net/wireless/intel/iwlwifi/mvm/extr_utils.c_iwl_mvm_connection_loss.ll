; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_connection_loss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_connection_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_mlme = type { i64 }

@FW_DBG_TRIGGER_MLME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_connection_loss(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i8* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %8 = alloca %struct.iwl_fw_dbg_trigger_mlme*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %11)
  %13 = load i32, i32* @FW_DBG_TRIGGER_MLME, align 4
  %14 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %10, i32 %12, i32 %13)
  store %struct.iwl_fw_dbg_trigger_tlv* %14, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %15 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %16 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.iwl_fw_dbg_trigger_mlme*
  store %struct.iwl_fw_dbg_trigger_mlme* %23, %struct.iwl_fw_dbg_trigger_mlme** %8, align 8
  %24 = load %struct.iwl_fw_dbg_trigger_mlme*, %struct.iwl_fw_dbg_trigger_mlme** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_mlme, %struct.iwl_fw_dbg_trigger_mlme* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.iwl_fw_dbg_trigger_mlme*, %struct.iwl_fw_dbg_trigger_mlme** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_mlme, %struct.iwl_fw_dbg_trigger_mlme* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %41

35:                                               ; preds = %28, %18
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @iwl_fw_dbg_collect_trig(i32* %37, %struct.iwl_fw_dbg_trigger_tlv* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %34, %17
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %43 = call i32 @ieee80211_connection_loss(%struct.ieee80211_vif* %42)
  ret void
}

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i8*, i8*) #1

declare dso_local i32 @ieee80211_connection_loss(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
