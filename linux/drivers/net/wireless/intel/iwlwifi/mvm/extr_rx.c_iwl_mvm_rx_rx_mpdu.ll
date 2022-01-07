; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_rx_rx_mpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_rx_rx_mpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32*, %struct.iwl_rx_phy_info }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rx_phy_info = type { i32, i32, i32, i32, i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_rx_mpdu_res_start = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_mvm_sta = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_fw_dbg_trigger_low_rssi = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Bad decryption results 0x%08x\0A\00", align 1
@RX_MPDU_RES_STATUS_CRC_OK = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_OVERRUN_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", align 1
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_BAND_24 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_PLCP_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Rssi %d, TSF %llu\0A\00", align 1
@RX_MPDU_RES_STATUS_SRC_STA_FOUND = common dso_local global i32 0, align 4
@RX_MPDU_RES_STATUS_STA_ID_MSK = common dso_local global i32 0, align 4
@RX_MDPU_RES_STATUS_STA_ID_SHIFT = common dso_local global i32 0, align 4
@FW_DBG_TRIGGER_RSSI = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_AGG = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RATE_INFO_BW_80 = common dso_local global i32 0, align 4
@RATE_INFO_BW_160 = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_HT_MCS_GF_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_HT_GF = common dso_local global i32 0, align 4
@RATE_MCS_LDPC_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_LDPC = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_MCS_STBC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_STBC_POS = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@RATE_HT_MCS_INDEX_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_STBC_SHIFT = common dso_local global i32 0, align 4
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_POS = common dso_local global i32 0, align 4
@RATE_VHT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@RX_ENC_VHT = common dso_local global i32 0, align 4
@RATE_MCS_BF_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_BF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid rate flags 0x%x, band %d,\0A\00", align 1
@SCHED_SCAN_PASS_ALL_ENABLED = common dso_local global i64 0, align 8
@SCHED_SCAN_PASS_ALL_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_rx_mpdu(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.iwl_rx_packet*, align 8
  %10 = alloca %struct.iwl_rx_phy_info*, align 8
  %11 = alloca %struct.iwl_rx_mpdu_res_start*, align 8
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.iwl_mvm_sta*, align 8
  %20 = alloca %struct.ieee80211_vif*, align 8
  %21 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %22 = alloca %struct.ieee80211_vif*, align 8
  %23 = alloca %struct.iwl_mvm_vif*, align 8
  %24 = alloca %struct.iwl_fw_dbg_trigger_low_rssi*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %6, align 8
  %29 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %30 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %29)
  store %struct.iwl_rx_packet* %30, %struct.iwl_rx_packet** %9, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %12, align 8
  store i32 0, i32* %17, align 4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 7
  store %struct.iwl_rx_phy_info* %32, %struct.iwl_rx_phy_info** %10, align 8
  %33 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %34 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.iwl_rx_mpdu_res_start*
  store %struct.iwl_rx_mpdu_res_start* %36, %struct.iwl_rx_mpdu_res_start** %11, align 8
  %37 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %38 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 4
  %41 = inttoptr i64 %40 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %41, %struct.ieee80211_hdr** %7, align 8
  %42 = load %struct.iwl_rx_mpdu_res_start*, %struct.iwl_rx_mpdu_res_start** %11, align 8
  %43 = getelementptr inbounds %struct.iwl_rx_mpdu_res_start, %struct.iwl_rx_mpdu_res_start* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %47 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 4
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @le32_to_cpup(i32* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.sk_buff* @alloc_skb(i32 128, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %13, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %3
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %61 = call i32 @IWL_ERR(%struct.iwl_mvm* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %574

62:                                               ; preds = %3
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %63)
  store %struct.ieee80211_rx_status* %64, %struct.ieee80211_rx_status** %8, align 8
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i64 @iwl_mvm_set_mac80211_rx_flag(%struct.iwl_mvm* %65, %struct.ieee80211_hdr* %66, %struct.ieee80211_rx_status* %67, i32 %68, i32* %17)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @IWL_DEBUG_DROP(%struct.iwl_mvm* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %574

77:                                               ; preds = %62
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @RX_MPDU_RES_STATUS_CRC_OK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @RX_MPDU_RES_STATUS_OVERRUN_OK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @IWL_DEBUG_RX(%struct.iwl_mvm* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %92 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %87, %82
  %97 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %98 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %103 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @le64_to_cpu(i32 %104)
  %106 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %106, i32 0, i32 11
  store i64 %105, i64* %107, align 8
  %108 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %109 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %112, i32 0, i32 12
  store i8* %111, i8** %113, align 8
  %114 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %115 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RX_RES_PHY_FLAGS_BAND_24, align 4
  %118 = call i32 @cpu_to_le16(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %96
  %122 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %125

123:                                              ; preds = %96
  %124 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  %129 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %130 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %134 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @ieee80211_channel_to_frequency(i32 %132, i32 %135)
  %137 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* @RX_FLAG_MACTIME_PLCP_START, align 4
  %140 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %141 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %145 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %146 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %147 = call i32 @iwl_mvm_get_signal_strength(%struct.iwl_mvm* %144, %struct.iwl_rx_phy_info* %145, %struct.ieee80211_rx_status* %146)
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %149 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %152, i32 0, i32 11
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_mvm* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %151, i64 %154)
  %156 = call i32 (...) @rcu_read_lock()
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* @RX_MPDU_RES_STATUS_SRC_STA_FOUND, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %125
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @RX_MPDU_RES_STATUS_STA_ID_MSK, align 4
  %164 = and i32 %162, %163
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* @RX_MDPU_RES_STATUS_STA_ID_SHIFT, align 4
  %166 = load i32, i32* %18, align 4
  %167 = ashr i32 %166, %165
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %169, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @ARRAY_SIZE(i32* %171)
  %173 = icmp sge i32 %168, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @WARN_ON_ONCE(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %161
  %178 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %179 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %178, i32 0, i32 6
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @rcu_dereference(i32 %184)
  %186 = bitcast i8* %185 to %struct.ieee80211_sta*
  store %struct.ieee80211_sta* %186, %struct.ieee80211_sta** %12, align 8
  %187 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %188 = call i64 @IS_ERR(%struct.ieee80211_sta* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %177
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %12, align 8
  br label %191

191:                                              ; preds = %190, %177
  br label %192

192:                                              ; preds = %191, %161
  br label %208

193:                                              ; preds = %125
  %194 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %195 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @is_multicast_ether_addr(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %193
  %200 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %201 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %204 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %202, i32 %205, i32* null)
  store %struct.ieee80211_sta* %206, %struct.ieee80211_sta** %12, align 8
  br label %207

207:                                              ; preds = %199, %193
  br label %208

208:                                              ; preds = %207, %192
  %209 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %210 = icmp ne %struct.ieee80211_sta* %209, null
  br i1 %210, label %211, label %328

211:                                              ; preds = %208
  %212 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %213 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %212)
  store %struct.iwl_mvm_sta* %213, %struct.iwl_mvm_sta** %19, align 8
  %214 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %215 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @rcu_dereference(i32 %216)
  %218 = bitcast i8* %217 to %struct.ieee80211_vif*
  store %struct.ieee80211_vif* %218, %struct.ieee80211_vif** %20, align 8
  %219 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %19, align 8
  %220 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %219, i32 0, i32 0
  %221 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %220, align 8
  store %struct.ieee80211_vif* %221, %struct.ieee80211_vif** %22, align 8
  %222 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %223 = ptrtoint %struct.ieee80211_vif* %222 to i32
  %224 = call i64 @unlikely(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %211
  %227 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %22, align 8
  %228 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %229 = icmp eq %struct.ieee80211_vif* %227, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %226
  %231 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %232 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %231)
  store %struct.iwl_mvm_vif* %232, %struct.iwl_mvm_vif** %23, align 8
  %233 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %23, align 8
  %234 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %237 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %235, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %230
  %241 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %242 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %243 = call i32 @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm* %241, %struct.ieee80211_sta* %242, i32 0)
  br label %244

244:                                              ; preds = %240, %230
  br label %245

245:                                              ; preds = %244, %226, %211
  %246 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %247 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %19, align 8
  %248 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %249 = call i32 @rs_update_last_rssi(%struct.iwl_mvm* %246, %struct.iwl_mvm_sta* %247, %struct.ieee80211_rx_status* %248)
  %250 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %251 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %250, i32 0, i32 3
  %252 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %22, align 8
  %253 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %252)
  %254 = load i32, i32* @FW_DBG_TRIGGER_RSSI, align 4
  %255 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %251, i32 %253, i32 %254)
  store %struct.iwl_fw_dbg_trigger_tlv* %255, %struct.iwl_fw_dbg_trigger_tlv** %21, align 8
  %256 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %21, align 8
  %257 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %256, null
  br i1 %257, label %258, label %286

258:                                              ; preds = %245
  %259 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %260 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @ieee80211_is_beacon(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %258
  %265 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %21, align 8
  %266 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i8*
  %269 = bitcast i8* %268 to %struct.iwl_fw_dbg_trigger_low_rssi*
  store %struct.iwl_fw_dbg_trigger_low_rssi* %269, %struct.iwl_fw_dbg_trigger_low_rssi** %24, align 8
  %270 = load %struct.iwl_fw_dbg_trigger_low_rssi*, %struct.iwl_fw_dbg_trigger_low_rssi** %24, align 8
  %271 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_low_rssi, %struct.iwl_fw_dbg_trigger_low_rssi* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @le32_to_cpu(i32 %272)
  %274 = ptrtoint i8* %273 to i64
  store i64 %274, i64* %25, align 8
  %275 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %276 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %25, align 8
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %264
  %281 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %282 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %281, i32 0, i32 3
  %283 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %21, align 8
  %284 = call i32 @iwl_fw_dbg_collect_trig(i32* %282, %struct.iwl_fw_dbg_trigger_tlv* %283, i32* null)
  br label %285

285:                                              ; preds = %280, %264
  br label %286

286:                                              ; preds = %285, %258, %245
  %287 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %288 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %316, label %292

292:                                              ; preds = %286
  %293 = load i32, i32* %14, align 4
  %294 = sext i32 %293 to i64
  %295 = icmp uge i64 %294, 12
  br i1 %295, label %296, label %316

296:                                              ; preds = %292
  %297 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %298 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @is_multicast_ether_addr(i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %296
  %303 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %304 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @ieee80211_is_data(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %302
  %309 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %310 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %311 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %312 = load i32, i32* %14, align 4
  %313 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %314 = load i32, i32* %15, align 4
  %315 = call i32 @iwl_mvm_rx_handle_tcm(%struct.iwl_mvm* %309, %struct.ieee80211_sta* %310, %struct.ieee80211_hdr* %311, i32 %312, %struct.iwl_rx_phy_info* %313, i32 %314)
  br label %316

316:                                              ; preds = %308, %302, %296, %292, %286
  %317 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %318 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @ieee80211_is_data(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %324 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %325 = load i32, i32* %16, align 4
  %326 = call i32 @iwl_mvm_rx_csum(%struct.ieee80211_sta* %323, %struct.sk_buff* %324, i32 %325)
  br label %327

327:                                              ; preds = %322, %316
  br label %328

328:                                              ; preds = %327, %208
  %329 = call i32 (...) @rcu_read_unlock()
  %330 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %331 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @RX_RES_PHY_FLAGS_SHORT_PREAMBLE, align 4
  %334 = call i32 @cpu_to_le16(i32 %333)
  %335 = and i32 %332, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %328
  %338 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %339 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %340 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 8
  br label %343

343:                                              ; preds = %337, %328
  %344 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %10, align 8
  %345 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @RX_RES_PHY_FLAGS_AGG, align 4
  %348 = call i32 @cpu_to_le16(i32 %347)
  %349 = and i32 %346, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %362

351:                                              ; preds = %343
  %352 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %353 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %354 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  %357 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %358 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %361 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %360, i32 0, i32 10
  store i32 %359, i32* %361, align 4
  br label %362

362:                                              ; preds = %351, %343
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %365 = and i32 %363, %364
  switch i32 %365, label %379 [
    i32 130, label %366
    i32 129, label %367
    i32 128, label %371
    i32 131, label %375
  ]

366:                                              ; preds = %362
  br label %379

367:                                              ; preds = %362
  %368 = load i32, i32* @RATE_INFO_BW_40, align 4
  %369 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %370 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %369, i32 0, i32 9
  store i32 %368, i32* %370, align 8
  br label %379

371:                                              ; preds = %362
  %372 = load i32, i32* @RATE_INFO_BW_80, align 4
  %373 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %374 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %373, i32 0, i32 9
  store i32 %372, i32* %374, align 8
  br label %379

375:                                              ; preds = %362
  %376 = load i32, i32* @RATE_INFO_BW_160, align 4
  %377 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %378 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %377, i32 0, i32 9
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %362, %375, %371, %367, %366
  %380 = load i32, i32* %15, align 4
  %381 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %395, label %384

384:                                              ; preds = %379
  %385 = load i32, i32* %15, align 4
  %386 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %384
  %390 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %391 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %392 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = or i32 %393, %390
  store i32 %394, i32* %392, align 8
  br label %395

395:                                              ; preds = %389, %384, %379
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %395
  %401 = load i32, i32* @RX_ENC_FLAG_HT_GF, align 4
  %402 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %403 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 8
  br label %406

406:                                              ; preds = %400, %395
  %407 = load i32, i32* %15, align 4
  %408 = load i32, i32* @RATE_MCS_LDPC_MSK, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %406
  %412 = load i32, i32* @RX_ENC_FLAG_LDPC, align 4
  %413 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %414 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %411, %406
  %418 = load i32, i32* %15, align 4
  %419 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %443

422:                                              ; preds = %417
  %423 = load i32, i32* %15, align 4
  %424 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %425 = and i32 %423, %424
  %426 = load i32, i32* @RATE_MCS_STBC_POS, align 4
  %427 = ashr i32 %425, %426
  store i32 %427, i32* %26, align 4
  %428 = load i32, i32* @RX_ENC_HT, align 4
  %429 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %430 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %429, i32 0, i32 8
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* %15, align 4
  %432 = load i32, i32* @RATE_HT_MCS_INDEX_MSK, align 4
  %433 = and i32 %431, %432
  %434 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %435 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %434, i32 0, i32 4
  store i32 %433, i32* %435, align 4
  %436 = load i32, i32* %26, align 4
  %437 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %438 = shl i32 %436, %437
  %439 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %440 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 8
  %442 = or i32 %441, %438
  store i32 %442, i32* %440, align 8
  br label %516

443:                                              ; preds = %417
  %444 = load i32, i32* %15, align 4
  %445 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %488

448:                                              ; preds = %443
  %449 = load i32, i32* %15, align 4
  %450 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %451 = and i32 %449, %450
  %452 = load i32, i32* @RATE_MCS_STBC_POS, align 4
  %453 = ashr i32 %451, %452
  store i32 %453, i32* %27, align 4
  %454 = load i32, i32* %15, align 4
  %455 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %456 = and i32 %454, %455
  %457 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %458 = ashr i32 %456, %457
  %459 = add nsw i32 %458, 1
  %460 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %461 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %460, i32 0, i32 5
  store i32 %459, i32* %461, align 8
  %462 = load i32, i32* %15, align 4
  %463 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %464 = and i32 %462, %463
  %465 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %466 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %465, i32 0, i32 4
  store i32 %464, i32* %466, align 4
  %467 = load i32, i32* @RX_ENC_VHT, align 4
  %468 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %469 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %468, i32 0, i32 8
  store i32 %467, i32* %469, align 4
  %470 = load i32, i32* %27, align 4
  %471 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %472 = shl i32 %470, %471
  %473 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %474 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = or i32 %475, %472
  store i32 %476, i32* %474, align 8
  %477 = load i32, i32* %15, align 4
  %478 = load i32, i32* @RATE_MCS_BF_MSK, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %487

481:                                              ; preds = %448
  %482 = load i32, i32* @RX_ENC_FLAG_BF, align 4
  %483 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %484 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = or i32 %485, %482
  store i32 %486, i32* %484, align 8
  br label %487

487:                                              ; preds = %481, %448
  br label %515

488:                                              ; preds = %443
  %489 = load i32, i32* %15, align 4
  %490 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %491 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %490, i32 0, i32 7
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %489, i32 %492)
  store i32 %493, i32* %28, align 4
  %494 = load i32, i32* %28, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %488
  %497 = load i32, i32* %28, align 4
  %498 = icmp sgt i32 %497, 255
  br label %499

499:                                              ; preds = %496, %488
  %500 = phi i1 [ true, %488 ], [ %498, %496 ]
  %501 = zext i1 %500 to i32
  %502 = load i32, i32* %15, align 4
  %503 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %504 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %503, i32 0, i32 7
  %505 = load i32, i32* %504, align 8
  %506 = call i64 @WARN(i32 %501, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %502, i32 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %499
  %509 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %510 = call i32 @kfree_skb(%struct.sk_buff* %509)
  br label %574

511:                                              ; preds = %499
  %512 = load i32, i32* %28, align 4
  %513 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %514 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %513, i32 0, i32 4
  store i32 %512, i32* %514, align 4
  br label %515

515:                                              ; preds = %511, %487
  br label %516

516:                                              ; preds = %515, %422
  %517 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %518 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = call i64 @ieee80211_is_beacon(i32 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %528, label %522

522:                                              ; preds = %516
  %523 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %524 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = call i64 @ieee80211_is_probe_resp(i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %522, %516
  %529 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %530 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @SCHED_SCAN_PASS_ALL_ENABLED, align 8
  %533 = icmp eq i64 %531, %532
  br label %534

534:                                              ; preds = %528, %522
  %535 = phi i1 [ false, %522 ], [ %533, %528 ]
  %536 = zext i1 %535 to i32
  %537 = call i64 @unlikely(i32 %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %543

539:                                              ; preds = %534
  %540 = load i64, i64* @SCHED_SCAN_PASS_ALL_FOUND, align 8
  %541 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %542 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %541, i32 0, i32 0
  store i64 %540, i64* %542, align 8
  br label %543

543:                                              ; preds = %539, %534
  %544 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %545 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = call i64 @ieee80211_is_beacon(i32 %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %543
  %550 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %551 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = call i64 @ieee80211_is_probe_resp(i32 %552)
  %554 = icmp ne i64 %553, 0
  br label %555

555:                                              ; preds = %549, %543
  %556 = phi i1 [ true, %543 ], [ %554, %549 ]
  %557 = zext i1 %556 to i32
  %558 = call i64 @unlikely(i32 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %564

560:                                              ; preds = %555
  %561 = call i32 (...) @ktime_get_boottime_ns()
  %562 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %563 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %562, i32 0, i32 6
  store i32 %561, i32* %563, align 4
  br label %564

564:                                              ; preds = %560, %555
  %565 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %566 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %567 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %568 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %569 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %570 = load i32, i32* %14, align 4
  %571 = load i32, i32* %17, align 4
  %572 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %573 = call i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm* %565, %struct.ieee80211_sta* %566, %struct.napi_struct* %567, %struct.sk_buff* %568, %struct.ieee80211_hdr* %569, i32 %570, i32 %571, %struct.iwl_rx_cmd_buffer* %572)
  br label %574

574:                                              ; preds = %564, %508, %71, %59
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @iwl_mvm_set_mac80211_rx_flag(%struct.iwl_mvm*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @iwl_mvm_get_signal_strength(%struct.iwl_mvm*, %struct.iwl_rx_phy_info*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_mvm*, i8*, i64, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_sta*) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_update_last_rssi(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, %struct.ieee80211_rx_status*) #1

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i32*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @iwl_mvm_rx_handle_tcm(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.ieee80211_hdr*, i32, %struct.iwl_rx_phy_info*, i32) #1

declare dso_local i32 @iwl_mvm_rx_csum(%struct.ieee80211_sta*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.napi_struct*, %struct.sk_buff*, %struct.ieee80211_hdr*, i32, i32, %struct.iwl_rx_cmd_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
