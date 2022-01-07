; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_cfg_he_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_cfg_he_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i32, i32, i32 }
%struct.iwl_he_sta_context_cmd = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_14__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8**** }
%struct.ieee80211_sta = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.iwl_he_pkt_ext = type { i32*** }

@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_MBSSID_HE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't find STA to configure HE\0A\00", align 1
@STA_CTXT_HE_RU_2MHZ_BLOCK = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP0_HTC_HE = common dso_local global i32 0, align 4
@IWL_HE_HTC_SUPPORT = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP1_LINK_ADAPTATION = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP2_LINK_ADAPTATION = common dso_local global i32 0, align 4
@IWL_HE_HTC_LINK_ADAP_UNSOLICITED = common dso_local global i32 0, align 4
@IWL_HE_HTC_LINK_ADAP_BOTH = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP2_BSR = common dso_local global i32 0, align 4
@IWL_HE_HTC_BSR_SUPP = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP3_OMI_CONTROL = common dso_local global i32 0, align 4
@IWL_HE_HTC_OMI_SUPP = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP4_BQR = common dso_local global i32 0, align 4
@IWL_HE_HTC_BQR_SUPP = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_PPE_THRES_NSS_MASK = common dso_local global i32 0, align 4
@IEEE80211_PPE_THRES_RU_INDEX_BITMASK_MASK = common dso_local global i32 0, align 4
@IEEE80211_PPE_THRES_RU_INDEX_BITMASK_POS = common dso_local global i32 0, align 4
@MAX_HE_SUPP_NSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Got NSS = %d - trimming to %d\0A\00", align 1
@MAX_HE_CHANNEL_BW_INDX = common dso_local global i32 0, align 4
@IEEE80211_PPE_THRES_INFO_PPET_SIZE = common dso_local global i64 0, align 8
@STA_CTXT_HE_PACKET_EXT = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP9_NOMIMAL_PKT_PADDING_MASK = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP9_NOMIMAL_PKT_PADDING_RESERVED = common dso_local global i32 0, align 4
@IWL_HE_PKT_EXT_NONE = common dso_local global i32 0, align 4
@IWL_HE_PKT_EXT_BPSK = common dso_local global i32 0, align 4
@STA_CTXT_HE_MU_EDCA_CW = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@STA_CTXT_HE_32BIT_BA_BITMAP = common dso_local global i32 0, align 4
@STA_CTXT_HE_ACK_ENABLED = common dso_local global i32 0, align 4
@STA_CTXT_HE_TRIG_RND_ALLOC = common dso_local global i32 0, align 4
@STA_CTXT_HE_REF_BSSID_VALID = common dso_local global i32 0, align 4
@STA_HE_CTXT_CMD = common dso_local global i32 0, align 4
@DATA_PATH_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to config FW to work HE!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_cfg_he_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_cfg_he_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_he_sta_context_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.iwl_he_pkt_ext*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ieee80211_he_mu_edca_param_ac_rec*, align 8
  %25 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %26)
  store %struct.iwl_mvm_vif* %27, %struct.iwl_mvm_vif** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 1
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_le16(i32 %34)
  store i8* %35, i8** %30, align 8
  %36 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 5
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 6
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 7
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 8
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 9
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 10
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %44, align 8
  %45 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 11
  %46 = bitcast %struct.TYPE_14__* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 8, i1 false)
  %47 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 13
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %48, align 4
  %53 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 14
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %53, align 8
  %58 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 15
  %59 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %59, i32* %58, align 4
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* @IWL_UCODE_TLV_API_MBSSID_HE, align 4
  %65 = call i64 @fw_has_api(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i64 80, i64 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = call i32 (...) @rcu_read_lock()
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.ieee80211_sta* @rcu_dereference(i32 %78)
  store %struct.ieee80211_sta* %79, %struct.ieee80211_sta** %10, align 8
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %81 = call i64 @IS_ERR(%struct.ieee80211_sta* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %3
  %84 = call i32 (...) @rcu_read_unlock()
  %85 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %614

86:                                               ; preds = %3
  %87 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = call i32 (...) @rcu_read_unlock()
  br label %614

94:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %95 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @STA_CTXT_HE_RU_2MHZ_BLOCK, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IEEE80211_HE_MAC_CAP0_HTC_HE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load i32, i32* @IWL_HE_HTC_SUPPORT, align 4
  %116 = call i32 @cpu_to_le32(i32 %115)
  %117 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %103
  %121 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %122 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IEEE80211_HE_MAC_CAP1_LINK_ADAPTATION, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %120
  %132 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IEEE80211_HE_MAC_CAP2_LINK_ADAPTATION, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %131, %120
  %143 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IEEE80211_HE_MAC_CAP2_LINK_ADAPTATION, align 4
  %151 = and i32 %149, %150
  %152 = shl i32 %151, 1
  %153 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IEEE80211_HE_MAC_CAP1_LINK_ADAPTATION, align 4
  %161 = and i32 %159, %160
  %162 = add nsw i32 %152, %161
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %171

165:                                              ; preds = %142
  %166 = load i32, i32* @IWL_HE_HTC_LINK_ADAP_UNSOLICITED, align 4
  %167 = call i32 @cpu_to_le32(i32 %166)
  %168 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 8
  br label %181

171:                                              ; preds = %142
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* @IWL_HE_HTC_LINK_ADAP_BOTH, align 4
  %176 = call i32 @cpu_to_le32(i32 %175)
  %177 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %176
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %174, %171
  br label %181

181:                                              ; preds = %180, %165
  br label %182

182:                                              ; preds = %181, %131
  %183 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %184 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IEEE80211_HE_MAC_CAP2_BSR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %182
  %194 = load i32, i32* @IWL_HE_HTC_BSR_SUPP, align 4
  %195 = call i32 @cpu_to_le32(i32 %194)
  %196 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %195
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %182
  %200 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %201 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IEEE80211_HE_MAC_CAP3_OMI_CONTROL, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %199
  %211 = load i32, i32* @IWL_HE_HTC_OMI_SUPP, align 4
  %212 = call i32 @cpu_to_le32(i32 %211)
  %213 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %210, %199
  %217 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %218 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IEEE80211_HE_MAC_CAP4_BQR, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %216
  %228 = load i32, i32* @IWL_HE_HTC_BQR_SUPP, align 4
  %229 = call i32 @cpu_to_le32(i32 %228)
  %230 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 12
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %229
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %216
  %234 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 11
  %235 = call i32 @memset(%struct.TYPE_14__* %234, i32 7, i32 8)
  %236 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %237 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 6
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %351

246:                                              ; preds = %233
  %247 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %248 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @IEEE80211_PPE_THRES_NSS_MASK, align 4
  %254 = and i32 %252, %253
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  %256 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %257 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @IEEE80211_PPE_THRES_RU_INDEX_BITMASK_MASK, align 4
  %263 = and i32 %261, %262
  %264 = load i32, i32* @IEEE80211_PPE_THRES_RU_INDEX_BITMASK_POS, align 4
  %265 = ashr i32 %263, %264
  store i32 %265, i32* %15, align 4
  %266 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %267 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32* %270, i32** %16, align 8
  store i32 7, i32* %17, align 4
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @MAX_HE_SUPP_NSS, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %246
  %275 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* @MAX_HE_SUPP_NSS, align 4
  %278 = call i32 @IWL_INFO(%struct.iwl_mvm* %275, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %276, i32 %277)
  %279 = load i32, i32* @MAX_HE_SUPP_NSS, align 4
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %274, %246
  store i32 0, i32* %12, align 4
  br label %281

281:                                              ; preds = %344, %280
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %14, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %347

285:                                              ; preds = %281
  %286 = load i32, i32* %15, align 4
  %287 = shl i32 %286, 1
  store i32 %287, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %288

288:                                              ; preds = %340, %285
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* @MAX_HE_CHANNEL_BW_INDX, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %343

292:                                              ; preds = %288
  %293 = load i32, i32* %18, align 4
  %294 = ashr i32 %293, 1
  store i32 %294, i32* %18, align 4
  %295 = load i32, i32* %18, align 4
  %296 = and i32 %295, 1
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %292
  br label %340

299:                                              ; preds = %292
  %300 = load i32*, i32** %16, align 8
  %301 = load i32, i32* %17, align 4
  %302 = call i8* @iwl_mvm_he_get_ppe_val(i32* %300, i32 %301)
  %303 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 11
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load i8****, i8***** %304, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8***, i8**** %305, i64 %307
  %309 = load i8***, i8**** %308, align 8
  %310 = load i32, i32* %19, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8**, i8*** %309, i64 %311
  %313 = load i8**, i8*** %312, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 1
  store i8* %302, i8** %314, align 8
  %315 = load i64, i64* @IEEE80211_PPE_THRES_INFO_PPET_SIZE, align 8
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %17, align 4
  %320 = load i32*, i32** %16, align 8
  %321 = load i32, i32* %17, align 4
  %322 = call i8* @iwl_mvm_he_get_ppe_val(i32* %320, i32 %321)
  %323 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 11
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i8****, i8***** %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8***, i8**** %325, i64 %327
  %329 = load i8***, i8**** %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8**, i8*** %329, i64 %331
  %333 = load i8**, i8*** %332, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 0
  store i8* %322, i8** %334, align 8
  %335 = load i64, i64* @IEEE80211_PPE_THRES_INFO_PPET_SIZE, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %17, align 4
  br label %340

340:                                              ; preds = %299, %298
  %341 = load i32, i32* %19, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %19, align 4
  br label %288

343:                                              ; preds = %288
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %12, align 4
  br label %281

347:                                              ; preds = %281
  %348 = load i32, i32* @STA_CTXT_HE_PACKET_EXT, align 4
  %349 = load i32, i32* %11, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %11, align 4
  br label %440

351:                                              ; preds = %233
  %352 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %353 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 9
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @IEEE80211_HE_PHY_CAP9_NOMIMAL_PKT_PADDING_MASK, align 4
  %360 = and i32 %358, %359
  %361 = load i32, i32* @IEEE80211_HE_PHY_CAP9_NOMIMAL_PKT_PADDING_RESERVED, align 4
  %362 = icmp ne i32 %360, %361
  br i1 %362, label %363, label %439

363:                                              ; preds = %351
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %364 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %365 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 9
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @IEEE80211_HE_PHY_CAP9_NOMIMAL_PKT_PADDING_MASK, align 4
  %372 = and i32 %370, %371
  switch i32 %372, label %382 [
    i32 130, label %373
    i32 128, label %376
    i32 129, label %379
  ]

373:                                              ; preds = %363
  %374 = load i32, i32* @IWL_HE_PKT_EXT_NONE, align 4
  store i32 %374, i32* %20, align 4
  %375 = load i32, i32* @IWL_HE_PKT_EXT_NONE, align 4
  store i32 %375, i32* %21, align 4
  br label %382

376:                                              ; preds = %363
  %377 = load i32, i32* @IWL_HE_PKT_EXT_BPSK, align 4
  store i32 %377, i32* %20, align 4
  %378 = load i32, i32* @IWL_HE_PKT_EXT_NONE, align 4
  store i32 %378, i32* %21, align 4
  br label %382

379:                                              ; preds = %363
  %380 = load i32, i32* @IWL_HE_PKT_EXT_NONE, align 4
  store i32 %380, i32* %20, align 4
  %381 = load i32, i32* @IWL_HE_PKT_EXT_BPSK, align 4
  store i32 %381, i32* %21, align 4
  br label %382

382:                                              ; preds = %363, %379, %376, %373
  %383 = load i32, i32* %20, align 4
  %384 = icmp sge i32 %383, 0
  br i1 %384, label %385, label %438

385:                                              ; preds = %382
  %386 = load i32, i32* %21, align 4
  %387 = icmp sge i32 %386, 0
  br i1 %387, label %388, label %438

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 11
  %390 = bitcast %struct.TYPE_14__* %389 to %struct.iwl_he_pkt_ext*
  store %struct.iwl_he_pkt_ext* %390, %struct.iwl_he_pkt_ext** %22, align 8
  store i32 0, i32* %12, align 4
  br label %391

391:                                              ; preds = %431, %388
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* @MAX_HE_SUPP_NSS, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %434

395:                                              ; preds = %391
  store i32 0, i32* %23, align 4
  br label %396

396:                                              ; preds = %427, %395
  %397 = load i32, i32* %23, align 4
  %398 = load i32, i32* @MAX_HE_CHANNEL_BW_INDX, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %430

400:                                              ; preds = %396
  %401 = load i32, i32* %20, align 4
  %402 = load %struct.iwl_he_pkt_ext*, %struct.iwl_he_pkt_ext** %22, align 8
  %403 = getelementptr inbounds %struct.iwl_he_pkt_ext, %struct.iwl_he_pkt_ext* %402, i32 0, i32 0
  %404 = load i32***, i32**** %403, align 8
  %405 = load i32, i32* %12, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32**, i32*** %404, i64 %406
  %408 = load i32**, i32*** %407, align 8
  %409 = load i32, i32* %23, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  store i32 %401, i32* %413, align 4
  %414 = load i32, i32* %21, align 4
  %415 = load %struct.iwl_he_pkt_ext*, %struct.iwl_he_pkt_ext** %22, align 8
  %416 = getelementptr inbounds %struct.iwl_he_pkt_ext, %struct.iwl_he_pkt_ext* %415, i32 0, i32 0
  %417 = load i32***, i32**** %416, align 8
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32**, i32*** %417, i64 %419
  %421 = load i32**, i32*** %420, align 8
  %422 = load i32, i32* %23, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32*, i32** %421, i64 %423
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 1
  store i32 %414, i32* %426, align 4
  br label %427

427:                                              ; preds = %400
  %428 = load i32, i32* %23, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %23, align 4
  br label %396

430:                                              ; preds = %396
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %12, align 4
  br label %391

434:                                              ; preds = %391
  %435 = load i32, i32* @STA_CTXT_HE_PACKET_EXT, align 4
  %436 = load i32, i32* %11, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %11, align 4
  br label %438

438:                                              ; preds = %434, %385, %382
  br label %439

439:                                              ; preds = %438, %351
  br label %440

440:                                              ; preds = %439, %347
  %441 = call i32 (...) @rcu_read_unlock()
  %442 = load i32, i32* @STA_CTXT_HE_MU_EDCA_CW, align 4
  %443 = load i32, i32* %11, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %445

445:                                              ; preds = %517, %440
  %446 = load i32, i32* %12, align 4
  %447 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %449, label %520

449:                                              ; preds = %445
  %450 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %451 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %450, i32 0, i32 0
  %452 = load %struct.TYPE_8__*, %struct.TYPE_8__** %451, align 8
  %453 = load i32, i32* %12, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 1
  store %struct.ieee80211_he_mu_edca_param_ac_rec* %456, %struct.ieee80211_he_mu_edca_param_ac_rec** %24, align 8
  %457 = load i32, i32* %12, align 4
  %458 = call i32 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 %457)
  store i32 %458, i32* %25, align 4
  %459 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %460 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %459, i32 0, i32 0
  %461 = load %struct.TYPE_8__*, %struct.TYPE_8__** %460, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %449
  %469 = load i32, i32* @STA_CTXT_HE_MU_EDCA_CW, align 4
  %470 = xor i32 %469, -1
  %471 = load i32, i32* %11, align 4
  %472 = and i32 %471, %470
  store i32 %472, i32* %11, align 4
  br label %520

473:                                              ; preds = %449
  %474 = load %struct.ieee80211_he_mu_edca_param_ac_rec*, %struct.ieee80211_he_mu_edca_param_ac_rec** %24, align 8
  %475 = getelementptr inbounds %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = and i32 %476, 15
  %478 = call i8* @cpu_to_le16(i32 %477)
  %479 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 10
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %479, align 8
  %481 = load i32, i32* %25, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 3
  store i8* %478, i8** %484, align 8
  %485 = load %struct.ieee80211_he_mu_edca_param_ac_rec*, %struct.ieee80211_he_mu_edca_param_ac_rec** %24, align 8
  %486 = getelementptr inbounds %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = and i32 %487, 240
  %489 = ashr i32 %488, 4
  %490 = call i8* @cpu_to_le16(i32 %489)
  %491 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 10
  %492 = load %struct.TYPE_9__*, %struct.TYPE_9__** %491, align 8
  %493 = load i32, i32* %25, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 2
  store i8* %490, i8** %496, align 8
  %497 = load %struct.ieee80211_he_mu_edca_param_ac_rec*, %struct.ieee80211_he_mu_edca_param_ac_rec** %24, align 8
  %498 = getelementptr inbounds %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = call i8* @cpu_to_le16(i32 %499)
  %501 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 10
  %502 = load %struct.TYPE_9__*, %struct.TYPE_9__** %501, align 8
  %503 = load i32, i32* %25, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  store i8* %500, i8** %506, align 8
  %507 = load %struct.ieee80211_he_mu_edca_param_ac_rec*, %struct.ieee80211_he_mu_edca_param_ac_rec** %24, align 8
  %508 = getelementptr inbounds %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 4
  %510 = call i8* @cpu_to_le16(i32 %509)
  %511 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 10
  %512 = load %struct.TYPE_9__*, %struct.TYPE_9__** %511, align 8
  %513 = load i32, i32* %25, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 0
  store i8* %510, i8** %516, align 8
  br label %517

517:                                              ; preds = %473
  %518 = load i32, i32* %12, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %12, align 4
  br label %445

520:                                              ; preds = %468, %445
  %521 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %522 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 10
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %520
  %527 = load i32, i32* @STA_CTXT_HE_32BIT_BA_BITMAP, align 4
  %528 = load i32, i32* %11, align 4
  %529 = or i32 %528, %527
  store i32 %529, i32* %11, align 4
  br label %530

530:                                              ; preds = %526, %520
  %531 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %532 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 9
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %530
  %537 = load i32, i32* @STA_CTXT_HE_ACK_ENABLED, align 4
  %538 = load i32, i32* %11, align 4
  %539 = or i32 %538, %537
  store i32 %539, i32* %11, align 4
  br label %540

540:                                              ; preds = %536, %530
  %541 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %542 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 8
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %563

546:                                              ; preds = %540
  %547 = load i32, i32* @STA_CTXT_HE_TRIG_RND_ALLOC, align 4
  %548 = load i32, i32* %11, align 4
  %549 = or i32 %548, %547
  store i32 %549, i32* %11, align 4
  %550 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %551 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = and i32 %553, 7
  %555 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 2
  store i32 %554, i32* %555, align 8
  %556 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %557 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 4
  %560 = ashr i32 %559, 3
  %561 = and i32 %560, 7
  %562 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 3
  store i32 %561, i32* %562, align 4
  br label %563

563:                                              ; preds = %546, %540
  %564 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %565 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 7
  %567 = load i64, i64* %566, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %600

569:                                              ; preds = %563
  %570 = load i32, i32* @STA_CTXT_HE_REF_BSSID_VALID, align 4
  %571 = load i32, i32* %11, align 4
  %572 = or i32 %571, %570
  store i32 %572, i32* %11, align 4
  %573 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 9
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %576 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i32 0, i32 6
  %578 = load i32, i32* %577, align 8
  %579 = call i32 @ether_addr_copy(i32 %574, i32 %578)
  %580 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %581 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %581, i32 0, i32 5
  %583 = load i32, i32* %582, align 4
  %584 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 8
  store i32 %583, i32* %584, align 8
  %585 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %586 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %586, i32 0, i32 4
  %588 = load i32, i32* %587, align 8
  %589 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 7
  store i32 %588, i32* %589, align 4
  %590 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %591 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 3
  %593 = load i32, i32* %592, align 4
  %594 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 6
  store i32 %593, i32* %594, align 8
  %595 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %596 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 8
  %599 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 5
  store i32 %598, i32* %599, align 4
  br label %600

600:                                              ; preds = %569, %563
  %601 = load i32, i32* %11, align 4
  %602 = call i32 @cpu_to_le32(i32 %601)
  %603 = getelementptr inbounds %struct.iwl_he_sta_context_cmd, %struct.iwl_he_sta_context_cmd* %8, i32 0, i32 4
  store i32 %602, i32* %603, align 8
  %604 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %605 = load i32, i32* @STA_HE_CTXT_CMD, align 4
  %606 = load i32, i32* @DATA_PATH_GROUP, align 4
  %607 = call i32 @iwl_cmd_id(i32 %605, i32 %606, i32 0)
  %608 = load i32, i32* %9, align 4
  %609 = call i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %604, i32 %607, i32 0, i32 %608, %struct.iwl_he_sta_context_cmd* %8)
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %600
  %612 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %613 = call i32 @IWL_ERR(%struct.iwl_mvm* %612, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %614

614:                                              ; preds = %83, %92, %611, %600
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i8* @iwl_mvm_he_get_ppe_val(i32*, i32) #1

declare dso_local i32 @iwl_mvm_mac80211_ac_to_ucode_ac(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_he_sta_context_cmd*) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
