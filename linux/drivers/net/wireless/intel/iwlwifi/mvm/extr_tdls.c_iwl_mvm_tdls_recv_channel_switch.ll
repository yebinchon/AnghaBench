; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_recv_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_recv_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_tdls_ch_sw_params = type { i64, i32, i32, i32, i32, i32, i32, %struct.ieee80211_sta*, i32 }
%struct.ieee80211_sta = type { i32, i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@WLAN_TDLS_CHANNEL_SWITCH_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"REQ\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RESP\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Received TDLS ch switch action %s from %pM status %d\0A\00", align 1
@WLAN_TDLS_CHANNEL_SWITCH_RESPONSE = common dso_local global i64 0, align 8
@IWL_MVM_TDLS_SW_REQ_SENT = common dso_local global i64 0, align 8
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@IWL_MVM_TDLS_SW_IDLE = common dso_local global i32 0, align 4
@TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH = common dso_local global i32 0, align 4
@TDLS_MOVE_CH = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_tdls_recv_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_tdls_ch_sw_params* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_tdls_ch_sw_params*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_tdls_ch_sw_params* %2, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %12)
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %7, align 8
  %14 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WLAN_TDLS_CHANNEL_SWITCH_REQUEST, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %10, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %26, i32 0, i32 7
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %27, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %30, i32 %33)
  %35 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WLAN_TDLS_CHANNEL_SWITCH_RESPONSE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %3
  %41 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %40
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IWL_MVM_TDLS_SW_REQ_SENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %45
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  %71 = call i32 @lockdep_is_held(i32* %70)
  %72 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %68, i32 %71)
  store %struct.ieee80211_sta* %72, %struct.ieee80211_sta** %11, align 8
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %74 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %74, i32 0, i32 7
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %75, align 8
  %77 = icmp eq %struct.ieee80211_sta* %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %59
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %80 = load i32, i32* @IWL_MVM_TDLS_SW_IDLE, align 4
  %81 = call i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %79, i32 %80)
  br label %127

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82, %52, %45, %40, %3
  %84 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @WLAN_TDLS_CHANNEL_SWITCH_REQUEST, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH, align 4
  br label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @TDLS_MOVE_CH, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %8, align 4
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %96 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %98, i32 0, i32 7
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %99, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %103, i32 0, i32 7
  %105 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %104, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ieee80211_tdls_ch_sw_params*, %struct.ieee80211_tdls_ch_sw_params** %6, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, %struct.ieee80211_tdls_ch_sw_params* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @iwl_mvm_tdls_config_channel_switch(%struct.iwl_mvm* %95, %struct.ieee80211_vif* %96, i32 %97, i32 %102, i32 %107, i32 0, i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %93, %78
  %128 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %129 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %131, %135
  %137 = mul nsw i32 %136, 1024
  %138 = sdiv i32 %137, 1000
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* @system_wq, align 4
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %141 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @msecs_to_jiffies(i32 %143)
  %145 = call i32 @mod_delayed_work(i32 %139, i32* %142, i32 %144)
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm*, i8*, i8*, i32, i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_tdls_config_channel_switch(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
