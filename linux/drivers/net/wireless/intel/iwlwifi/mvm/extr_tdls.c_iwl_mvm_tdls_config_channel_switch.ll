; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_config_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_config_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_tdls_channel_switch_cmd = type { i32, i32, i8*, i32 }
%struct.iwl_tdls_channel_switch_cmd_tail = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def }

@IWL_TDLS_CH_SW_FRAME_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IWL_MVM_TDLS_SW_REQ_SENT = common dso_local global i64 0, align 8
@IWL_MVM_TDLS_SW_ACTIVE = common dso_local global i64 0, align 8
@TDLS_MOVE_CH = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@TDLS_CHANNEL_SWITCH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to send TDLS_CHANNEL_SWITCH cmd: %d\0A\00", align 1
@TDLS_SEND_CHAN_SW_REQ = common dso_local global i32 0, align 4
@IWL_MVM_TDLS_SW_REQ_RCVD = common dso_local global i64 0, align 8
@IWL_MVM_TDLS_SW_RESP_RCVD = common dso_local global i64 0, align 8
@IWL_MVM_TDLS_SW_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*, i32, i32, %struct.cfg80211_chan_def*, i32, i32, i32, %struct.sk_buff*, i32)* @iwl_mvm_tdls_config_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_tdls_config_channel_switch(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32* %3, i32 %4, i32 %5, %struct.cfg80211_chan_def* %6, i32 %7, i32 %8, i32 %9, %struct.sk_buff* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_mvm*, align 8
  %15 = alloca %struct.ieee80211_vif*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cfg80211_chan_def*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.ieee80211_sta*, align 8
  %27 = alloca %struct.iwl_mvm_sta*, align 8
  %28 = alloca %struct.ieee80211_tx_info*, align 8
  %29 = alloca %struct.ieee80211_hdr*, align 8
  %30 = alloca %struct.iwl_tdls_channel_switch_cmd, align 8
  %31 = alloca %struct.iwl_tdls_channel_switch_cmd_tail*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %14, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32* %3, i32** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store %struct.cfg80211_chan_def* %6, %struct.cfg80211_chan_def** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store %struct.sk_buff* %10, %struct.sk_buff** %24, align 8
  store i32 %11, i32* %25, align 4
  %35 = bitcast %struct.iwl_tdls_channel_switch_cmd* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %37 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, %struct.iwl_tdls_channel_switch_cmd* %30, i32 0, i32 1
  %38 = call %struct.iwl_tdls_channel_switch_cmd_tail* @iwl_mvm_chan_info_cmd_tail(%struct.iwl_mvm* %36, i32* %37)
  store %struct.iwl_tdls_channel_switch_cmd_tail* %38, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %40 = call i32 @iwl_mvm_chan_info_padding(%struct.iwl_mvm* %39)
  %41 = sext i32 %40 to i64
  %42 = sub i64 24, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %32, align 4
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 1
  %46 = call i32 @lockdep_assert_held(i32* %45)
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %21, align 4
  %52 = call i32 @iwl_mvm_tdls_check_action(%struct.iwl_mvm* %47, i32 %48, i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %33, align 4
  %53 = load i32, i32* %33, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %12
  %56 = load i32, i32* %33, align 4
  store i32 %56, i32* %13, align 4
  br label %299

57:                                               ; preds = %12
  %58 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IWL_TDLS_CH_SW_FRAME_MAX_SIZE, align 4
  %65 = icmp sgt i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %57
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %33, align 4
  br label %290

72:                                               ; preds = %60
  %73 = load i32, i32* %16, align 4
  %74 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, %struct.iwl_tdls_channel_switch_cmd* %30, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %21, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %78 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* %22, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %83 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  %85 = load i32, i32* %23, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %88 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = call i32 (...) @rcu_read_lock()
  %91 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %91, i32* %92)
  store %struct.ieee80211_sta* %93, %struct.ieee80211_sta** %26, align 8
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %26, align 8
  %95 = icmp ne %struct.ieee80211_sta* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %72
  %97 = call i32 (...) @rcu_read_unlock()
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %33, align 4
  br label %290

100:                                              ; preds = %72
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %26, align 8
  %102 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %101)
  store %struct.iwl_mvm_sta* %102, %struct.iwl_mvm_sta** %27, align 8
  %103 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %27, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, %struct.iwl_tdls_channel_switch_cmd* %30, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %20, align 8
  %109 = icmp ne %struct.cfg80211_chan_def* %108, null
  br i1 %109, label %159, label %110

110:                                              ; preds = %100
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IWL_MVM_TDLS_SW_REQ_SENT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store %struct.cfg80211_chan_def* %129, %struct.cfg80211_chan_def** %20, align 8
  br label %158

130:                                              ; preds = %117, %110
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IWL_MVM_TDLS_SW_ACTIVE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %130
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @TDLS_MOVE_CH, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %143 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %144)
  store %struct.ieee80211_chanctx_conf* %145, %struct.ieee80211_chanctx_conf** %34, align 8
  %146 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %34, align 8
  %147 = icmp ne %struct.ieee80211_chanctx_conf* %146, null
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i64 @WARN_ON_ONCE(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = call i32 (...) @rcu_read_unlock()
  br label %290

154:                                              ; preds = %141
  %155 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %34, align 8
  %156 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %155, i32 0, i32 0
  store %struct.cfg80211_chan_def* %156, %struct.cfg80211_chan_def** %20, align 8
  br label %157

157:                                              ; preds = %154, %137, %130
  br label %158

158:                                              ; preds = %157, %125
  br label %159

159:                                              ; preds = %158, %100
  %160 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %20, align 8
  %161 = icmp ne %struct.cfg80211_chan_def* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %164 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd, %struct.iwl_tdls_channel_switch_cmd* %30, i32 0, i32 1
  %165 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %20, align 8
  %166 = call i32 @iwl_mvm_set_chan_info_chandef(%struct.iwl_mvm* %163, i32* %164, %struct.cfg80211_chan_def* %165)
  br label %167

167:                                              ; preds = %162, %159
  %168 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %169 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %173 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %171, %175
  %177 = call i32 @TU_TO_US(i32 %176)
  %178 = sdiv i32 %177, 2
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %181 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  %183 = load i32, i32* %25, align 4
  %184 = add nsw i32 %183, 2
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %187 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  store i8* %185, i8** %188, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %190 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %189)
  store %struct.ieee80211_tx_info* %190, %struct.ieee80211_tx_info** %28, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = bitcast i8* %194 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %195, %struct.ieee80211_hdr** %29, align 8
  %196 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %28, align 8
  %197 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = icmp ne %struct.TYPE_11__* %199, null
  br i1 %200, label %201, label %220

201:                                              ; preds = %167
  %202 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %28, align 8
  %203 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = call i32 (...) @rcu_read_unlock()
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %33, align 4
  br label %290

214:                                              ; preds = %201
  %215 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %28, align 8
  %216 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %217 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = call i32 @iwl_mvm_set_tx_cmd_ccmp(%struct.ieee80211_tx_info* %215, i32* %218)
  br label %220

220:                                              ; preds = %214, %167
  %221 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %223 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %224 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %28, align 8
  %227 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %27, align 8
  %228 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @iwl_mvm_set_tx_cmd(%struct.iwl_mvm* %221, %struct.sk_buff* %222, i32* %225, %struct.ieee80211_tx_info* %226, i32 %229)
  %231 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %232 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %233 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %28, align 8
  %236 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %26, align 8
  %237 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %29, align 8
  %238 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @iwl_mvm_set_tx_cmd_rate(%struct.iwl_mvm* %231, i32* %234, %struct.ieee80211_tx_info* %235, %struct.ieee80211_sta* %236, i32 %239)
  %241 = call i32 (...) @rcu_read_unlock()
  %242 = load %struct.iwl_tdls_channel_switch_cmd_tail*, %struct.iwl_tdls_channel_switch_cmd_tail** %31, align 8
  %243 = getelementptr inbounds %struct.iwl_tdls_channel_switch_cmd_tail, %struct.iwl_tdls_channel_switch_cmd_tail* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @memcpy(i32 %245, i64 %248, i32 %251)
  %253 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %254 = load i32, i32* @TDLS_CHANNEL_SWITCH_CMD, align 4
  %255 = load i32, i32* %32, align 4
  %256 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %253, i32 %254, i32 0, i32 %255, %struct.iwl_tdls_channel_switch_cmd* %30)
  store i32 %256, i32* %33, align 4
  %257 = load i32, i32* %33, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %220
  %260 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %261 = load i32, i32* %33, align 4
  %262 = call i32 @IWL_ERR(%struct.iwl_mvm* %260, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %261)
  br label %290

263:                                              ; preds = %220
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* @TDLS_MOVE_CH, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %263
  %268 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %27, align 8
  %269 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %272 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  store i32 %270, i32* %273, align 8
  %274 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* @TDLS_SEND_CHAN_SW_REQ, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %267
  %279 = load i64, i64* @IWL_MVM_TDLS_SW_REQ_SENT, align 8
  br label %282

280:                                              ; preds = %267
  %281 = load i64, i64* @IWL_MVM_TDLS_SW_REQ_RCVD, align 8
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i64 [ %279, %278 ], [ %281, %280 ]
  %284 = call i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %274, i64 %283)
  br label %289

285:                                              ; preds = %263
  %286 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %287 = load i64, i64* @IWL_MVM_TDLS_SW_RESP_RCVD, align 8
  %288 = call i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %286, i64 %287)
  br label %289

289:                                              ; preds = %285, %282
  br label %290

290:                                              ; preds = %289, %259, %210, %152, %96, %69
  %291 = load i32, i32* %33, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load %struct.iwl_mvm*, %struct.iwl_mvm** %14, align 8
  %295 = load i64, i64* @IWL_MVM_TDLS_SW_IDLE, align 8
  %296 = call i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %294, i64 %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = load i32, i32* %33, align 4
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %297, %55
  %300 = load i32, i32* %13, align 4
  ret i32 %300
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_tdls_channel_switch_cmd_tail* @iwl_mvm_chan_info_cmd_tail(%struct.iwl_mvm*, i32*) #2

declare dso_local i32 @iwl_mvm_chan_info_padding(%struct.iwl_mvm*) #2

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @iwl_mvm_tdls_check_action(%struct.iwl_mvm*, i32, i32*, i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #2

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @iwl_mvm_set_chan_info_chandef(%struct.iwl_mvm*, i32*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @TU_TO_US(i32) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @iwl_mvm_set_tx_cmd_ccmp(%struct.ieee80211_tx_info*, i32*) #2

declare dso_local i32 @iwl_mvm_set_tx_cmd(%struct.iwl_mvm*, %struct.sk_buff*, i32*, %struct.ieee80211_tx_info*, i32) #2

declare dso_local i32 @iwl_mvm_set_tx_cmd_rate(%struct.iwl_mvm*, i32*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32) #2

declare dso_local i32 @memcpy(i32, i64, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tdls_channel_switch_cmd*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
