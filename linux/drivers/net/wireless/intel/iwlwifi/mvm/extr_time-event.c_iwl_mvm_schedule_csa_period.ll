; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_schedule_csa_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_schedule_csa_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.iwl_mvm_time_event_data }
%struct.iwl_mvm_time_event_data = type { i64, i64 }
%struct.iwl_time_event_cmd = type { i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@TE_CHANNEL_SWITCH_PERIOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"CS period is already scheduled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@TE_V2_FRAG_NONE = common dso_local global i32 0, align 4
@TE_V2_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@TE_V2_ABSENCE = common dso_local global i32 0, align 4
@TE_V2_START_IMMEDIATELY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_schedule_csa_period(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %12 = alloca %struct.iwl_time_event_cmd, align 8
  %13 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %15 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %14)
  store %struct.iwl_mvm_vif* %15, %struct.iwl_mvm_vif** %10, align 8
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 2
  store %struct.iwl_mvm_time_event_data* %17, %struct.iwl_mvm_time_event_data** %11, align 8
  %18 = bitcast %struct.iwl_time_event_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 64, i1 false)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 1
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @TE_CHANNEL_SWITCH_PERIOD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %41 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %97

44:                                               ; preds = %26
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %47 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %48 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %45, %struct.iwl_mvm_vif* %46, %struct.iwl_mvm_time_event_data* %47)
  br label %49

49:                                               ; preds = %44, %4
  %50 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 8
  store i8* %51, i8** %52, align 8
  %53 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @FW_CMD_ID_AND_COLOR(i32 %55, i32 %58)
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 7
  store i8* %60, i8** %61, align 8
  %62 = load i64, i64* @TE_CHANNEL_SWITCH_PERIOD, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 6
  store i8* %64, i8** %65, align 8
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 5
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @TE_V2_FRAG_NONE, align 4
  %71 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = call i8* @cpu_to_le32(i32 1)
  %78 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @TE_V2_NOTIF_HOST_EVENT_START, align 4
  %80 = load i32, i32* @TE_V2_ABSENCE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @cpu_to_le16(i32 %81)
  %83 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %49
  %87 = load i32, i32* @TE_V2_START_IMMEDIATELY, align 4
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %49
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %95 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %96 = call i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %93, %struct.ieee80211_vif* %94, %struct.iwl_mvm_time_event_data* %95, %struct.iwl_time_event_cmd* %12)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %92, %39
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.iwl_mvm_time_event_data*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
