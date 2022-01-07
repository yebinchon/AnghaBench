; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_start_ap_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_start_ap_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_mvm = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.ieee80211_key_conf**, i64 }
%struct.ieee80211_key_conf = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_API_STA_TYPE = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@LOW_LATENCY_VIF_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_start_ap_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_start_ap_ibss(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %6, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = call i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm* %17, %struct.ieee80211_vif* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %209

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %32 = call i32 @iwl_mvm_mac_ctxt_recalc_tsf_id(%struct.iwl_mvm* %30, %struct.ieee80211_vif* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %38 = call i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %36, %struct.ieee80211_vif* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %209

42:                                               ; preds = %33
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %45 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %43, %struct.ieee80211_vif* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %205

49:                                               ; preds = %42
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %55 = call i64 @fw_has_api(i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %60 = call i32 @iwl_mvm_add_mcast_sta(%struct.iwl_mvm* %58, %struct.ieee80211_vif* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %201

64:                                               ; preds = %57
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %66 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %67 = call i32 @iwl_mvm_send_add_bcast_sta(%struct.iwl_mvm* %65, %struct.ieee80211_vif* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %73 = call i32 @iwl_mvm_rm_mcast_sta(%struct.iwl_mvm* %71, %struct.ieee80211_vif* %72)
  br label %201

74:                                               ; preds = %64
  br label %93

75:                                               ; preds = %49
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %78 = call i32 @iwl_mvm_send_add_bcast_sta(%struct.iwl_mvm* %76, %struct.ieee80211_vif* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %201

82:                                               ; preds = %75
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %85 = call i32 @iwl_mvm_add_mcast_sta(%struct.iwl_mvm* %83, %struct.ieee80211_vif* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %90 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %91 = call i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm* %89, %struct.ieee80211_vif* %90)
  br label %201

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %74
  %94 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %130, %93
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %98, i32 0, i32 2
  %100 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %99, align 8
  %101 = call i32 @ARRAY_SIZE(%struct.ieee80211_key_conf** %100)
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %96
  %104 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %104, i32 0, i32 2
  %106 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %106, i64 %108
  %110 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %109, align 8
  store %struct.ieee80211_key_conf* %110, %struct.ieee80211_key_conf** %9, align 8
  %111 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %112 = icmp ne %struct.ieee80211_key_conf* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %103
  br label %130

114:                                              ; preds = %103
  %115 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %115, i32 0, i32 2
  %117 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %117, i64 %119
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %120, align 8
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %122 = load i32, i32* @SET_KEY, align 4
  %123 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %124 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %125 = call i32 @__iwl_mvm_mac_set_key(%struct.ieee80211_hw* %121, i32 %122, %struct.ieee80211_vif* %123, i32* null, %struct.ieee80211_key_conf* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  br label %190

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %113
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %96

133:                                              ; preds = %96
  %134 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %139
  %145 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %146 = load i32, i32* @LOW_LATENCY_VIF_TYPE, align 4
  %147 = call i32 @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif* %145, i32 1, i32 %146)
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %149 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm* %148, i32 1, i32 %151)
  br label %153

153:                                              ; preds = %144, %139, %133
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %155 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %154)
  %156 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %157 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %156, i32 0, i32* null)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %190

161:                                              ; preds = %153
  %162 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %163 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %168 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %172, i64 %175, i32 0, i32* null)
  br label %177

177:                                              ; preds = %171, %166, %161
  %178 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %179 = call i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm* %178)
  %180 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %181 = call i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm* %180)
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %185 = call i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm* %184)
  br label %186

186:                                              ; preds = %183, %177
  %187 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %188 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %189 = call i32 @iwl_mvm_ftm_restart_responder(%struct.iwl_mvm* %187, %struct.ieee80211_vif* %188)
  br label %209

190:                                              ; preds = %160, %128
  %191 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %192 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %191)
  %193 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %196 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %197 = call i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm* %195, %struct.ieee80211_vif* %196)
  %198 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %199 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %200 = call i32 @iwl_mvm_rm_mcast_sta(%struct.iwl_mvm* %198, %struct.ieee80211_vif* %199)
  br label %201

201:                                              ; preds = %190, %88, %81, %70, %63
  %202 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %203 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %204 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %202, %struct.ieee80211_vif* %203)
  br label %205

205:                                              ; preds = %201, %48
  %206 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %207 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %208 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %206, %struct.ieee80211_vif* %207)
  br label %209

209:                                              ; preds = %205, %186, %41, %22
  %210 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %211 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %210, i32 0, i32 0
  %212 = call i32 @mutex_unlock(i32* %211)
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_recalc_tsf_id(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_add_mcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_send_add_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_rm_mcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ieee80211_key_conf**) #1

declare dso_local i32 @__iwl_mvm_mac_set_key(%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, i32*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif*, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, i64, i32, i32*) #1

declare dso_local i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_ftm_restart_responder(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
