; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_protect_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_protect_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.iwl_mvm_time_event_data }
%struct.iwl_mvm_time_event_data = type { i64, i32, i64 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_time_event_cmd = type { i32, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@TIME_EVENT_NOTIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"We have enough time in the current TE: %u\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"extend 0x%x: only %u ms left\0A\00", align 1
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@TE_BSS_STA_AGGRESSIVE_ASSOC = common dso_local global i32 0, align 4
@TE_V2_FRAG_NONE = common dso_local global i32 0, align 4
@TE_V2_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@TE_V2_NOTIF_HOST_EVENT_END = common dso_local global i32 0, align 4
@TE_V2_START_IMMEDIATELY = common dso_local global i32 0, align 4
@iwl_mvm_te_notif = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to add TE to protect session\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to protect session until TE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_protect_session(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_mvm_vif*, align 8
  %14 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %15 = alloca [1 x i32], align 4
  %16 = alloca %struct.iwl_notification_wait, align 4
  %17 = alloca %struct.iwl_time_event_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %19 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %18)
  store %struct.iwl_mvm_vif* %19, %struct.iwl_mvm_vif** %13, align 8
  %20 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %20, i32 0, i32 2
  store %struct.iwl_mvm_time_event_data* %21, %struct.iwl_mvm_time_event_data** %14, align 8
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %23 = load i32, i32* @TIME_EVENT_NOTIFICATION, align 4
  store i32 %23, i32* %22, align 4
  %24 = bitcast %struct.iwl_time_event_cmd* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 72, i1 false)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 1
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %6
  %33 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @TU_TO_EXP_TIME(i32 %36)
  %38 = call i64 @time_after(i64 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %42 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @jiffies, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @jiffies_to_msecs(i64 %46)
  %48 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TE(%struct.iwl_mvm* %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %143

49:                                               ; preds = %32, %6
  %50 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %56 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @jiffies, align 8
  %63 = sub nsw i64 %61, %62
  %64 = call i32 @jiffies_to_msecs(i64 %63)
  %65 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TE(%struct.iwl_mvm* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %64)
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %68 = call i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm* %66, %struct.ieee80211_vif* %67)
  br label %69

69:                                               ; preds = %54, %49
  %70 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 9
  store i8* %71, i8** %72, align 8
  %73 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @FW_CMD_ID_AND_COLOR(i32 %75, i32 %78)
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 8
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @TE_BSS_STA_AGGRESSIVE_ASSOC, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 7
  store i8* %83, i8** %84, align 8
  %85 = call i8* @cpu_to_le32(i32 0)
  %86 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 6
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @TE_V2_FRAG_NONE, align 4
  %88 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 5
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 4
  store i8* %90, i8** %91, align 8
  %92 = call i8* @cpu_to_le32(i32 1)
  %93 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 3
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  %97 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* @TE_V2_NOTIF_HOST_EVENT_START, align 4
  %99 = load i32, i32* @TE_V2_NOTIF_HOST_EVENT_END, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TE_V2_START_IMMEDIATELY, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @cpu_to_le16(i32 %102)
  %104 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %17, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %69
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %109 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %110 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %111 = call i64 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %108, %struct.ieee80211_vif* %109, %struct.iwl_mvm_time_event_data* %110, %struct.iwl_time_event_cmd* %17)
  br label %143

112:                                              ; preds = %69
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %114 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %113, i32 0, i32 0
  %115 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %116 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %117 = call i32 @ARRAY_SIZE(i32* %116)
  %118 = load i32, i32* @iwl_mvm_te_notif, align 4
  %119 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %120 = call i32 @iwl_init_notification_wait(i32* %114, %struct.iwl_notification_wait* %16, i32* %115, i32 %117, i32 %118, %struct.iwl_mvm_time_event_data* %119)
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %123 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %14, align 8
  %124 = call i64 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %121, %struct.ieee80211_vif* %122, %struct.iwl_mvm_time_event_data* %123, %struct.iwl_time_event_cmd* %17)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %128 = call i32 @IWL_ERR(%struct.iwl_mvm* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %129, i32 0, i32 0
  %131 = call i32 @iwl_remove_notification(i32* %130, %struct.iwl_notification_wait* %16)
  br label %143

132:                                              ; preds = %112
  %133 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %133, i32 0, i32 0
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @TU_TO_JIFFIES(i32 %135)
  %137 = call i64 @iwl_wait_notification(i32* %134, %struct.iwl_notification_wait* %16, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %141 = call i32 @IWL_ERR(%struct.iwl_mvm* %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %132
  br label %143

143:                                              ; preds = %40, %107, %142, %126
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @TU_TO_EXP_TIME(i32) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @iwl_mvm_time_event_send_add(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_cmd*) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_mvm_time_event_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i64 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @TU_TO_JIFFIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
