; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_pre_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_pre_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_channel_switch = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pre CSA to freq %d\0A\00", align 1
@FW_DBG_TRIGGER_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Another CSA is already in progress\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Previous CSA countdown didn't complete\00", align 1
@IWL_MAX_CSA_BLOCK_TX = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*)* @iwl_mvm_pre_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_pre_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %9, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %21 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 4
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %29 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %28)
  %30 = load i32, i32* @FW_DBG_TRIGGER_CHANNEL_SWITCH, align 4
  %31 = call i32 @iwl_fw_dbg_trigger_simple_stop(i32* %27, i32 %29, i32 %30)
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %151 [
    i32 129, label %35
    i32 128, label %93
  ]

35:                                               ; preds = %3
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 0
  %41 = call i32 @lockdep_is_held(i32* %40)
  %42 = call %struct.ieee80211_vif* @rcu_dereference_protected(i32 %38, i32 %41)
  store %struct.ieee80211_vif* %42, %struct.ieee80211_vif** %8, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %44 = icmp ne %struct.ieee80211_vif* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %35
  %51 = phi i1 [ false, %35 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ONCE(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %163

58:                                               ; preds = %50
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 0
  %64 = call i32 @lockdep_is_held(i32* %63)
  %65 = call %struct.ieee80211_vif* @rcu_dereference_protected(i32 %61, i32 %64)
  %66 = icmp ne %struct.ieee80211_vif* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %163

70:                                               ; preds = %58
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %75 = call i32 @rcu_assign_pointer(i32 %73, %struct.ieee80211_vif* %74)
  %76 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @WARN_ONCE(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %163

84:                                               ; preds = %70
  %85 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  br label %152

93:                                               ; preds = %3
  %94 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %93
  %99 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %106, %110
  %112 = load i32, i32* @IWL_MAX_CSA_BLOCK_TX, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %103, %98
  %115 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %115, i32 0, i32 5
  %117 = load i32, i32* @IWL_MAX_CSA_BLOCK_TX, align 4
  %118 = call i32 @msecs_to_jiffies(i32 %117)
  %119 = call i32 @schedule_delayed_work(i32* %116, i32 %118)
  br label %120

120:                                              ; preds = %114, %103
  br label %121

121:                                              ; preds = %120, %93
  %122 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* @IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD, align 4
  %127 = call i32 @fw_has_capa(i32* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %121
  %130 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %132 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %133 = call i32 @iwl_mvm_old_pre_chan_sw_sta(%struct.iwl_mvm* %130, %struct.ieee80211_vif* %131, %struct.ieee80211_channel_switch* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %163

137:                                              ; preds = %129
  br label %143

138:                                              ; preds = %121
  %139 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %141 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %142 = call i32 @iwl_mvm_schedule_client_csa(%struct.iwl_mvm* %139, %struct.ieee80211_vif* %140, %struct.ieee80211_channel_switch* %141)
  br label %143

143:                                              ; preds = %138, %137
  %144 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %145 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %148 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %149, i32 0, i32 3
  store i32 0, i32* %150, align 4
  br label %152

151:                                              ; preds = %3
  br label %152

152:                                              ; preds = %151, %143, %84
  %153 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %153, i32 0, i32 4
  store i32 1, i32* %154, align 4
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %156 = call i32 @iwl_mvm_power_update_ps(%struct.iwl_mvm* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %163

160:                                              ; preds = %152
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %162 = call i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm* %161)
  br label %163

163:                                              ; preds = %160, %159, %136, %81, %67, %55
  %164 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %165 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i32, i32* %10, align 4
  ret i32 %167
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_fw_dbg_trigger_simple_stop(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_vif* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_old_pre_chan_sw_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*) #1

declare dso_local i32 @iwl_mvm_schedule_client_csa(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*) #1

declare dso_local i32 @iwl_mvm_power_update_ps(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
