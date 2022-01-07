; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_reply_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_reply_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i8*, %struct.iwl_rx_phy_res, i32 }
%struct.iwl_rx_phy_res = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i32 }
%struct.iwl_rx_mpdu_res_start = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MPDU frame without cached PHY data\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dsp size out of range [0,20]: %d\0A\00", align 1
@RX_RES_STATUS_NO_CRC32_ERROR = common dso_local global i32 0, align 4
@RX_RES_STATUS_NO_RXE_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", align 1
@RX_RES_PHY_FLAGS_BAND_24_MSK = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Rssi %d, TSF %llu\0A\00", align 1
@RX_RES_PHY_FLAGS_ANTENNA_MSK = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_ANTENNA_POS = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_AGG_MSK = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_HT_GF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_rx_reply_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_rx_reply_rx(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_rx_status, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_rx_phy_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_rx_mpdu_res_start*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %14 = bitcast %struct.ieee80211_rx_status* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %16 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %15)
  store %struct.iwl_rx_packet* %16, %struct.iwl_rx_packet** %7, align 8
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = call i32 @IWL_ERR(%struct.iwl_priv* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %220

24:                                               ; preds = %2
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 2
  store %struct.iwl_rx_phy_res* %26, %struct.iwl_rx_phy_res** %8, align 8
  %27 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.iwl_rx_mpdu_res_start*
  store %struct.iwl_rx_mpdu_res_start* %31, %struct.iwl_rx_mpdu_res_start** %10, align 8
  %32 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = inttoptr i64 %36 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %37, %struct.ieee80211_hdr** %5, align 8
  %38 = load %struct.iwl_rx_mpdu_res_start*, %struct.iwl_rx_mpdu_res_start** %10, align 8
  %39 = getelementptr inbounds %struct.iwl_rx_mpdu_res_start, %struct.iwl_rx_mpdu_res_start* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = call i32 @iwlagn_translate_rx_status(%struct.iwl_priv* %52, i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %57 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 20
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %24
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %65 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %66 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IWL_DEBUG_DROP(%struct.iwl_priv* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %220

69:                                               ; preds = %24
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @RX_RES_STATUS_NO_CRC32_ERROR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @RX_RES_STATUS_NO_RXE_OVERFLOW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = call i32 @IWL_DEBUG_RX(%struct.iwl_priv* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %220

84:                                               ; preds = %74
  %85 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %86 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le64_to_cpu(i32 %92)
  %94 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 6
  store i64 %93, i64* %94, align 8
  %95 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %96 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RX_RES_PHY_FLAGS_BAND_24_MSK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %105

103:                                              ; preds = %84
  %104 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %109 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ieee80211_channel_to_frequency(i32 %111, i32 %113)
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 10
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @iwlagn_hwrate_to_mac80211_idx(i32 %116, i32 %118)
  %120 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 9
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 5
  store i32 0, i32* %121, align 4
  %122 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %123 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %127 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %129 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %130 = call i32 @iwlagn_calc_rssi(%struct.iwl_priv* %128, %struct.iwl_rx_phy_res* %129)
  %131 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 7
  store i32 %130, i32* %131, align 8
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %133 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_priv* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %134, i64 %136)
  %138 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %139 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_MSK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_POS, align 4
  %145 = ashr i32 %143, %144
  %146 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  %147 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %148 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %105
  %154 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %155 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %105
  %159 = load %struct.iwl_rx_phy_res*, %struct.iwl_rx_phy_res** %8, align 8
  %160 = getelementptr inbounds %struct.iwl_rx_phy_res, %struct.iwl_rx_phy_res* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @RX_RES_PHY_FLAGS_AGG_MSK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %166
  store i32 %169, i32* %167, align 4
  %170 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %171 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 4
  store i32 %172, i32* %173, align 8
  br label %174

174:                                              ; preds = %165, %158
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @RX_ENC_HT, align 4
  %181 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 3
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* @RATE_INFO_BW_40, align 4
  %189 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  store i32 %188, i32* %189, align 8
  br label %193

190:                                              ; preds = %182
  %191 = load i32, i32* @RATE_INFO_BW_20, align 4
  %192 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  store i32 %191, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %200 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %199
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i32, i32* @RX_ENC_FLAG_HT_GF, align 4
  %210 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %209
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %208, %203
  %214 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %215 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %219 = call i32 @iwlagn_pass_packet_to_mac80211(%struct.iwl_priv* %214, %struct.ieee80211_hdr* %215, i32 %216, i32 %217, %struct.iwl_rx_cmd_buffer* %218, %struct.ieee80211_rx_status* %6)
  br label %220

220:                                              ; preds = %213, %79, %63, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @iwlagn_translate_rx_status(%struct.iwl_priv*, i8*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_priv*, i8*, i32) #2

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_priv*, i8*, i8*) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local i32 @iwlagn_hwrate_to_mac80211_idx(i32, i32) #2

declare dso_local i32 @iwlagn_calc_rssi(%struct.iwl_priv*, %struct.iwl_rx_phy_res*) #2

declare dso_local i32 @IWL_DEBUG_STATS_LIMIT(%struct.iwl_priv*, i8*, i32, i64) #2

declare dso_local i32 @iwlagn_pass_packet_to_mac80211(%struct.iwl_priv*, %struct.ieee80211_hdr*, i32, i32, %struct.iwl_rx_cmd_buffer*, %struct.ieee80211_rx_status*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
