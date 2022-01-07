; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_time_event_send_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_time_event_send_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_time_event_data = type { i64, i32, i8*, %struct.ieee80211_vif* }
%struct.iwl_time_event_cmd = type { i32, i32 }
%struct.iwl_notification_wait = type { i32 }

@iwl_mvm_time_event_send_add.time_event_response = internal constant [1 x i32] [i32 128], align 4
@.str = private unnamed_addr constant [28 x i8] c"Add new TE, duration %d TU\0A\00", align 1
@TE_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@iwl_mvm_time_event_response = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't send TIME_EVENT_CMD: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_cmd*)* @iwl_mvm_time_event_send_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mvm_time_event_data* %2, %struct.iwl_time_event_cmd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %9 = alloca %struct.iwl_time_event_cmd*, align 8
  %10 = alloca %struct.iwl_notification_wait, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.iwl_mvm_time_event_data* %2, %struct.iwl_mvm_time_event_data** %8, align 8
  store %struct.iwl_time_event_cmd* %3, %struct.iwl_time_event_cmd** %9, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 3
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = load %struct.iwl_time_event_cmd*, %struct.iwl_time_event_cmd** %9, align 8
  %17 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @le32_to_cpu(i32 %18)
  %20 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TE_MAX, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %102

38:                                               ; preds = %4
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %40 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %40, i32 0, i32 3
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %41, align 8
  %42 = load %struct.iwl_time_event_cmd*, %struct.iwl_time_event_cmd** %9, align 8
  %43 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.iwl_time_event_cmd*, %struct.iwl_time_event_cmd** %9, align 8
  %49 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %55, i32 0, i32 1
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 2
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 1
  %65 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_mvm_time_event_send_add.time_event_response, i64 0, i64 0))
  %66 = load i32, i32* @iwl_mvm_time_event_response, align 4
  %67 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %68 = call i32 @iwl_init_notification_wait(i32* %64, %struct.iwl_notification_wait* %10, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_mvm_time_event_send_add.time_event_response, i64 0, i64 0), i32 %65, i32 %66, %struct.iwl_mvm_time_event_data* %67)
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %70 = load %struct.iwl_time_event_cmd*, %struct.iwl_time_event_cmd** %9, align 8
  %71 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %69, i32 128, i32 0, i32 8, %struct.iwl_time_event_cmd* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %38
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @IWL_ERR(%struct.iwl_mvm* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 1
  %80 = call i32 @iwl_remove_notification(i32* %79, %struct.iwl_notification_wait* %10)
  br label %90

81:                                               ; preds = %38
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 1
  %84 = call i32 @iwl_wait_notification(i32* %83, %struct.iwl_notification_wait* %10, i32 1)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @WARN_ON_ONCE(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 0
  %93 = call i32 @spin_lock_bh(i32* %92)
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %95 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %8, align 8
  %96 = call i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm* %94, %struct.iwl_mvm_time_event_data* %95)
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %90, %81
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %32
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_mvm_time_event_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_time_event_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
