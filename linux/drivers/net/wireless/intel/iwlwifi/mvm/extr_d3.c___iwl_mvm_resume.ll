; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c___iwl_mvm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c___iwl_mvm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, %struct.ieee80211_vif*, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.ieee80211_vif = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_D0I3_END_FIRST = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@iwl_dump_desc_assert = common dso_local global i32 0, align 4
@IWL_D3_STATUS_ALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Device was reset during suspend\0A\00", align 1
@D0I3_END_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to send D0I3_END_CMD first (%d)\0A\00", align 1
@IWL_MVM_SCAN_NETDETECT = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_d3_disconnect_iter = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_HW_RESTART_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @__iwl_mvm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iwl_mvm_resume(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 7
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* @IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG, align 4
  %17 = call i32 @fw_has_capa(i32* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 7
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* @IWL_UCODE_TLV_CAPA_D0I3_END_FIRST, align 4
  %23 = call i32 @fw_has_capa(i32* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %28 = call %struct.ieee80211_vif* @iwl_mvm_get_bss_vif(%struct.iwl_mvm* %27)
  store %struct.ieee80211_vif* %28, %struct.ieee80211_vif** %6, align 8
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_vif* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %117

33:                                               ; preds = %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 6
  %36 = call i32 @iwl_fw_dbg_read_d3_debug_data(i32* %35)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = call i64 @iwl_mvm_check_rt_status(%struct.iwl_mvm* %37, %struct.ieee80211_vif* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* @STATUS_FW_ERROR, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %42, i32* %46)
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = call i32 @iwl_mvm_dump_nic_error_log(%struct.iwl_mvm* %48)
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 6
  %52 = call i32 @iwl_fw_dbg_collect_desc(i32* %51, i32* @iwl_dump_desc_assert, i32 0, i32 0)
  store i32 1, i32* %7, align 4
  br label %117

53:                                               ; preds = %33
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @iwl_trans_d3_resume(%struct.TYPE_4__* %56, i32* %8, i32 %57, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %117

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @IWL_D3_STATUS_ALIVE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %72 = call i32 @IWL_INFO(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %117

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %78 = load i32, i32* @D0I3_END_CMD, align 4
  %79 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %77, i32 %78, i32 0, i32 0, i32* null)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @IWL_ERR(%struct.iwl_mvm* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %117

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %89 = call i32 @iwl_mvm_update_changed_regdom(%struct.iwl_mvm* %88)
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %91 = call i32 @iwl_mvm_ppag_send_cmd(%struct.iwl_mvm* %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %96 = call i32 @iwl_mvm_sar_select_profile(%struct.iwl_mvm* %95, i32 1, i32 1)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %107 = load i32, i32* @IWL_MVM_SCAN_NETDETECT, align 4
  %108 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %106, i32 %107, i32 0)
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %112 = call i32 @iwl_mvm_query_netdetect_reasons(%struct.iwl_mvm* %110, %struct.ieee80211_vif* %111)
  br label %141

113:                                              ; preds = %97
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %116 = call i32 @iwl_mvm_query_wakeup_reasons(%struct.iwl_mvm* %114, %struct.ieee80211_vif* %115)
  store i32 %116, i32* %9, align 4
  br label %123

117:                                              ; preds = %82, %70, %65, %41, %32
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %119 = call i32 @iwl_mvm_free_nd(%struct.iwl_mvm* %118)
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %120, i32 0, i32 2
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %123

123:                                              ; preds = %117, %113
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %123
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %128 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %131 = load i32, i32* @iwl_mvm_d3_disconnect_iter, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  br label %137

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi %struct.ieee80211_vif* [ %135, %134 ], [ null, %136 ]
  %139 = call i32 @ieee80211_iterate_active_interfaces_rtnl(i32 %129, i32 %130, i32 %131, %struct.ieee80211_vif* %138)
  br label %140

140:                                              ; preds = %137, %123
  br label %141

141:                                              ; preds = %140, %109
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %164

151:                                              ; preds = %147
  %152 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %153 = load i32, i32* @D0I3_END_CMD, align 4
  %154 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %152, i32 %153, i32 0, i32 0, i32* null)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %164

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %144, %141
  %160 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %162 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %161, i32 0, i32 0
  %163 = call i32 @set_bit(i32 %160, i32* %162)
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %157, %150
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_vif* @iwl_mvm_get_bss_vif(%struct.iwl_mvm*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_fw_dbg_read_d3_debug_data(i32*) #1

declare dso_local i64 @iwl_mvm_check_rt_status(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_dump_nic_error_log(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_fw_dbg_collect_desc(i32*, i32*, i32, i32) #1

declare dso_local i32 @iwl_trans_d3_resume(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_update_changed_regdom(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_ppag_send_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sar_select_profile(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_scan_stop(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_query_netdetect_reasons(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_query_wakeup_reasons(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_free_nd(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_rtnl(i32, i32, i32, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
