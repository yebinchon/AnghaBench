; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_ampdu_check_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_ampdu_check_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_ba = type { i32, i32, i32, i32 }
%struct.iwl_mvm_sta = type { %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i32 }

@FW_DBG_TRIGGER_BA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TX AGG START: MAC %pM tid %d ssn %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TX AGG STOP: MAC %pM tid %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"RX AGG START: MAC %pM tid %d ssn %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"RX AGG STOP: MAC %pM tid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i64, i64, i32)* @iwl_mvm_ampdu_check_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_ampdu_check_trigger(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %14 = alloca %struct.iwl_fw_dbg_trigger_ba*, align 8
  %15 = alloca %struct.iwl_mvm_sta*, align 8
  %16 = alloca %struct.iwl_mvm_tid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %20 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %19)
  %21 = load i32, i32* @FW_DBG_TRIGGER_BA, align 4
  %22 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %18, i32 %20, i32 %21)
  store %struct.iwl_fw_dbg_trigger_tlv* %22, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %23 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %24 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %93

26:                                               ; preds = %6
  %27 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.iwl_fw_dbg_trigger_ba*
  store %struct.iwl_fw_dbg_trigger_ba* %31, %struct.iwl_fw_dbg_trigger_ba** %14, align 8
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %92 [
    i32 129, label %33
    i32 128, label %55
    i32 131, label %67
    i32 130, label %80
  ]

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %35 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %34)
  store %struct.iwl_mvm_sta* %35, %struct.iwl_mvm_sta** %15, align 8
  %36 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %15, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %36, i32 0, i32 0
  %38 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %38, i64 %39
  store %struct.iwl_mvm_tid_data* %40, %struct.iwl_mvm_tid_data** %16, align 8
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %42 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %43 = load %struct.iwl_fw_dbg_trigger_ba*, %struct.iwl_fw_dbg_trigger_ba** %14, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_ba, %struct.iwl_fw_dbg_trigger_ba* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %16, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.iwl_mvm*, %struct.iwl_fw_dbg_trigger_tlv*, i32, i64, i8*, i32, i64, ...) @CHECK_BA_TRIGGER(%struct.iwl_mvm* %41, %struct.iwl_fw_dbg_trigger_tlv* %42, i32 %45, i64 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %50, i32 %53)
  br label %93

55:                                               ; preds = %26
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %57 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %58 = load %struct.iwl_fw_dbg_trigger_ba*, %struct.iwl_fw_dbg_trigger_ba** %14, align 8
  %59 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_ba, %struct.iwl_fw_dbg_trigger_ba* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (%struct.iwl_mvm*, %struct.iwl_fw_dbg_trigger_tlv*, i32, i64, i8*, i32, i64, ...) @CHECK_BA_TRIGGER(%struct.iwl_mvm* %56, %struct.iwl_fw_dbg_trigger_tlv* %57, i32 %60, i64 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65)
  br label %93

67:                                               ; preds = %26
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %69 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %70 = load %struct.iwl_fw_dbg_trigger_ba*, %struct.iwl_fw_dbg_trigger_ba** %14, align 8
  %71 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_ba, %struct.iwl_fw_dbg_trigger_ba* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 (%struct.iwl_mvm*, %struct.iwl_fw_dbg_trigger_tlv*, i32, i64, i8*, i32, i64, ...) @CHECK_BA_TRIGGER(%struct.iwl_mvm* %68, %struct.iwl_fw_dbg_trigger_tlv* %69, i32 %72, i64 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %76, i64 %77, i64 %78)
  br label %93

80:                                               ; preds = %26
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %82 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %13, align 8
  %83 = load %struct.iwl_fw_dbg_trigger_ba*, %struct.iwl_fw_dbg_trigger_ba** %14, align 8
  %84 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_ba, %struct.iwl_fw_dbg_trigger_ba* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %10, align 8
  %91 = call i32 (%struct.iwl_mvm*, %struct.iwl_fw_dbg_trigger_tlv*, i32, i64, i8*, i32, i64, ...) @CHECK_BA_TRIGGER(%struct.iwl_mvm* %81, %struct.iwl_fw_dbg_trigger_tlv* %82, i32 %85, i64 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %89, i64 %90)
  br label %93

92:                                               ; preds = %26
  br label %93

93:                                               ; preds = %25, %92, %80, %67, %55, %33
  ret void
}

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @CHECK_BA_TRIGGER(%struct.iwl_mvm*, %struct.iwl_fw_dbg_trigger_tlv*, i32, i64, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
