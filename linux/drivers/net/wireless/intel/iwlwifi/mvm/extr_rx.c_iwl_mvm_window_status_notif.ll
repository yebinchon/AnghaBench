; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_window_status_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_window_status_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_ba_window_status_notif = type { i32*, i32*, i32*, i32* }
%struct.ieee80211_sta = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Received window status notification of wrong size (%u)\0A\00", align 1
@BA_WINDOW_STREAMS_MAX = common dso_local global i32 0, align 4
@BA_WINDOW_STATUS_VALID_MSK = common dso_local global i64 0, align 8
@BA_WINDOW_STATUS_TID_MSK = common dso_local global i64 0, align 8
@BA_WINDOW_STATUS_STA_ID_MSK = common dso_local global i64 0, align 8
@BA_WINDOW_STATUS_STA_ID_POS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_window_status_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_ba_window_status_notif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %16 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %17 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %16)
  store %struct.iwl_rx_packet* %17, %struct.iwl_rx_packet** %5, align 8
  %18 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.iwl_ba_window_status_notif*
  store %struct.iwl_ba_window_status_notif* %22, %struct.iwl_ba_window_status_notif** %6, align 8
  %23 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %24 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 32
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @WARN_ONCE(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %113

33:                                               ; preds = %2
  %34 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %108, %33
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BA_WINDOW_STREAMS_MAX, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %111

39:                                               ; preds = %35
  %40 = load %struct.iwl_ba_window_status_notif*, %struct.iwl_ba_window_status_notif** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_ba_window_status_notif, %struct.iwl_ba_window_status_notif* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @BA_WINDOW_STATUS_VALID_MSK, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %108

53:                                               ; preds = %39
  %54 = load %struct.iwl_ba_window_status_notif*, %struct.iwl_ba_window_status_notif** %6, align 8
  %55 = getelementptr inbounds %struct.iwl_ba_window_status_notif, %struct.iwl_ba_window_status_notif* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le16_to_cpu(i32 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %108

65:                                               ; preds = %53
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @BA_WINDOW_STATUS_TID_MSK, align 8
  %68 = and i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @BA_WINDOW_STATUS_STA_ID_MSK, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* @BA_WINDOW_STATUS_STA_ID_POS, align 8
  %73 = ashr i64 %71, %72
  store i64 %73, i64* %10, align 8
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.ieee80211_sta* @rcu_dereference(i32 %79)
  store %struct.ieee80211_sta* %80, %struct.ieee80211_sta** %9, align 8
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %82 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %108

85:                                               ; preds = %65
  %86 = load %struct.iwl_ba_window_status_notif*, %struct.iwl_ba_window_status_notif** %6, align 8
  %87 = getelementptr inbounds %struct.iwl_ba_window_status_notif, %struct.iwl_ba_window_status_notif* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le64_to_cpu(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.iwl_ba_window_status_notif*, %struct.iwl_ba_window_status_notif** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_ba_window_status_notif, %struct.iwl_ba_window_status_notif* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @ieee80211_mark_rx_ba_filtered_frames(%struct.ieee80211_sta* %102, i64 %103, i32 %104, i32 %105, i64 %106)
  br label %108

108:                                              ; preds = %85, %84, %64, %52
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %35

111:                                              ; preds = %35
  %112 = call i32 (...) @rcu_read_unlock()
  br label %113

113:                                              ; preds = %111, %32
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ieee80211_mark_rx_ba_filtered_frames(%struct.ieee80211_sta*, i64, i32, i32, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
