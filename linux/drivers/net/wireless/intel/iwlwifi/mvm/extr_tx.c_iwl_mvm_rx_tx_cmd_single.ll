; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32, i32, i32 }
%struct.iwl_rx_packet = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_tx_resp = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.agg_tx_status = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i8**, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.iwl_mvm_sta = type { i64, i32, i64, i32, %struct.iwl_mvm_tid_data*, i32 }
%struct.iwl_mvm_tid_data = type { i8* }

@TX_STATUS_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_TX_FILTERED = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU_NO_BACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"TXQ %d status %s (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"\09\09\09\09initial_rate 0x%x retries %d, idx=%d ssn=%d next_reclaimed=0x%x seq_ctl=0x%x\0A\00", align 1
@IEEE80211_STA_AUTHORIZED = common dso_local global i64 0, align 8
@IWL_MGMT_TID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Next reclaimed packet:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"NDP - don't update next_reclaimed\0A\00", align 1
@IEEE80211_FRAME_RELEASE_UAPSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_packet*)* @iwl_mvm_rx_tx_cmd_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_tx_cmd_single(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm_tx_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.agg_tx_status*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sk_buff_head, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca %struct.ieee80211_tx_info*, align 8
  %22 = alloca %struct.ieee80211_hdr*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ieee80211_hdr*, align 8
  %25 = alloca %struct.iwl_mvm_sta*, align 8
  %26 = alloca %struct.iwl_mvm_tid_data*, align 8
  %27 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %28 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @le16_to_cpu(i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @SEQ_TO_QUEUE(i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.iwl_mvm_tx_resp*
  store %struct.iwl_mvm_tx_resp* %39, %struct.iwl_mvm_tx_resp** %8, align 8
  %40 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IWL_MVM_TX_RES_GET_RA(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IWL_MVM_TX_RES_GET_TID(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %50 = call %struct.agg_tx_status* @iwl_mvm_get_agg_status(%struct.iwl_mvm* %48, %struct.iwl_mvm_tx_resp* %49)
  store %struct.agg_tx_status* %50, %struct.agg_tx_status** %11, align 8
  %51 = load %struct.agg_tx_status*, %struct.agg_tx_status** %11, align 8
  %52 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le16_to_cpu(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %57 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %58 = call i8* @iwl_mvm_get_scd_ssn(%struct.iwl_mvm* %56, %struct.iwl_mvm_tx_resp* %57)
  store i8* %58, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %59 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %14)
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %2
  %64 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @le16_to_cpu(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %2
  %70 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le16_to_cpu(i32 %72)
  store i8* %73, i8** %18, align 8
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @iwl_trans_reclaim(i32 %76, i32 %77, i8* %78, %struct.sk_buff_head* %14)
  br label %80

80:                                               ; preds = %251, %69
  %81 = call i32 @skb_queue_empty(%struct.sk_buff_head* %14)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %286

84:                                               ; preds = %80
  %85 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %14)
  store %struct.sk_buff* %85, %struct.sk_buff** %20, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %87 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %86)
  store %struct.ieee80211_tx_info* %87, %struct.ieee80211_tx_info** %21, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = bitcast i8* %91 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %92, %struct.ieee80211_hdr** %22, align 8
  store i32 0, i32* %23, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @iwl_trans_free_tx_cmd(i32 %97, i32 %102)
  %104 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %104, i32 0, i32 1
  %106 = call i32 @memset(%struct.TYPE_6__* %105, i32 0, i32 24)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @TX_STATUS_MSK, align 4
  %109 = and i32 %107, %108
  switch i32 %109, label %124 [
    i32 128, label %110
    i32 132, label %110
    i32 129, label %116
    i32 130, label %116
    i32 131, label %117
  ]

110:                                              ; preds = %84, %84
  %111 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %112 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %125

116:                                              ; preds = %84, %84
  store i32 1, i32* %23, align 4
  br label %125

117:                                              ; preds = %84
  %118 = call i32 @WARN_ON(i32 1)
  %119 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %125

124:                                              ; preds = %84
  br label %125

125:                                              ; preds = %124, %117, %116, %110
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @TX_STATUS_MSK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %132 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @ieee80211_is_mgmt(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %138 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %139 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %138, i32 0, i32 2
  %140 = call i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm* %137, i32* %139)
  br label %141

141:                                              ; preds = %136, %130, %125
  %142 = load i32, i32* %15, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %146 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %141
  %151 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @iwl_mvm_tx_status_check_trigger(%struct.iwl_mvm* %151, i32 %152)
  %154 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  %158 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %159 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i64 %157, i64* %163, align 8
  %164 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %165 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @le32_to_cpu(i32 %166)
  %168 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %169 = call i32 @iwl_mvm_hwrate_to_tx_status(i64 %167, %struct.ieee80211_tx_info* %168)
  %170 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %171 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @le32_to_cpu(i32 %172)
  %174 = inttoptr i64 %173 to i8*
  %175 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %176 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  store i8* %174, i8** %179, align 8
  %180 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %181 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %150
  %187 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %188 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %209, label %193

193:                                              ; preds = %186
  %194 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %195 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %23, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* @IEEE80211_TX_STAT_AMPDU_NO_BACK, align 4
  %205 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %206 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %203, %200, %193, %186, %150
  %210 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %213 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %217 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @ieee80211_is_back_req(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %209
  store i8* null, i8** %18, align 8
  br label %231

222:                                              ; preds = %209
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 128
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %227 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @le16_to_cpu(i32 %228)
  store i8* %229, i8** %18, align 8
  br label %230

230:                                              ; preds = %225, %222
  br label %231

231:                                              ; preds = %230, %221
  %232 = load i8*, i8** %18, align 8
  %233 = icmp ne i8* %232, null
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %231
  %239 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = bitcast i8* %242 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %243, %struct.ieee80211_hdr** %24, align 8
  %244 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %245 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @ieee80211_is_qos_nullfunc(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  store i32 1, i32* %19, align 4
  br label %250

250:                                              ; preds = %249, %238
  br label %251

251:                                              ; preds = %250, %231
  %252 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %253 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i8* @le16_to_cpu(i32 %254)
  %256 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %257 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  store i8* %255, i8** %258, align 8
  %259 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %260 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i8**, i8*** %261, align 8
  %263 = call i32 @ARRAY_SIZE(i8** %262)
  %264 = icmp slt i32 %263, 1
  %265 = zext i1 %264 to i32
  %266 = call i32 @BUILD_BUG_ON(i32 %265)
  %267 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %268 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @TX_RES_RATE_TABLE_COL_GET(i32 %269)
  store i32 %270, i32* %16, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %273 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = call i8* @RS_DRV_DATA_PACK(i32 %271, i32 %274)
  %276 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %277 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i8**, i8*** %278, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 0
  store i8* %275, i8** %280, align 8
  %281 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %282 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %285 = call i32 @ieee80211_tx_status(i32 %283, %struct.sk_buff* %284)
  br label %80

286:                                              ; preds = %80
  %287 = load i8*, i8** %13, align 8
  store i8* %287, i8** %17, align 8
  %288 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @iwl_mvm_get_tx_fail_reason(i32 %290)
  %292 = load i32, i32* %12, align 4
  %293 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %288, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %289, i32 %291, i32 %292)
  %294 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %295 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %296 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = call i64 @le32_to_cpu(i32 %297)
  %299 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %300 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i8*, i8** %6, align 8
  %303 = call i32 @SEQ_TO_INDEX(i8* %302)
  %304 = load i8*, i8** %13, align 8
  %305 = load i8*, i8** %17, align 8
  %306 = load i8*, i8** %18, align 8
  %307 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %294, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %298, i64 %301, i32 %303, i8* %304, i8* %305, i8* %306)
  %308 = call i32 (...) @rcu_read_lock()
  %309 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %310 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call %struct.ieee80211_sta* @rcu_dereference(i32 %315)
  store %struct.ieee80211_sta* %316, %struct.ieee80211_sta** %5, align 8
  %317 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %318 = icmp ne %struct.ieee80211_sta* %317, null
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i32
  %321 = call i64 @WARN_ON_ONCE(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %286
  br label %439

324:                                              ; preds = %286
  %325 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %326 = call i32 @IS_ERR(%struct.ieee80211_sta* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %438, label %328

328:                                              ; preds = %324
  %329 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %330 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %329)
  store %struct.iwl_mvm_sta* %330, %struct.iwl_mvm_sta** %25, align 8
  %331 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %332 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %333 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %8, align 8
  %334 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i8* @le16_to_cpu(i32 %335)
  %337 = call i32 @iwl_mvm_tx_airtime(%struct.iwl_mvm* %331, %struct.iwl_mvm_sta* %332, i8* %336)
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* @TX_STATUS_MSK, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 128
  br i1 %341, label %342, label %353

342:                                              ; preds = %328
  %343 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %344 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @IEEE80211_STA_AUTHORIZED, align 8
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %342
  %349 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %350 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %351 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %350, i32 0, i32 5
  %352 = call i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm* %349, i32* %351)
  br label %353

353:                                              ; preds = %348, %342, %328
  %354 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %355 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %427

358:                                              ; preds = %353
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* @IWL_MGMT_TID, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %427

362:                                              ; preds = %358
  %363 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %364 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %363, i32 0, i32 4
  %365 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %365, i64 %367
  store %struct.iwl_mvm_tid_data* %368, %struct.iwl_mvm_tid_data** %26, align 8
  store i32 0, i32* %27, align 4
  %369 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %370 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %369, i32 0, i32 3
  %371 = call i32 @spin_lock_bh(i32* %370)
  %372 = load i32, i32* %19, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %381, label %374

374:                                              ; preds = %362
  %375 = load i8*, i8** %17, align 8
  %376 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %26, align 8
  %377 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %376, i32 0, i32 0
  store i8* %375, i8** %377, align 8
  %378 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %379 = load i8*, i8** %17, align 8
  %380 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %378, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %379)
  br label %384

381:                                              ; preds = %362
  %382 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %383 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %382, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %384

384:                                              ; preds = %381, %374
  %385 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %386 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %387 = load i32, i32* %10, align 4
  %388 = call i32 @iwl_mvm_check_ratid_empty(%struct.iwl_mvm* %385, %struct.ieee80211_sta* %386, i32 %387)
  %389 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %390 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %409

393:                                              ; preds = %384
  %394 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %395 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %396, -1
  store i64 %397, i64* %395, align 8
  %398 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %399 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %393
  %403 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %404 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %26, align 8
  %405 = call i32 @iwl_mvm_tid_queued(%struct.iwl_mvm* %403, %struct.iwl_mvm_tid_data* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %402
  store i32 1, i32* %27, align 4
  br label %408

408:                                              ; preds = %407, %402, %393
  br label %409

409:                                              ; preds = %408, %384
  %410 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %411 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %410, i32 0, i32 3
  %412 = call i32 @spin_unlock_bh(i32* %411)
  %413 = load i32, i32* %27, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %426

415:                                              ; preds = %409
  %416 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %417 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %418 = load i32, i32* @IEEE80211_FRAME_RELEASE_UAPSD, align 4
  %419 = load i32, i32* %10, align 4
  %420 = call i32 @iwl_mvm_sta_modify_sleep_tx_count(%struct.iwl_mvm* %416, %struct.ieee80211_sta* %417, i32 %418, i32 1, i32 %419, i32 0, i32 0)
  %421 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %422 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %421, i32 0, i32 2
  store i64 0, i64* %422, align 8
  %423 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %424 = load i32, i32* %10, align 4
  %425 = call i32 @ieee80211_send_eosp_nullfunc(%struct.ieee80211_sta* %423, i32 %424)
  br label %426

426:                                              ; preds = %415, %409
  br label %427

427:                                              ; preds = %426, %358, %353
  %428 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %429 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %427
  %433 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %25, align 8
  %434 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %433, i32 0, i32 1
  store i32 0, i32* %434, align 8
  %435 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %436 = call i32 @ieee80211_sta_eosp(%struct.ieee80211_sta* %435)
  br label %437

437:                                              ; preds = %432, %427
  br label %438

438:                                              ; preds = %437, %324
  br label %439

439:                                              ; preds = %438, %323
  %440 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i8*) #1

declare dso_local i32 @IWL_MVM_TX_RES_GET_RA(i32) #1

declare dso_local i32 @IWL_MVM_TX_RES_GET_TID(i32) #1

declare dso_local %struct.agg_tx_status* @iwl_mvm_get_agg_status(%struct.iwl_mvm*, %struct.iwl_mvm_tx_resp*) #1

declare dso_local i8* @iwl_mvm_get_scd_ssn(%struct.iwl_mvm*, %struct.iwl_mvm_tx_resp*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_trans_reclaim(i32, i32, i8*, %struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_tx_status_check_trigger(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_hwrate_to_tx_status(i64, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @TX_RES_RATE_TABLE_COL_GET(i32) #1

declare dso_local i8* @RS_DRV_DATA_PACK(i32, i32) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_get_tx_fail_reason(i32) #1

declare dso_local i32 @SEQ_TO_INDEX(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_tx_airtime(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_check_ratid_empty(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_tid_queued(%struct.iwl_mvm*, %struct.iwl_mvm_tid_data*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_sta_modify_sleep_tx_count(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_send_eosp_nullfunc(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_sta_eosp(%struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
