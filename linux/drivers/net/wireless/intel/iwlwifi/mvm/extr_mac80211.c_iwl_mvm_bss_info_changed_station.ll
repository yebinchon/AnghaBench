; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ieee80211_bss_conf = type { i32, i64, i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_7__, i32, i32, i64, i32* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to update MAC %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to update quotas\0A\00", align 1
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_MVM_SMPS_REQ_PROT = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_HW_RESTART_REQUESTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to update SF upon disassociation\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to remove AP station\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"failed to update MAC %pM (clear after unassoc)\0A\00", align 1
@BSS_CHANGED_MU_GROUPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to update VHT MU_MIMO groups\0A\00", align 1
@IWL_MVM_SMPS_REQ_TT = common dso_local global i32 0, align 4
@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@BSS_CHANGED_PS = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to update power mode\0A\00", align 1
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Changing TX Power to %d\0A\00", align 1
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"cqm info_changed\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to update CQM thresholds\0A\00", align 1
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"arp filter changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @iwl_mvm_bss_info_changed_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bss_info_changed_station(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iwl_mvm_cfg_he_sta(%struct.iwl_mvm* %33, %struct.ieee80211_vif* %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %29, %23
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %42 = call i32 @iwl_mvm_mac_ctxt_recalc_tsf_id(%struct.iwl_mvm* %40, %struct.ieee80211_vif* %41)
  br label %43

43:                                               ; preds = %39, %18, %4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %70 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @iwl_mvm_cfg_he_sta(%struct.iwl_mvm* %68, %struct.ieee80211_vif* %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %64, %58, %53, %48, %43
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @memcpy(i32* %87, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %79, %74
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %95 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %96 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %94, %struct.ieee80211_vif* %95, i32 0, i32* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %102, %93
  %109 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memcpy(i32* %111, i32 %114, i32 %115)
  %117 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %300

126:                                              ; preds = %108
  %127 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %126
  %132 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %133 = call i32 @iwl_mvm_request_statistics(%struct.iwl_mvm* %132, i32 1)
  %134 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %134, i32 0, i32 2
  %136 = call i32 @memset(i32* %135, i32 0, i32 4)
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %138 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %137, i32 1, i32* null)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %143 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %390

144:                                              ; preds = %131
  %145 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %146, i32 0, i32 1
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %144
  %151 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %152 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 11, %154
  %156 = sdiv i32 %155, 10
  store i32 %156, i32* %11, align 4
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %158 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = mul nsw i32 5, %161
  %163 = call i32 @iwl_mvm_protect_session(%struct.iwl_mvm* %157, %struct.ieee80211_vif* %158, i32 %159, i32 %160, i32 %162, i32 0)
  br label %164

164:                                              ; preds = %150, %144
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %166 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %167 = call i32 @iwl_mvm_sf_update(%struct.iwl_mvm* %165, %struct.ieee80211_vif* %166, i32 0)
  %168 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %169 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %170 = call i32 @iwl_mvm_power_vif_assoc(%struct.iwl_mvm* %168, %struct.ieee80211_vif* %169)
  %171 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %172 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %177 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %178 = load i32, i32* @IWL_MVM_SMPS_REQ_PROT, align 4
  %179 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  %180 = call i32 @iwl_mvm_update_smps(%struct.iwl_mvm* %176, %struct.ieee80211_vif* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %164
  br label %248

182:                                              ; preds = %126
  %183 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %247

188:                                              ; preds = %182
  %189 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %190 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %191 = call i32 @iwl_mvm_sf_update(%struct.iwl_mvm* %189, %struct.ieee80211_vif* %190, i32 0)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %188
  %195 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %197 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %196, i32 0, i32 1
  %198 = call i64 @test_bit(i32 %195, i32* %197)
  %199 = icmp ne i64 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %194, %188
  %202 = phi i1 [ false, %188 ], [ %200, %194 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @WARN_ONCE(i32 %203, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %205 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %206 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %207 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %206, i32 0, i32 1
  %208 = call i64 @test_bit(i32 %205, i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %226, label %210

210:                                              ; preds = %201
  %211 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %212 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %213 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %214 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @iwl_mvm_rm_sta_id(%struct.iwl_mvm* %211, %struct.ieee80211_vif* %212, i32 %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %221 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %210
  %223 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %224 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %225 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %222, %201
  %227 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %228 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %227, i32 0, i32* null)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %233 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %226
  %235 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %236 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %237 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %235, %struct.ieee80211_vif* %236, i32 0, i32* null)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %242 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %243 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %240, %234
  br label %247

247:                                              ; preds = %246, %182
  br label %248

248:                                              ; preds = %247, %181
  %249 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %250 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %251 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %250, i32 0, i32 1
  %252 = call i64 @test_bit(i32 %249, i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %248
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @BSS_CHANGED_MU_GROUPS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %254
  %260 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %261 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %259
  %265 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %266 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %267 = call i32 @iwl_mvm_update_mu_groups(%struct.iwl_mvm* %265, %struct.ieee80211_vif* %266)
  store i32 %267, i32* %10, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %272 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %271, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %264
  br label %274

274:                                              ; preds = %273, %259, %254, %248
  %275 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %276 = call i32 @iwl_mvm_recalc_multicast(%struct.iwl_mvm* %275)
  %277 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %278 = call i32 @iwl_mvm_configure_bcast_filter(%struct.iwl_mvm* %277)
  %279 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %280 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 2
  store i64 0, i64* %281, align 8
  %282 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %283 = call i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm* %282)
  %284 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %285 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %286 = load i32, i32* @IWL_MVM_SMPS_REQ_TT, align 4
  %287 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  %288 = call i32 @iwl_mvm_update_smps(%struct.iwl_mvm* %284, %struct.ieee80211_vif* %285, i32 %286, i32 %287)
  %289 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %290 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %289, i32 0, i32 0
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %294 = call i64 @fw_has_capa(i32* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %274
  %297 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %298 = call i32 @iwl_mvm_config_scan(%struct.iwl_mvm* %297)
  br label %299

299:                                              ; preds = %296, %274
  br label %300

300:                                              ; preds = %299, %108
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %316

305:                                              ; preds = %300
  %306 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %307 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %308 = call i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm* %306, %struct.ieee80211_vif* %307)
  %309 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %310 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %311 = call i32 @iwl_mvm_sf_update(%struct.iwl_mvm* %309, %struct.ieee80211_vif* %310, i32 0)
  %312 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %313 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %314 = call i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %312, %struct.ieee80211_vif* %313, i32 0)
  %315 = call i32 @WARN_ON(i32 %314)
  br label %316

316:                                              ; preds = %305, %300
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* @BSS_CHANGED_PS, align 4
  %319 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %324 = or i32 %322, %323
  %325 = and i32 %317, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %316
  %328 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %329 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %328)
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %10, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %334 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %333, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %335

335:                                              ; preds = %332, %327
  br label %336

336:                                              ; preds = %335, %316
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %353

341:                                              ; preds = %336
  %342 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %343 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %344 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_mvm* %342, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %345)
  %347 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %348 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %349 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %350 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @iwl_mvm_set_tx_power(%struct.iwl_mvm* %347, %struct.ieee80211_vif* %348, i32 %351)
  br label %353

353:                                              ; preds = %341, %336
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %380

358:                                              ; preds = %353
  %359 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %360 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %359, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %361 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %362 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 1
  store i64 0, i64* %363, align 8
  %364 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %365 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %379

369:                                              ; preds = %358
  %370 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %371 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %372 = call i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %370, %struct.ieee80211_vif* %371, i32 0)
  store i32 %372, i32* %10, align 4
  %373 = load i32, i32* %10, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %369
  %376 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %377 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %376, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %378

378:                                              ; preds = %375, %369
  br label %379

379:                                              ; preds = %378, %358
  br label %380

380:                                              ; preds = %379, %353
  %381 = load i32, i32* %8, align 4
  %382 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %387 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %386, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %388 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %389 = call i32 @iwl_mvm_configure_bcast_filter(%struct.iwl_mvm* %388)
  br label %390

390:                                              ; preds = %141, %385, %380
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_cfg_he_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_recalc_tsf_id(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_request_statistics(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_protect_session(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_sf_update(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_power_vif_assoc(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_update_smps(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @iwl_mvm_rm_sta_id(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_update_mu_groups(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_recalc_multicast(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_configure_bcast_filter(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_config_scan(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_set_tx_power(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
