; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_get_wowlan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_get_wowlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.cfg80211_wowlan = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iwl_wowlan_config_cmd = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@ENABLE_L3_FILTERING = common dso_local global i32 0, align 4
@ENABLE_NBNS_FILTERING = common dso_local global i32 0, align 4
@ENABLE_DHCP_FILTERING = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BEACON_MISS = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_LINK_CHANGE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_MAGIC_PACKET = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_GTK_REKEY_FAIL = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_EAP_IDENT_REQ = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_4WAY_HANDSHAKE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_PATTERN_MATCH = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_RF_KILL_DEASSERT = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_REMOTE_LINK_LOSS = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_REMOTE_SIGNATURE_TABLE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_REMOTE_WAKEUP_PACKET = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_RX_FRAME = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BCN_FILTERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.cfg80211_wowlan*, %struct.iwl_wowlan_config_cmd*, %struct.ieee80211_vif*, %struct.iwl_mvm_vif*, %struct.ieee80211_sta*)* @iwl_mvm_get_wowlan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_wowlan_config(%struct.iwl_mvm* %0, %struct.cfg80211_wowlan* %1, %struct.iwl_wowlan_config_cmd* %2, %struct.ieee80211_vif* %3, %struct.iwl_mvm_vif* %4, %struct.ieee80211_sta* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.cfg80211_wowlan*, align 8
  %10 = alloca %struct.iwl_wowlan_config_cmd*, align 8
  %11 = alloca %struct.ieee80211_vif*, align 8
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %9, align 8
  store %struct.iwl_wowlan_config_cmd* %2, %struct.iwl_wowlan_config_cmd** %10, align 8
  store %struct.ieee80211_vif* %3, %struct.ieee80211_vif** %11, align 8
  store %struct.iwl_mvm_vif* %4, %struct.iwl_mvm_vif** %12, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %13, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %17 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %16)
  store %struct.iwl_mvm_sta* %17, %struct.iwl_mvm_sta** %15, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %23 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ENABLE_L3_FILTERING, align 4
  %25 = load i32, i32* @ENABLE_NBNS_FILTERING, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ENABLE_DHCP_FILTERING, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %30 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %33 = call i32 @iwl_mvm_get_last_nonqos_seq(%struct.iwl_mvm* %31, %struct.ieee80211_vif* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %168

38:                                               ; preds = %6
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %42 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %15, align 8
  %44 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %45 = call i32 @iwl_mvm_set_wowlan_qos_seq(%struct.iwl_mvm_sta* %43, %struct.iwl_wowlan_config_cmd* %44)
  %46 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %47 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load i32, i32* @IWL_WOWLAN_WAKEUP_BEACON_MISS, align 4
  %52 = load i32, i32* @IWL_WOWLAN_WAKEUP_LINK_CHANGE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %56 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %50, %38
  %60 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %61 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* @IWL_WOWLAN_WAKEUP_MAGIC_PACKET, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %68 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %73 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* @IWL_WOWLAN_WAKEUP_GTK_REKEY_FAIL, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %80 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %85 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* @IWL_WOWLAN_WAKEUP_EAP_IDENT_REQ, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %92 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %97 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* @IWL_WOWLAN_WAKEUP_4WAY_HANDSHAKE, align 4
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %104 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %109 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* @IWL_WOWLAN_WAKEUP_PATTERN_MATCH, align 4
  %114 = call i32 @cpu_to_le32(i32 %113)
  %115 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %116 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %107
  %120 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %121 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i32, i32* @IWL_WOWLAN_WAKEUP_RF_KILL_DEASSERT, align 4
  %126 = call i32 @cpu_to_le32(i32 %125)
  %127 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %128 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124, %119
  %132 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %133 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load i32, i32* @IWL_WOWLAN_WAKEUP_REMOTE_LINK_LOSS, align 4
  %138 = load i32, i32* @IWL_WOWLAN_WAKEUP_REMOTE_SIGNATURE_TABLE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @IWL_WOWLAN_WAKEUP_REMOTE_WAKEUP_PACKET, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @IWL_WOWLAN_WAKEUP_LINK_CHANGE, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @cpu_to_le32(i32 %143)
  %145 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %146 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %136, %131
  %150 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %151 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load i32, i32* @IWL_WOWLAN_WAKEUP_BEACON_MISS, align 4
  %156 = load i32, i32* @IWL_WOWLAN_WAKEUP_LINK_CHANGE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @IWL_WOWLAN_WAKEUP_RX_FRAME, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @IWL_WOWLAN_WAKEUP_BCN_FILTERING, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @cpu_to_le32(i32 %161)
  %163 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %164 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %154, %149
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %167, %36
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_get_last_nonqos_seq(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_mvm_set_wowlan_qos_seq(%struct.iwl_mvm_sta*, %struct.iwl_wowlan_config_cmd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
