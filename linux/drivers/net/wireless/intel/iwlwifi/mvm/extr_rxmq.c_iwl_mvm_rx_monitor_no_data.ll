; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_monitor_no_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_monitor_no_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_rx_no_data = type { i32*, i32*, i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_mvm_rx_phy_data = type { i8*, i32 }

@RX_NO_DATA_INFO_TYPE_MSK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_PHY_TSF_OVERLOAD = common dso_local global i32 0, align 4
@IWL_RX_PHY_INFO_TYPE_NONE = common dso_local global i8* null, align 8
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@RX_NO_DATA_CHAIN_A_MSK = common dso_local global i32 0, align 4
@RX_NO_DATA_CHAIN_A_POS = common dso_local global i32 0, align 4
@RX_NO_DATA_CHAIN_B_MSK = common dso_local global i32 0, align 4
@RX_NO_DATA_CHAIN_B_POS = common dso_local global i32 0, align 4
@RX_NO_DATA_CHANNEL_MSK = common dso_local global i32 0, align 4
@RX_NO_DATA_CHANNEL_POS = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA1_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@RX_FLAG_NO_PSDU = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_ZERO_LEN_PSDU_SOUNDING = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_ZERO_LEN_PSDU_NOT_CAPTURED = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_ZERO_LEN_PSDU_VENDOR = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RATE_INFO_BW_80 = common dso_local global i32 0, align 4
@RATE_INFO_BW_160 = common dso_local global i32 0, align 4
@RATE_MCS_HE_MSK = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
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
@RATE_VHT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@RX_ENC_VHT = common dso_local global i32 0, align 4
@RATE_MCS_BF_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_BF = common dso_local global i32 0, align 4
@RX_NO_DATA_RX_VEC0_VHT_NSTS_MSK = common dso_local global i32 0, align 4
@RX_NO_DATA_RX_VEC0_HE_NSTS_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid rate flags 0x%x, band %d,\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_monitor_no_data(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.iwl_rx_packet*, align 8
  %11 = alloca %struct.iwl_rx_no_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_sta*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.iwl_mvm_rx_phy_data, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %27 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %26)
  store %struct.iwl_rx_packet* %27, %struct.iwl_rx_packet** %10, align 8
  %28 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %10, align 8
  %29 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.iwl_rx_no_data*
  store %struct.iwl_rx_no_data* %32, %struct.iwl_rx_no_data** %11, align 8
  %33 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %34 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %38 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le32_to_cpu(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %42 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %46 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load i32, i32* @RX_NO_DATA_INFO_TYPE_MSK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @IWL_RX_MPDU_PHY_TSF_OVERLOAD, align 4
  store i32 %51, i32* %16, align 4
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %17, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %22, i32 0, i32 0
  %53 = load i8*, i8** @IWL_RX_PHY_INFO_TYPE_NONE, align 8
  store i8* %53, i8** %52, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %22, i32 0, i32 1
  %55 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %56 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %54, align 8
  %60 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 1
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %4
  br label %343

67:                                               ; preds = %4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @RX_NO_DATA_CHAIN_A_MSK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @RX_NO_DATA_CHAIN_A_POS, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @RX_NO_DATA_CHAIN_B_MSK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @RX_NO_DATA_CHAIN_B_POS, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @RX_NO_DATA_CHANNEL_MSK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @RX_NO_DATA_CHANNEL_POS, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %19, align 4
  %83 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %84 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IWL_RX_PHY_DATA1_INFO_TYPE_MASK, align 4
  %89 = call i8* @le32_get_bits(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %22, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call %struct.sk_buff* @alloc_skb(i32 128, i32 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %18, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %67
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %97 = call i32 @IWL_ERR(%struct.iwl_mvm* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %343

98:                                               ; preds = %67
  %99 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %100 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %99)
  store %struct.ieee80211_rx_status* %100, %struct.ieee80211_rx_status** %9, align 8
  %101 = load i32, i32* @RX_FLAG_NO_PSDU, align 4
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %15, align 4
  switch i32 %106, label %115 [
    i32 128, label %107
    i32 129, label %111
    i32 130, label %111
  ]

107:                                              ; preds = %98
  %108 = load i32, i32* @IEEE80211_RADIOTAP_ZERO_LEN_PSDU_SOUNDING, align 4
  %109 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %110 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  br label %119

111:                                              ; preds = %98, %98
  %112 = load i32, i32* @IEEE80211_RADIOTAP_ZERO_LEN_PSDU_NOT_CAPTURED, align 4
  %113 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  br label %119

115:                                              ; preds = %98
  %116 = load i32, i32* @IEEE80211_RADIOTAP_ZERO_LEN_PSDU_VENDOR, align 4
  %117 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %118 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %111, %107
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %122 = and i32 %120, %121
  switch i32 %122, label %136 [
    i32 133, label %123
    i32 132, label %124
    i32 131, label %128
    i32 134, label %132
  ]

123:                                              ; preds = %119
  br label %136

124:                                              ; preds = %119
  %125 = load i32, i32* @RATE_INFO_BW_40, align 4
  %126 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  br label %136

128:                                              ; preds = %119
  %129 = load i32, i32* @RATE_INFO_BW_80, align 4
  %130 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 8
  br label %136

132:                                              ; preds = %119
  %133 = load i32, i32* @RATE_INFO_BW_160, align 4
  %134 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %119, %132, %128, %124, %123
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @iwl_mvm_rx_he(%struct.iwl_mvm* %142, %struct.sk_buff* %143, %struct.iwl_mvm_rx_phy_data* %22, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %141, %136
  %149 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %150 = call i32 @iwl_mvm_decode_lsig(%struct.sk_buff* %149, %struct.iwl_mvm_rx_phy_data* %22)
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %153 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %19, align 4
  %155 = icmp sgt i32 %154, 14
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %160

158:                                              ; preds = %148
  %159 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %163 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %166 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ieee80211_channel_to_frequency(i32 %164, i32 %167)
  %169 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %170 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %172 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %21, align 4
  %176 = call i32 @iwl_mvm_get_signal_strength(%struct.iwl_mvm* %171, %struct.ieee80211_rx_status* %172, i32 %173, i32 %174, i32 %175)
  %177 = call i32 (...) @rcu_read_lock()
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %160
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %189 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %190 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %182, %160
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load i32, i32* @RX_ENC_FLAG_HT_GF, align 4
  %200 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %201 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %198, %193
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @RATE_MCS_LDPC_MSK, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load i32, i32* @RX_ENC_FLAG_LDPC, align 4
  %211 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %212 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %204
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %241

220:                                              ; preds = %215
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @RATE_MCS_STBC_POS, align 4
  %225 = ashr i32 %223, %224
  store i32 %225, i32* %23, align 4
  %226 = load i32, i32* @RX_ENC_HT, align 4
  %227 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %228 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @RATE_HT_MCS_INDEX_MSK, align 4
  %231 = and i32 %229, %230
  %232 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %233 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %23, align 4
  %235 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %236 = shl i32 %234, %235
  %237 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %238 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  br label %333

241:                                              ; preds = %215
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %288

246:                                              ; preds = %241
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* @RATE_MCS_STBC_MSK, align 4
  %249 = and i32 %247, %248
  %250 = load i32, i32* @RATE_MCS_STBC_POS, align 4
  %251 = ashr i32 %249, %250
  store i32 %251, i32* %24, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %254 = and i32 %252, %253
  %255 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %256 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* @RX_ENC_VHT, align 4
  %258 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %259 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 8
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* @RX_ENC_FLAG_STBC_SHIFT, align 4
  %262 = shl i32 %260, %261
  %263 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %264 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* @RATE_MCS_BF_MSK, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %246
  %272 = load i32, i32* @RX_ENC_FLAG_BF, align 4
  %273 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %274 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %271, %246
  %278 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %279 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @RX_NO_DATA_RX_VEC0_VHT_NSTS_MSK, align 4
  %284 = call i8* @le32_get_bits(i32 %282, i32 %283)
  %285 = getelementptr i8, i8* %284, i64 1
  %286 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %287 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %286, i32 0, i32 4
  store i8* %285, i8** %287, align 8
  br label %332

288:                                              ; preds = %241
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* @RATE_MCS_HE_MSK, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %288
  %294 = load %struct.iwl_rx_no_data*, %struct.iwl_rx_no_data** %11, align 8
  %295 = getelementptr inbounds %struct.iwl_rx_no_data, %struct.iwl_rx_no_data* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @RX_NO_DATA_RX_VEC0_HE_NSTS_MSK, align 4
  %300 = call i8* @le32_get_bits(i32 %298, i32 %299)
  %301 = getelementptr i8, i8* %300, i64 1
  %302 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %303 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %302, i32 0, i32 4
  store i8* %301, i8** %303, align 8
  br label %331

304:                                              ; preds = %288
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %307 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %305, i32 %308)
  store i32 %309, i32* %25, align 4
  %310 = load i32, i32* %25, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %304
  %313 = load i32, i32* %25, align 4
  %314 = icmp sgt i32 %313, 255
  br label %315

315:                                              ; preds = %312, %304
  %316 = phi i1 [ true, %304 ], [ %314, %312 ]
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %12, align 4
  %319 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %320 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = call i64 @WARN(i32 %317, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %318, i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %326 = call i32 @kfree_skb(%struct.sk_buff* %325)
  br label %341

327:                                              ; preds = %315
  %328 = load i32, i32* %25, align 4
  %329 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %330 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %329, i32 0, i32 2
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %327, %293
  br label %332

332:                                              ; preds = %331, %277
  br label %333

333:                                              ; preds = %332, %220
  %334 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %335 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %339 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %340 = call i32 @ieee80211_rx_napi(i32 %336, %struct.ieee80211_sta* %337, %struct.sk_buff* %338, %struct.napi_struct* %339)
  br label %341

341:                                              ; preds = %333, %324
  %342 = call i32 (...) @rcu_read_unlock()
  br label %343

343:                                              ; preds = %341, %95, %66
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @le32_get_bits(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @iwl_mvm_rx_he(%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_mvm_rx_phy_data*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_decode_lsig(%struct.sk_buff*, %struct.iwl_mvm_rx_phy_data*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @iwl_mvm_get_signal_strength(%struct.iwl_mvm*, %struct.ieee80211_rx_status*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_napi(i32, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.napi_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
