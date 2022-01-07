; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_sta_pm_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_sta_pm_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_mvm_pm_state_notification = type { i32, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@STA_NOTIFY_SLEEP = common dso_local global i32 0, align 4
@STA_NOTIFY_AWAKE = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sta_pm_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_mvm_pm_state_notification*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %11, %struct.iwl_rx_packet** %5, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_mvm_pm_state_notification*
  store %struct.iwl_mvm_pm_state_notification* %16, %struct.iwl_mvm_pm_state_notification** %6, align 8
  %17 = load %struct.iwl_mvm_pm_state_notification*, %struct.iwl_mvm_pm_state_notification** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_pm_state_notification, %struct.iwl_mvm_pm_state_notification* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 130
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.iwl_mvm_pm_state_notification*, %struct.iwl_mvm_pm_state_notification** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_pm_state_notification, %struct.iwl_mvm_pm_state_notification* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @ARRAY_SIZE(i32* %27)
  %29 = icmp uge i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %113

34:                                               ; preds = %2
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.iwl_mvm_pm_state_notification*, %struct.iwl_mvm_pm_state_notification** %6, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_pm_state_notification, %struct.iwl_mvm_pm_state_notification* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ieee80211_sta* @rcu_dereference(i32 %43)
  store %struct.ieee80211_sta* %44, %struct.ieee80211_sta** %7, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %46 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %45)
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = call i32 (...) @rcu_read_unlock()
  br label %113

51:                                               ; preds = %34
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %53 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %52)
  store %struct.iwl_mvm_sta* %53, %struct.iwl_mvm_sta** %8, align 8
  %54 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58, %51
  %67 = call i32 (...) @rcu_read_unlock()
  br label %113

68:                                               ; preds = %58
  %69 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @STA_NOTIFY_SLEEP, align 4
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @STA_NOTIFY_AWAKE, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %90 = call i32 @__iwl_mvm_mac_sta_notify(i32 %80, i32 %88, %struct.ieee80211_sta* %89)
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ieee80211_sta_ps_transition(%struct.ieee80211_sta* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %68
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.iwl_mvm_pm_state_notification*, %struct.iwl_mvm_pm_state_notification** %6, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_pm_state_notification, %struct.iwl_mvm_pm_state_notification* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %109 [
    i32 130, label %101
    i32 131, label %101
    i32 128, label %102
    i32 129, label %106
  ]

101:                                              ; preds = %97, %97
  br label %110

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %104 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %105 = call i32 @ieee80211_sta_uapsd_trigger(%struct.ieee80211_sta* %103, i32 %104)
  br label %110

106:                                              ; preds = %97
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %108 = call i32 @ieee80211_sta_pspoll(%struct.ieee80211_sta* %107)
  br label %110

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %106, %102, %101
  br label %111

111:                                              ; preds = %110, %94
  %112 = call i32 (...) @rcu_read_unlock()
  br label %113

113:                                              ; preds = %111, %66, %49, %33
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @__iwl_mvm_mac_sta_notify(i32, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_sta_ps_transition(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_sta_uapsd_trigger(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_sta_pspoll(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
