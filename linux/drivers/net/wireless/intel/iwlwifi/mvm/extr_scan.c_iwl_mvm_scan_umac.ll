; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_umac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_umac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32, %struct.TYPE_6__*, %struct.iwl_scan_req_umac* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_scan_req_umac = type { i8*, i32, %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { i32, i8** }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_scan_params = type { i32, i32, i32, i32, i32, %struct.cfg80211_sched_scan_plan* }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.iwl_scan_umac_chan_param = type { i32, i32 }
%struct.iwl_scan_req_umac_tail_v2 = type { %struct.iwl_ssid_ie*, i32, i8*, %struct.TYPE_8__* }
%struct.iwl_ssid_ie = type { i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.iwl_scan_req_umac_tail_v1 = type { %struct.iwl_ssid_ie*, i32 }
%struct.iwl_mvm_vif = type { i32 }

@IWL_MAX_SCHED_SCAN_PLANS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_SCAN_NUM_OF_FRAGS = common dso_local global i8* null, align 8
@SCAN_LB_LMAC_IDX = common dso_local global i64 0, align 8
@IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED = common dso_local global i32 0, align 4
@SCAN_HB_LMAC_IDX = common dso_local global i64 0, align 8
@IWL_UMAC_SCAN_GEN_FLAGS2_ALLOW_CHNL_REORDER = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_SCHED = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_NETDETECT = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_FLAG_PREEMPTIVE = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_EBS = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_CACHE_ADD = common dso_local global i32 0, align 4
@IWL_SCAN_CHANNEL_FLAG_EBS_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_scan_params*, i32)* @iwl_mvm_scan_umac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_umac(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mvm_scan_params* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.iwl_mvm_scan_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_scan_req_umac*, align 8
  %11 = alloca %struct.iwl_scan_umac_chan_param*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.iwl_scan_req_umac_tail_v2*, align 8
  %15 = alloca %struct.iwl_scan_req_umac_tail_v1*, align 8
  %16 = alloca %struct.iwl_ssid_ie*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.iwl_mvm_vif*, align 8
  %23 = alloca %struct.cfg80211_sched_scan_plan*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.iwl_mvm_scan_params* %2, %struct.iwl_mvm_scan_params** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 3
  %26 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %25, align 8
  store %struct.iwl_scan_req_umac* %26, %struct.iwl_scan_req_umac** %10, align 8
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %28 = call i8* @iwl_mvm_get_scan_req_umac_data(%struct.iwl_mvm* %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = getelementptr i8, i8* %29, i64 %37
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = bitcast i8* %39 to %struct.iwl_scan_req_umac_tail_v2*
  store %struct.iwl_scan_req_umac_tail_v2* %40, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %42 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %41)
  store %struct.iwl_mvm_vif* %42, %struct.iwl_mvm_vif** %22, align 8
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %44 = call %struct.iwl_scan_umac_chan_param* @iwl_mvm_get_scan_req_umac_channel(%struct.iwl_mvm* %43)
  store %struct.iwl_scan_umac_chan_param* %44, %struct.iwl_scan_umac_chan_param** %11, align 8
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 1
  %47 = call i32 @lockdep_assert_held(i32* %46)
  %48 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IWL_MAX_SCHED_SCAN_PLANS, align 4
  %52 = icmp sgt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %290

59:                                               ; preds = %4
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %61 = call i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm* %60, i32 0)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %5, align 4
  br label %290

66:                                               ; preds = %59
  %67 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %68 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %69 = call i32 @ksize(%struct.iwl_scan_req_umac* %68)
  %70 = call i32 @memset(%struct.iwl_scan_req_umac* %67, i32 0, i32 %69)
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %72 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %73 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %74 = call i32 @iwl_mvm_scan_umac_dwell(%struct.iwl_mvm* %71, %struct.iwl_scan_req_umac* %72, %struct.iwl_mvm_scan_params* %73)
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %85 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %87 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %89 = call i32 @iwl_mvm_scan_umac_flags(%struct.iwl_mvm* %86, %struct.iwl_mvm_scan_params* %87, %struct.ieee80211_vif* %88)
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %21, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %93 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %95 = call i64 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %66
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i8*, i8** @IWL_SCAN_NUM_OF_FRAGS, align 8
  %104 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %105 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %103, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %97
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i8*, i8** @IWL_SCAN_NUM_OF_FRAGS, align 8
  %117 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %118 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8* %116, i8** %122, align 8
  br label %123

123:                                              ; preds = %115, %110
  %124 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS2_ALLOW_CHNL_REORDER, align 4
  %125 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %126 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %66
  %129 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %22, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %133 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @IWL_MVM_SCAN_NETDETECT, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137, %128
  %142 = load i32, i32* @IWL_UMAC_SCAN_FLAG_PREEMPTIVE, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %10, align 8
  %145 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %137
  %147 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %148 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %149 = call i64 @iwl_mvm_scan_use_ebs(%struct.iwl_mvm* %147, %struct.ieee80211_vif* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS, align 4
  %153 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_CACHE_ADD, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %20, align 4
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %158 = call i64 @iwl_mvm_is_frag_ebs_supported(%struct.iwl_mvm* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %151
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  %166 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %167 = call i32 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169, %160
  %175 = load i32, i32* @IWL_SCAN_CHANNEL_FLAG_EBS_FRAG, align 4
  %176 = load i32, i32* %20, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %20, align 4
  br label %178

178:                                              ; preds = %174, %169, %165
  br label %179

179:                                              ; preds = %178, %151
  br label %180

180:                                              ; preds = %179, %146
  %181 = load i32, i32* %20, align 4
  %182 = load %struct.iwl_scan_umac_chan_param*, %struct.iwl_scan_umac_chan_param** %11, align 8
  %183 = getelementptr inbounds %struct.iwl_scan_umac_chan_param, %struct.iwl_scan_umac_chan_param* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %185 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.iwl_scan_umac_chan_param*, %struct.iwl_scan_umac_chan_param** %11, align 8
  %188 = getelementptr inbounds %struct.iwl_scan_umac_chan_param, %struct.iwl_scan_umac_chan_param* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %223, %180
  %190 = load i32, i32* %18, align 4
  %191 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %192 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %226

195:                                              ; preds = %189
  %196 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %197 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %196, i32 0, i32 5
  %198 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %198, i64 %200
  store %struct.cfg80211_sched_scan_plan* %201, %struct.cfg80211_sched_scan_plan** %23, align 8
  %202 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %23, align 8
  %203 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %206 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %205, i32 0, i32 3
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i32 %204, i32* %211, align 8
  %212 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %23, align 8
  %213 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @cpu_to_le16(i32 %214)
  %216 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %217 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %216, i32 0, i32 3
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store i8* %215, i8** %222, align 8
  br label %223

223:                                              ; preds = %195
  %224 = load i32, i32* %18, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %18, align 4
  br label %189

226:                                              ; preds = %189
  %227 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %228 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %227, i32 0, i32 3
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %246, label %237

237:                                              ; preds = %226
  %238 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %239 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %238, i32 0, i32 3
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  store i32 255, i32* %245, align 8
  br label %246

246:                                              ; preds = %237, %226
  %247 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %248 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @cpu_to_le16(i32 %249)
  %251 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %252 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %251, i32 0, i32 2
  store i8* %250, i8** %252, align 8
  %253 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %254 = call i64 @iwl_mvm_is_scan_ext_chan_supported(%struct.iwl_mvm* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %246
  %257 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %258 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %261 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 8
  %262 = load %struct.iwl_scan_req_umac_tail_v2*, %struct.iwl_scan_req_umac_tail_v2** %14, align 8
  %263 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, %struct.iwl_scan_req_umac_tail_v2* %262, i32 0, i32 0
  %264 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %263, align 8
  store %struct.iwl_ssid_ie* %264, %struct.iwl_ssid_ie** %16, align 8
  br label %276

265:                                              ; preds = %246
  %266 = load i8*, i8** %13, align 8
  %267 = bitcast i8* %266 to %struct.iwl_scan_req_umac_tail_v1*
  store %struct.iwl_scan_req_umac_tail_v1* %267, %struct.iwl_scan_req_umac_tail_v1** %15, align 8
  %268 = load %struct.iwl_scan_req_umac_tail_v1*, %struct.iwl_scan_req_umac_tail_v1** %15, align 8
  %269 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v1, %struct.iwl_scan_req_umac_tail_v1* %268, i32 0, i32 1
  %270 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %271 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %270, i32 0, i32 4
  %272 = call i32 @iwl_mvm_scan_set_legacy_probe_req(i32* %269, i32* %271)
  %273 = load %struct.iwl_scan_req_umac_tail_v1*, %struct.iwl_scan_req_umac_tail_v1** %15, align 8
  %274 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v1, %struct.iwl_scan_req_umac_tail_v1* %273, i32 0, i32 0
  %275 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %274, align 8
  store %struct.iwl_ssid_ie* %275, %struct.iwl_ssid_ie** %16, align 8
  br label %276

276:                                              ; preds = %265, %256
  %277 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %278 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %16, align 8
  %279 = call i32 @iwl_scan_build_ssids(%struct.iwl_mvm_scan_params* %277, %struct.iwl_ssid_ie* %278, i32* %19)
  %280 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %281 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %282 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %8, align 8
  %285 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %19, align 4
  %288 = load i8*, i8** %12, align 8
  %289 = call i32 @iwl_mvm_umac_scan_cfg_channels(%struct.iwl_mvm* %280, i32 %283, i32 %286, i32 %287, i8* %288)
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %276, %64, %56
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i8* @iwl_mvm_get_scan_req_umac_data(%struct.iwl_mvm*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_scan_umac_chan_param* @iwl_mvm_get_scan_req_umac_channel(%struct.iwl_mvm*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @memset(%struct.iwl_scan_req_umac*, i32, i32) #1

declare dso_local i32 @ksize(%struct.iwl_scan_req_umac*) #1

declare dso_local i32 @iwl_mvm_scan_umac_dwell(%struct.iwl_mvm*, %struct.iwl_scan_req_umac*, %struct.iwl_mvm_scan_params*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_scan_umac_flags(%struct.iwl_mvm*, %struct.iwl_mvm_scan_params*, %struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_scan_use_ebs(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i64 @iwl_mvm_is_frag_ebs_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_scan_ext_chan_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_set_legacy_probe_req(i32*, i32*) #1

declare dso_local i32 @iwl_scan_build_ssids(%struct.iwl_mvm_scan_params*, %struct.iwl_ssid_ie*, i32*) #1

declare dso_local i32 @iwl_mvm_umac_scan_cfg_channels(%struct.iwl_mvm*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
