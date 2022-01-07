; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_mpdu_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_mpdu_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i64, i32, i64, %struct.TYPE_10__*, i32, %struct.TYPE_8__, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i32, i64 }
%struct.iwl_rx_mpdu_desc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_mvm_rx_phy_data = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_mvm_sta = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_fw_dbg_trigger_low_rssi = type { i32 }

@IWL_RX_PHY_INFO_TYPE_NONE = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@IWL_RX_DESC_SIZE_V1 = common dso_local global i64 0, align 8
@IWL_RX_MPDU_PHY_TSF_OVERLOAD = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA1_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@IWL_RX_MPDU_MFLG2_PAD = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RATE_INFO_BW_80 = common dso_local global i32 0, align 4
@RATE_INFO_BW_160 = common dso_local global i32 0, align 4
@RATE_MCS_HE_MSK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_CRC_OK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_OVERRUN_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", align 1
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_PHY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_PLCP_START = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IWL_RX_MPDU_PHY_AMPDU = common dso_local global i32 0, align 4
@IWL_RX_MPDU_PHY_AMPDU_TOGGLE = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@IWL_RX_MPDU_STATUS_SRC_STA_FOUND = common dso_local global i32 0, align 4
@IWL_RX_MPDU_SIF_STA_ID_MASK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_REORDER_BAID_MASK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_REORDER_BAID_SHIFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MVM_TCM_PERIOD = common dso_local global i64 0, align 8
@FW_DBG_TRIGGER_RSSI = common dso_local global i32 0, align 4
@IWL_RX_MPDU_MFLG2_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_A_MSDU_PRESENT = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_9000 = common dso_local global i64 0, align 8
@IWL_RX_REORDER_DATA_INVALID_BAID = common dso_local global i32 0, align 4
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
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid rate flags 0x%x, band %d,\0A\00", align 1
@SCHED_SCAN_PASS_ALL_ENABLED = common dso_local global i64 0, align 8
@SCHED_SCAN_PASS_ALL_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_mpdu_mq(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.iwl_rx_packet*, align 8
  %11 = alloca %struct.iwl_rx_mpdu_desc*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_sta*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.iwl_mvm_rx_phy_data, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.iwl_mvm_sta*, align 8
  %30 = alloca %struct.ieee80211_vif*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %33 = alloca %struct.ieee80211_vif*, align 8
  %34 = alloca %struct.iwl_mvm_vif*, align 8
  %35 = alloca %struct.iwl_fw_dbg_trigger_low_rssi*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %42 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %43 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %42)
  store %struct.iwl_rx_packet* %43, %struct.iwl_rx_packet** %10, align 8
  %44 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %45 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = bitcast i8* %47 to %struct.iwl_rx_mpdu_desc*
  store %struct.iwl_rx_mpdu_desc* %48, %struct.iwl_rx_mpdu_desc** %11, align 8
  %49 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %50 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %54 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  store i32 %56, i32* %16, align 4
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %17, align 8
  store i32 0, i32* %19, align 4
  %57 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 1
  %59 = load i32, i32* @IWL_RX_PHY_INFO_TYPE_NONE, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 4
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 5
  %64 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %65 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %63, align 4
  store i32 0, i32* %25, align 4
  %67 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 10
  %70 = call i32 @test_bit(i32 %67, i32* %69)
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %4
  br label %916

74:                                               ; preds = %4
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %74
  %85 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %86 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %91 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %20, align 4
  %94 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %95 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %100 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %21, align 4
  %103 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %104 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %22, align 4
  store i64 108, i64* %23, align 8
  %107 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %108 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 4
  store i32 %110, i32* %111, align 4
  %112 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %113 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %118 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %123 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  br label %171

127:                                              ; preds = %74
  %128 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %129 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le32_to_cpu(i32 %131)
  store i32 %132, i32* %14, align 4
  %133 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %134 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %20, align 4
  %137 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %138 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le32_to_cpu(i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %143 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %21, align 4
  %146 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %147 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %22, align 4
  %150 = load i64, i64* @IWL_RX_DESC_SIZE_V1, align 8
  store i64 %150, i64* %23, align 8
  %151 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %152 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 4
  store i32 %154, i32* %155, align 4
  %156 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %157 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %162 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 3
  store i32 %164, i32* %165, align 4
  %166 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %167 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 2
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %127, %84
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* @IWL_RX_MPDU_PHY_TSF_OVERLOAD, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IWL_RX_PHY_DATA1_INFO_TYPE_MASK, align 4
  %180 = call i32 @le32_get_bits(i32 %178, i32 %179)
  %181 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %24, i32 0, i32 1
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %171
  %183 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %184 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %23, align 8
  %187 = add i64 %185, %186
  %188 = inttoptr i64 %187 to i8*
  %189 = bitcast i8* %188 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %189, %struct.ieee80211_hdr** %12, align 8
  %190 = load i32, i32* @GFP_ATOMIC, align 4
  %191 = call %struct.sk_buff* @alloc_skb(i32 128, i32 %190)
  store %struct.sk_buff* %191, %struct.sk_buff** %18, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %193 = icmp ne %struct.sk_buff* %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %182
  %195 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %196 = call i32 @IWL_ERR(%struct.iwl_mvm* %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %916

197:                                              ; preds = %182
  %198 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %199 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IWL_RX_MPDU_MFLG2_PAD, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %206 = call i32 @skb_reserve(%struct.sk_buff* %205, i32 2)
  br label %207

207:                                              ; preds = %204, %197
  %208 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %209 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %208)
  store %struct.ieee80211_rx_status* %209, %struct.ieee80211_rx_status** %9, align 8
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %212 = and i32 %210, %211
  switch i32 %212, label %226 [
    i32 130, label %213
    i32 129, label %214
    i32 128, label %218
    i32 131, label %222
  ]

213:                                              ; preds = %207
  br label %226

214:                                              ; preds = %207
  %215 = load i32, i32* @RATE_INFO_BW_40, align 4
  %216 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %217 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %216, i32 0, i32 12
  store i32 %215, i32* %217, align 4
  br label %226

218:                                              ; preds = %207
  %219 = load i32, i32* @RATE_INFO_BW_80, align 4
  %220 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %221 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %220, i32 0, i32 12
  store i32 %219, i32* %221, align 4
  br label %226

222:                                              ; preds = %207
  %223 = load i32, i32* @RATE_INFO_BW_160, align 4
  %224 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %225 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %224, i32 0, i32 12
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %207, %222, %218, %214, %213
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @iwl_mvm_rx_he(%struct.iwl_mvm* %232, %struct.sk_buff* %233, %struct.iwl_mvm_rx_phy_data* %24, i32 %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %231, %226
  %239 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %240 = call i32 @iwl_mvm_decode_lsig(%struct.sk_buff* %239, %struct.iwl_mvm_rx_phy_data* %24)
  %241 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %242 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %241)
  store %struct.ieee80211_rx_status* %242, %struct.ieee80211_rx_status** %9, align 8
  %243 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %244 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %245 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %246 = load i32, i32* %16, align 4
  %247 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %248 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %249 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @le32_to_cpu(i32 %250)
  %252 = load i32, i32* %8, align 4
  %253 = call i64 @iwl_mvm_rx_crypto(%struct.iwl_mvm* %243, %struct.ieee80211_hdr* %244, %struct.ieee80211_rx_status* %245, i32 %246, %struct.iwl_rx_mpdu_desc* %247, i32 %251, i32 %252, i32* %19)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %238
  %256 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %257 = call i32 @kfree_skb(%struct.sk_buff* %256)
  br label %916

258:                                              ; preds = %238
  %259 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %260 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @IWL_RX_MPDU_STATUS_CRC_OK, align 4
  %263 = call i32 @cpu_to_le16(i32 %262)
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %268 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @IWL_RX_MPDU_STATUS_OVERRUN_OK, align 4
  %271 = call i32 @cpu_to_le16(i32 %270)
  %272 = and i32 %269, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %266, %258
  %275 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %276 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %277 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @le16_to_cpu(i32 %278)
  %280 = call i32 @IWL_DEBUG_RX(%struct.iwl_mvm* %275, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %279)
  %281 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %282 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %283 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %274, %266
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %286
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* @IWL_RX_MPDU_PHY_SHORT_PREAMBLE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %298 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %299 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %296, %291, %286
  %303 = load i32, i32* %16, align 4
  %304 = load i32, i32* @IWL_RX_MPDU_PHY_TSF_OVERLOAD, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = call i64 @likely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %342

311:                                              ; preds = %302
  %312 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %313 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %312, i32 0, i32 4
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %320 = icmp sge i64 %318, %319
  br i1 %320, label %321, label %327

321:                                              ; preds = %311
  %322 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %323 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @le64_to_cpu(i32 %325)
  store i32 %326, i32* %26, align 4
  br label %333

327:                                              ; preds = %311
  %328 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %329 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %328, i32 0, i32 6
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @le64_to_cpu(i32 %331)
  store i32 %332, i32* %26, align 4
  br label %333

333:                                              ; preds = %327, %321
  %334 = load i32, i32* %26, align 4
  %335 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %336 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %335, i32 0, i32 11
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* @RX_FLAG_MACTIME_PLCP_START, align 4
  %338 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %339 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %338, i32 0, i32 10
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %333, %302
  %343 = load i32, i32* %15, align 4
  %344 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %345 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* %20, align 4
  %347 = icmp sgt i32 %346, 14
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %352

350:                                              ; preds = %342
  %351 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %352

352:                                              ; preds = %350, %348
  %353 = phi i32 [ %349, %348 ], [ %351, %350 ]
  %354 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %355 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %354, i32 0, i32 8
  store i32 %353, i32* %355, align 4
  %356 = load i32, i32* %20, align 4
  %357 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %358 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 4
  %360 = call i64 @ieee80211_channel_to_frequency(i32 %356, i32 %359)
  %361 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %362 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %361, i32 0, i32 2
  store i64 %360, i64* %362, align 8
  %363 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %364 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* %21, align 4
  %367 = load i32, i32* %22, align 4
  %368 = call i32 @iwl_mvm_get_signal_strength(%struct.iwl_mvm* %363, %struct.ieee80211_rx_status* %364, i32 %365, i32 %366, i32 %367)
  %369 = load i32, i32* %8, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %414, label %371

371:                                              ; preds = %352
  %372 = load i32, i32* %16, align 4
  %373 = load i32, i32* @IWL_RX_MPDU_PHY_AMPDU, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %414

376:                                              ; preds = %371
  %377 = load i32, i32* %16, align 4
  %378 = load i32, i32* @IWL_RX_MPDU_PHY_AMPDU_TOGGLE, align 4
  %379 = and i32 %377, %378
  store i32 %379, i32* %27, align 4
  %380 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %381 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %382 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %381, i32 0, i32 10
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load i32, i32* %27, align 4
  %386 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %387 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %385, %388
  br i1 %389, label %390, label %408

390:                                              ; preds = %376
  %391 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %392 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = add nsw i64 %393, 1
  store i64 %394, i64* %392, align 8
  %395 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %396 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %390
  %400 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %401 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %402, 1
  store i64 %403, i64* %401, align 8
  br label %404

404:                                              ; preds = %399, %390
  %405 = load i32, i32* %27, align 4
  %406 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %407 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 8
  br label %408

408:                                              ; preds = %404, %376
  %409 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %410 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %413 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %412, i32 0, i32 3
  store i64 %411, i64* %413, align 8
  br label %414

414:                                              ; preds = %408, %371, %352
  %415 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %416 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i64 @unlikely(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %414
  %421 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %422 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %423 = call i32 @iwl_mvm_add_rtap_sniffer_config(%struct.iwl_mvm* %421, %struct.sk_buff* %422)
  br label %424

424:                                              ; preds = %420, %414
  %425 = call i32 (...) @rcu_read_lock()
  %426 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %427 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @IWL_RX_MPDU_STATUS_SRC_STA_FOUND, align 4
  %430 = call i32 @cpu_to_le16(i32 %429)
  %431 = and i32 %428, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %464

433:                                              ; preds = %424
  %434 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %435 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @IWL_RX_MPDU_SIF_STA_ID_MASK, align 4
  %438 = and i32 %436, %437
  store i32 %438, i32* %28, align 4
  %439 = load i32, i32* %28, align 4
  %440 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %441 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %440, i32 0, i32 9
  %442 = load i32*, i32** %441, align 8
  %443 = call i32 @ARRAY_SIZE(i32* %442)
  %444 = icmp sge i32 %439, %443
  %445 = zext i1 %444 to i32
  %446 = call i32 @WARN_ON_ONCE(i32 %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %463, label %448

448:                                              ; preds = %433
  %449 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %450 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %449, i32 0, i32 9
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %28, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = call i8* @rcu_dereference(i32 %455)
  %457 = bitcast i8* %456 to %struct.ieee80211_sta*
  store %struct.ieee80211_sta* %457, %struct.ieee80211_sta** %17, align 8
  %458 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %459 = call i64 @IS_ERR(%struct.ieee80211_sta* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %448
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %17, align 8
  br label %462

462:                                              ; preds = %461, %448
  br label %463

463:                                              ; preds = %462, %433
  br label %479

464:                                              ; preds = %424
  %465 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %466 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @is_multicast_ether_addr(i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %478, label %470

470:                                              ; preds = %464
  %471 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %472 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %471, i32 0, i32 8
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %475 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %473, i32 %476, i32* null)
  store %struct.ieee80211_sta* %477, %struct.ieee80211_sta** %17, align 8
  br label %478

478:                                              ; preds = %470, %464
  br label %479

479:                                              ; preds = %478, %463
  %480 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %481 = icmp ne %struct.ieee80211_sta* %480, null
  br i1 %481, label %482, label %689

482:                                              ; preds = %479
  %483 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %484 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %483)
  store %struct.iwl_mvm_sta* %484, %struct.iwl_mvm_sta** %29, align 8
  %485 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %486 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %485, i32 0, i32 7
  %487 = load i32, i32* %486, align 8
  %488 = call i8* @rcu_dereference(i32 %487)
  %489 = bitcast i8* %488 to %struct.ieee80211_vif*
  store %struct.ieee80211_vif* %489, %struct.ieee80211_vif** %30, align 8
  %490 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %491 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %490, i32 0, i32 5
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @le32_to_cpu(i32 %492)
  %494 = load i32, i32* @IWL_RX_MPDU_REORDER_BAID_MASK, align 4
  %495 = and i32 %493, %494
  %496 = load i32, i32* @IWL_RX_MPDU_REORDER_BAID_SHIFT, align 4
  %497 = ashr i32 %495, %496
  store i32 %497, i32* %31, align 4
  %498 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %29, align 8
  %499 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %498, i32 0, i32 0
  %500 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %499, align 8
  store %struct.ieee80211_vif* %500, %struct.ieee80211_vif** %33, align 8
  %501 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %502 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %501, i32 0, i32 6
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %537, label %506

506:                                              ; preds = %482
  %507 = load i32, i32* %13, align 4
  %508 = sext i32 %507 to i64
  %509 = icmp uge i64 %508, 20
  br i1 %509, label %510, label %537

510:                                              ; preds = %506
  %511 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %512 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %511, i32 0, i32 3
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @is_multicast_ether_addr(i32 %513)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %537, label %516

516:                                              ; preds = %510
  %517 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %518 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = call i64 @ieee80211_is_data(i32 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %537

522:                                              ; preds = %516
  %523 = load i32, i32* @jiffies, align 4
  %524 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %525 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %524, i32 0, i32 6
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @MVM_TCM_PERIOD, align 8
  %529 = add nsw i64 %527, %528
  %530 = call i64 @time_after(i32 %523, i64 %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %522
  %533 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %534 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %533, i32 0, i32 6
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = call i32 @schedule_delayed_work(i32* %535, i32 0)
  br label %537

537:                                              ; preds = %532, %522, %516, %510, %506, %482
  %538 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  %539 = ptrtoint %struct.ieee80211_vif* %538 to i32
  %540 = call i64 @unlikely(i32 %539)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %561

542:                                              ; preds = %537
  %543 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  %544 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %33, align 8
  %545 = icmp eq %struct.ieee80211_vif* %543, %544
  br i1 %545, label %546, label %561

546:                                              ; preds = %542
  %547 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  %548 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %547)
  store %struct.iwl_mvm_vif* %548, %struct.iwl_mvm_vif** %34, align 8
  %549 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %34, align 8
  %550 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %553 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %552, i32 0, i32 2
  %554 = load i64, i64* %553, align 8
  %555 = icmp eq i64 %551, %554
  br i1 %555, label %556, label %560

556:                                              ; preds = %546
  %557 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %558 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %559 = call i32 @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm* %557, %struct.ieee80211_sta* %558, i32 0)
  br label %560

560:                                              ; preds = %556, %546
  br label %561

561:                                              ; preds = %560, %542, %537
  %562 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %563 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %29, align 8
  %564 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %565 = call i32 @rs_update_last_rssi(%struct.iwl_mvm* %562, %struct.iwl_mvm_sta* %563, %struct.ieee80211_rx_status* %564)
  %566 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %567 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %566, i32 0, i32 5
  %568 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %33, align 8
  %569 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %568)
  %570 = load i32, i32* @FW_DBG_TRIGGER_RSSI, align 4
  %571 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %567, i32 %569, i32 %570)
  store %struct.iwl_fw_dbg_trigger_tlv* %571, %struct.iwl_fw_dbg_trigger_tlv** %32, align 8
  %572 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %32, align 8
  %573 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %572, null
  br i1 %573, label %574, label %602

574:                                              ; preds = %561
  %575 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %576 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = call i64 @ieee80211_is_beacon(i32 %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %602

580:                                              ; preds = %574
  %581 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %32, align 8
  %582 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %581, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = inttoptr i64 %583 to i8*
  %585 = bitcast i8* %584 to %struct.iwl_fw_dbg_trigger_low_rssi*
  store %struct.iwl_fw_dbg_trigger_low_rssi* %585, %struct.iwl_fw_dbg_trigger_low_rssi** %35, align 8
  %586 = load %struct.iwl_fw_dbg_trigger_low_rssi*, %struct.iwl_fw_dbg_trigger_low_rssi** %35, align 8
  %587 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_low_rssi, %struct.iwl_fw_dbg_trigger_low_rssi* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 4
  %589 = call i32 @le32_to_cpu(i32 %588)
  %590 = sext i32 %589 to i64
  store i64 %590, i64* %36, align 8
  %591 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %592 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %591, i32 0, i32 4
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* %36, align 8
  %595 = icmp slt i64 %593, %594
  br i1 %595, label %596, label %601

596:                                              ; preds = %580
  %597 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %598 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %597, i32 0, i32 5
  %599 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %32, align 8
  %600 = call i32 @iwl_fw_dbg_collect_trig(i32* %598, %struct.iwl_fw_dbg_trigger_tlv* %599, i32* null)
  br label %601

601:                                              ; preds = %596, %580
  br label %602

602:                                              ; preds = %601, %574, %561
  %603 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %604 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = call i64 @ieee80211_is_data(i32 %605)
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %613

608:                                              ; preds = %602
  %609 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %610 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %611 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %612 = call i32 @iwl_mvm_rx_csum(%struct.ieee80211_sta* %609, %struct.sk_buff* %610, %struct.iwl_rx_mpdu_desc* %611)
  br label %613

613:                                              ; preds = %608, %602
  %614 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %615 = load i32, i32* %8, align 4
  %616 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %617 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %618 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %619 = call i64 @iwl_mvm_is_dup(%struct.ieee80211_sta* %614, i32 %615, %struct.ieee80211_rx_status* %616, %struct.ieee80211_hdr* %617, %struct.iwl_rx_mpdu_desc* %618)
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %624

621:                                              ; preds = %613
  %622 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %623 = call i32 @kfree_skb(%struct.sk_buff* %622)
  br label %914

624:                                              ; preds = %613
  %625 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %626 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %625, i32 0, i32 2
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* @IWL_RX_MPDU_MFLG2_AMSDU, align 4
  %629 = and i32 %627, %628
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %675

631:                                              ; preds = %624
  %632 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %633 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = call i32 @ieee80211_is_data_qos(i32 %634)
  %636 = icmp ne i32 %635, 0
  %637 = xor i1 %636, true
  %638 = zext i1 %637 to i32
  %639 = call i32 @WARN_ON(i32 %638)
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %675, label %641

641:                                              ; preds = %631
  %642 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %643 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %642)
  store i32* %643, i32** %37, align 8
  %644 = load i32, i32* @IEEE80211_QOS_CTL_A_MSDU_PRESENT, align 4
  %645 = xor i32 %644, -1
  %646 = load i32*, i32** %37, align 8
  %647 = load i32, i32* %646, align 4
  %648 = and i32 %647, %645
  store i32 %648, i32* %646, align 4
  %649 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %650 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %649, i32 0, i32 4
  %651 = load %struct.TYPE_10__*, %struct.TYPE_10__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %651, i32 0, i32 0
  %653 = load %struct.TYPE_9__*, %struct.TYPE_9__** %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 8
  %656 = load i64, i64* @IWL_DEVICE_FAMILY_9000, align 8
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %658, label %674

658:                                              ; preds = %641
  %659 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %660 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 4
  %662 = call i32 @iwl_mvm_flip_address(i32 %661)
  %663 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %664 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  %666 = call i64 @ieee80211_has_a4(i32 %665)
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %673

668:                                              ; preds = %658
  %669 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %670 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = call i32 @iwl_mvm_flip_address(i32 %671)
  br label %673

673:                                              ; preds = %668, %658
  br label %674

674:                                              ; preds = %673, %641
  br label %675

675:                                              ; preds = %674, %631, %624
  %676 = load i32, i32* %31, align 4
  %677 = load i32, i32* @IWL_RX_REORDER_DATA_INVALID_BAID, align 4
  %678 = icmp ne i32 %676, %677
  br i1 %678, label %679, label %688

679:                                              ; preds = %675
  %680 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %681 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %680, i32 0, i32 5
  %682 = load i32, i32* %681, align 4
  %683 = call i32 @le32_to_cpu(i32 %682)
  store i32 %683, i32* %38, align 4
  %684 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %685 = load i32, i32* %38, align 4
  %686 = load i32, i32* %31, align 4
  %687 = call i32 @iwl_mvm_agg_rx_received(%struct.iwl_mvm* %684, i32 %685, i32 %686)
  br label %688

688:                                              ; preds = %679, %675
  br label %689

689:                                              ; preds = %688, %479
  %690 = load i32, i32* %14, align 4
  %691 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %692 = and i32 %690, %691
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %705, label %694

694:                                              ; preds = %689
  %695 = load i32, i32* %14, align 4
  %696 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %705

699:                                              ; preds = %694
  %700 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %701 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %702 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 8
  %704 = or i32 %703, %700
  store i32 %704, i32* %702, align 8
  br label %705

705:                                              ; preds = %699, %694, %689
  %706 = load i32, i32* %14, align 4
  %707 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %708 = and i32 %706, %707
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %716

710:                                              ; preds = %705
  %711 = load i32, i32* @RX_ENC_FLAG_HT_GF, align 4
  %712 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %713 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 8
  %715 = or i32 %714, %711
  store i32 %715, i32* %713, align 8
  br label %716

716:                                              ; preds = %710, %705
  %717 = load i32, i32* %14, align 4
  %718 = load i32, i32* @RATE_MCS_LDPC_MSK, align 4
  %719 = and i32 %717, %718
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %727

721:                                              ; preds = %716
  %722 = load i32, i32* @RX_ENC_FLAG_LDPC, align 4
  %723 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %724 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 8
  %726 = or i32 %725, %722
  store i32 %726, i32* %724, align 8
  br label %727

727:                                              ; preds = %721, %716
  %728 = load i32, i32* %14, align 4
  %729 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %730 = and i32 %728, %729
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %753

732:                                              ; preds = %727
  %733 = load i32, i32* %14, align 4
  %734 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %735 = and i32 %733, %734
  %736 = load i32, i32* @RATE_MCS_STBC_POS, align 4
  %737 = ashr i32 %735, %736
  store i32 %737, i32* %39, align 4
  %738 = load i32, i32* @RX_ENC_HT, align 4
  %739 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %740 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %739, i32 0, i32 9
  store i32 %738, i32* %740, align 8
  %741 = load i32, i32* %14, align 4
  %742 = load i32, i32* @RATE_HT_MCS_INDEX_MSK, align 4
  %743 = and i32 %741, %742
  %744 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %745 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %744, i32 0, i32 5
  store i32 %743, i32* %745, align 8
  %746 = load i32, i32* %39, align 4
  %747 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %748 = shl i32 %746, %747
  %749 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %750 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 8
  %752 = or i32 %751, %748
  store i32 %752, i32* %750, align 8
  br label %832

753:                                              ; preds = %727
  %754 = load i32, i32* %14, align 4
  %755 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %756 = and i32 %754, %755
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %798

758:                                              ; preds = %753
  %759 = load i32, i32* %14, align 4
  %760 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %761 = and i32 %759, %760
  %762 = load i32, i32* @RATE_MCS_STBC_POS, align 4
  %763 = ashr i32 %761, %762
  store i32 %763, i32* %40, align 4
  %764 = load i32, i32* %14, align 4
  %765 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %766 = and i32 %764, %765
  %767 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %768 = ashr i32 %766, %767
  %769 = add nsw i32 %768, 1
  %770 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %771 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %770, i32 0, i32 6
  store i32 %769, i32* %771, align 4
  %772 = load i32, i32* %14, align 4
  %773 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %774 = and i32 %772, %773
  %775 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %776 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %775, i32 0, i32 5
  store i32 %774, i32* %776, align 8
  %777 = load i32, i32* @RX_ENC_VHT, align 4
  %778 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %779 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %778, i32 0, i32 9
  store i32 %777, i32* %779, align 8
  %780 = load i32, i32* %40, align 4
  %781 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %782 = shl i32 %780, %781
  %783 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %784 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = or i32 %785, %782
  store i32 %786, i32* %784, align 8
  %787 = load i32, i32* %14, align 4
  %788 = load i32, i32* @RATE_MCS_BF_MSK, align 4
  %789 = and i32 %787, %788
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %791, label %797

791:                                              ; preds = %758
  %792 = load i32, i32* @RX_ENC_FLAG_BF, align 4
  %793 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %794 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 8
  %796 = or i32 %795, %792
  store i32 %796, i32* %794, align 8
  br label %797

797:                                              ; preds = %791, %758
  br label %831

798:                                              ; preds = %753
  %799 = load i32, i32* %14, align 4
  %800 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %801 = and i32 %799, %800
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %830, label %803

803:                                              ; preds = %798
  %804 = load i32, i32* %14, align 4
  %805 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %806 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %805, i32 0, i32 8
  %807 = load i32, i32* %806, align 4
  %808 = call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %804, i32 %807)
  store i32 %808, i32* %41, align 4
  %809 = load i32, i32* %41, align 4
  %810 = icmp slt i32 %809, 0
  br i1 %810, label %814, label %811

811:                                              ; preds = %803
  %812 = load i32, i32* %41, align 4
  %813 = icmp sgt i32 %812, 255
  br label %814

814:                                              ; preds = %811, %803
  %815 = phi i1 [ true, %803 ], [ %813, %811 ]
  %816 = zext i1 %815 to i32
  %817 = load i32, i32* %14, align 4
  %818 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %819 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %818, i32 0, i32 8
  %820 = load i32, i32* %819, align 4
  %821 = call i64 @WARN(i32 %816, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %817, i32 %820)
  %822 = icmp ne i64 %821, 0
  br i1 %822, label %823, label %826

823:                                              ; preds = %814
  %824 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %825 = call i32 @kfree_skb(%struct.sk_buff* %824)
  br label %914

826:                                              ; preds = %814
  %827 = load i32, i32* %41, align 4
  %828 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %829 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %828, i32 0, i32 5
  store i32 %827, i32* %829, align 8
  br label %830

830:                                              ; preds = %826, %798
  br label %831

831:                                              ; preds = %830, %797
  br label %832

832:                                              ; preds = %831, %732
  %833 = load i32, i32* %8, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %884, label %835

835:                                              ; preds = %832
  %836 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %837 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %836, i32 0, i32 0
  %838 = load i32, i32* %837, align 4
  %839 = call i64 @ieee80211_is_beacon(i32 %838)
  %840 = icmp ne i64 %839, 0
  br i1 %840, label %847, label %841

841:                                              ; preds = %835
  %842 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %843 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = call i64 @ieee80211_is_probe_resp(i32 %844)
  %846 = icmp ne i64 %845, 0
  br i1 %846, label %847, label %853

847:                                              ; preds = %841, %835
  %848 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %849 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %848, i32 0, i32 3
  %850 = load i64, i64* %849, align 8
  %851 = load i64, i64* @SCHED_SCAN_PASS_ALL_ENABLED, align 8
  %852 = icmp eq i64 %850, %851
  br label %853

853:                                              ; preds = %847, %841
  %854 = phi i1 [ false, %841 ], [ %852, %847 ]
  %855 = zext i1 %854 to i32
  %856 = call i64 @unlikely(i32 %855)
  %857 = icmp ne i64 %856, 0
  br i1 %857, label %858, label %862

858:                                              ; preds = %853
  %859 = load i64, i64* @SCHED_SCAN_PASS_ALL_FOUND, align 8
  %860 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %861 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %860, i32 0, i32 3
  store i64 %859, i64* %861, align 8
  br label %862

862:                                              ; preds = %858, %853
  %863 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %864 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %863, i32 0, i32 0
  %865 = load i32, i32* %864, align 4
  %866 = call i64 @ieee80211_is_beacon(i32 %865)
  %867 = icmp ne i64 %866, 0
  br i1 %867, label %874, label %868

868:                                              ; preds = %862
  %869 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %870 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %869, i32 0, i32 0
  %871 = load i32, i32* %870, align 4
  %872 = call i64 @ieee80211_is_probe_resp(i32 %871)
  %873 = icmp ne i64 %872, 0
  br label %874

874:                                              ; preds = %868, %862
  %875 = phi i1 [ true, %862 ], [ %873, %868 ]
  %876 = zext i1 %875 to i32
  %877 = call i64 @unlikely(i32 %876)
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %879, label %883

879:                                              ; preds = %874
  %880 = call i32 (...) @ktime_get_boottime_ns()
  %881 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %882 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %881, i32 0, i32 7
  store i32 %880, i32* %882, align 8
  br label %883

883:                                              ; preds = %879, %874
  br label %884

884:                                              ; preds = %883, %832
  %885 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %886 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %887 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %888 = load i32, i32* %13, align 4
  %889 = load i32, i32* %19, align 4
  %890 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %891 = call i64 @iwl_mvm_create_skb(%struct.iwl_mvm* %885, %struct.sk_buff* %886, %struct.ieee80211_hdr* %887, i32 %888, i32 %889, %struct.iwl_rx_cmd_buffer* %890)
  %892 = icmp ne i64 %891, 0
  br i1 %892, label %893, label %896

893:                                              ; preds = %884
  %894 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %895 = call i32 @kfree_skb(%struct.sk_buff* %894)
  br label %914

896:                                              ; preds = %884
  %897 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %898 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %899 = load i32, i32* %8, align 4
  %900 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %901 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %902 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %11, align 8
  %903 = call i32 @iwl_mvm_reorder(%struct.iwl_mvm* %897, %struct.napi_struct* %898, i32 %899, %struct.ieee80211_sta* %900, %struct.sk_buff* %901, %struct.iwl_rx_mpdu_desc* %902)
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %913, label %905

905:                                              ; preds = %896
  %906 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %907 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %908 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %909 = load i32, i32* %8, align 4
  %910 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %911 = load i32, i32* %25, align 4
  %912 = call i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm* %906, %struct.napi_struct* %907, %struct.sk_buff* %908, i32 %909, %struct.ieee80211_sta* %910, i32 %911)
  br label %913

913:                                              ; preds = %905, %896
  br label %914

914:                                              ; preds = %913, %893, %823, %621
  %915 = call i32 (...) @rcu_read_unlock()
  br label %916

916:                                              ; preds = %914, %255, %194, %73
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le32_get_bits(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @iwl_mvm_rx_he(%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_mvm_rx_phy_data*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_decode_lsig(%struct.sk_buff*, %struct.iwl_mvm_rx_phy_data*) #1

declare dso_local i64 @iwl_mvm_rx_crypto(%struct.iwl_mvm*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32, %struct.iwl_rx_mpdu_desc*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @iwl_mvm_get_signal_strength(%struct.iwl_mvm*, %struct.ieee80211_rx_status*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_add_rtap_sniffer_config(%struct.iwl_mvm*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_sta*) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_sta_modify_disable_tx_ap(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rs_update_last_rssi(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, %struct.ieee80211_rx_status*) #1

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i32*) #1

declare dso_local i32 @iwl_mvm_rx_csum(%struct.ieee80211_sta*, %struct.sk_buff*, %struct.iwl_rx_mpdu_desc*) #1

declare dso_local i64 @iwl_mvm_is_dup(%struct.ieee80211_sta*, i32, %struct.ieee80211_rx_status*, %struct.ieee80211_hdr*, %struct.iwl_rx_mpdu_desc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @iwl_mvm_flip_address(i32) #1

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local i32 @iwl_mvm_agg_rx_received(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i64 @iwl_mvm_create_skb(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_hdr*, i32, i32, %struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_mvm_reorder(%struct.iwl_mvm*, %struct.napi_struct*, i32, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.iwl_rx_mpdu_desc*) #1

declare dso_local i32 @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm*, %struct.napi_struct*, %struct.sk_buff*, i32, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
