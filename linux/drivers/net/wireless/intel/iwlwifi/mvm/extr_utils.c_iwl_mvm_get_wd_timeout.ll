; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_get_wd_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_get_wd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.iwl_mvm = type { %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_txq_timer = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IWL_DEF_WD_TIMEOUT = common dso_local global i32 0, align 4
@FW_DBG_TRIGGER_TXQ_TIMERS = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_STA_PM_NOTIF = common dso_local global i32 0, align 4
@IWL_WATCHDOG_DISABLED = common dso_local global i32 0, align 4
@iwlmvm_mod_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %11 = alloca %struct.iwl_fw_dbg_trigger_txq_timer*, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @IWL_DEF_WD_TIMEOUT, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %17, %15
  %28 = phi i32 [ %16, %15 ], [ %26, %17 ]
  store i32 %28, i32* %12, align 4
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* @FW_DBG_TRIGGER_TXQ_TIMERS, align 4
  %33 = call i32 @iwl_fw_dbg_trigger_enabled(%struct.TYPE_11__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %27
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* @IWL_UCODE_TLV_CAPA_STA_PM_NOTIF, align 4
  %41 = call i64 @fw_has_capa(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %45 = icmp ne %struct.ieee80211_vif* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 133
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @IWL_WATCHDOG_DISABLED, align 4
  store i32 %52, i32* %5, align 4
  br label %143

53:                                               ; preds = %46, %43, %35
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @IWL_WATCHDOG_DISABLED, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %5, align 4
  br label %143

62:                                               ; preds = %27
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i32, i32* @FW_DBG_TRIGGER_TXQ_TIMERS, align 4
  %67 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_get_trigger(%struct.TYPE_11__* %65, i32 %66)
  store %struct.iwl_fw_dbg_trigger_tlv* %67, %struct.iwl_fw_dbg_trigger_tlv** %10, align 8
  %68 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %10, align 8
  %69 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to %struct.iwl_fw_dbg_trigger_txq_timer*
  store %struct.iwl_fw_dbg_trigger_txq_timer* %72, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %77 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %143

80:                                               ; preds = %62
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %85 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  store i32 %87, i32* %5, align 4
  br label %143

88:                                               ; preds = %80
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %90 = icmp ne %struct.ieee80211_vif* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @WARN_ON(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %143

97:                                               ; preds = %88
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %99 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %98)
  switch i32 %99, label %132 [
    i32 134, label %100
    i32 128, label %105
    i32 133, label %110
    i32 131, label %115
    i32 129, label %120
    i32 130, label %125
    i32 132, label %130
  ]

100:                                              ; preds = %97
  %101 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %102 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %5, align 4
  br label %143

105:                                              ; preds = %97
  %106 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %107 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  store i32 %109, i32* %5, align 4
  br label %143

110:                                              ; preds = %97
  %111 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %112 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  store i32 %114, i32* %5, align 4
  br label %143

115:                                              ; preds = %97
  %116 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %117 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  store i32 %119, i32* %5, align 4
  br label %143

120:                                              ; preds = %97
  %121 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %122 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  store i32 %124, i32* %5, align 4
  br label %143

125:                                              ; preds = %97
  %126 = load %struct.iwl_fw_dbg_trigger_txq_timer*, %struct.iwl_fw_dbg_trigger_txq_timer** %11, align 8
  %127 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_txq_timer, %struct.iwl_fw_dbg_trigger_txq_timer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  store i32 %129, i32* %5, align 4
  br label %143

130:                                              ; preds = %97
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %5, align 4
  br label %143

132:                                              ; preds = %97
  %133 = call i64 @WARN_ON(i32 1)
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %132, %130, %125, %120, %115, %110, %105, %100, %95, %83, %75, %60, %51
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @iwl_fw_dbg_trigger_enabled(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_get_trigger(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
