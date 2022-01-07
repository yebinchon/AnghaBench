; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_start_p2p_roc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_start_p2p_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.iwl_mvm_time_event_data }
%struct.iwl_mvm_time_event_data = type { i64 }
%struct.iwl_time_event_cmd = type { i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"P2P_DEVICE remain on channel already running\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@IWL_MVM_ROC_TE_TYPE_NORMAL = common dso_local global i32 0, align 4
@IWL_MVM_ROC_TE_TYPE_MGMT_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Got an invalid ROC type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TE_V2_FRAG_ENDLESS = common dso_local global i32 0, align 4
@TE_V2_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@TE_V2_NOTIF_HOST_EVENT_END = common dso_local global i32 0, align 4
@TE_V2_START_IMMEDIATELY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_start_p2p_roc(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %12 = alloca %struct.iwl_time_event_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %10, align 8
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 2
  store %struct.iwl_mvm_time_event_data* %16, %struct.iwl_mvm_time_event_data** %11, align 8
  %17 = bitcast %struct.iwl_time_event_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 72, i1 false)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %27 = call i32 @IWL_WARN(%struct.iwl_mvm* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %88

30:                                               ; preds = %4
  %31 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 9
  store i8* %32, i8** %33, align 8
  %34 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @FW_CMD_ID_AND_COLOR(i32 %36, i32 %39)
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 8
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %52 [
    i32 128, label %44
    i32 129, label %48
  ]

44:                                               ; preds = %30
  %45 = load i32, i32* @IWL_MVM_ROC_TE_TYPE_NORMAL, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 7
  store i8* %46, i8** %47, align 8
  br label %56

48:                                               ; preds = %30
  %49 = load i32, i32* @IWL_MVM_ROC_TE_TYPE_MGMT_TX, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 7
  store i8* %50, i8** %51, align 8
  br label %56

52:                                               ; preds = %30
  %53 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %88

56:                                               ; preds = %48, %44
  %57 = call i8* @cpu_to_le32(i32 0)
  %58 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 6
  store i8* %57, i8** %58, align 8
  %59 = call i8* @cpu_to_le32(i32 1)
  %60 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @MSEC_TO_TU(i32 %61)
  %63 = sdiv i32 %62, 50
  %64 = load i32, i32* @TE_V2_FRAG_ENDLESS, align 4
  %65 = call i32 @min(i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sdiv i32 %67, 2
  %69 = call i32 @MSEC_TO_TU(i32 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @MSEC_TO_TU(i32 %72)
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @TE_V2_NOTIF_HOST_EVENT_START, align 4
  %78 = load i32, i32* @TE_V2_NOTIF_HOST_EVENT_END, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @TE_V2_START_IMMEDIATELY, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @cpu_to_le16(i32 %81)
  %83 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %85 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %86 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %87 = call i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %84, %struct.ieee80211_vif* %85, %struct.iwl_mvm_time_event_data* %86, %struct.iwl_time_event_cmd* %12)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %56, %52, %25
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @MSEC_TO_TU(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
