; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_mgmt_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_mgmt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.wmi_mgmt_rx_ev_arg = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i64, i32, i32, %struct.sk_buff*, i32 }
%struct.ieee80211_hdr = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to parse mgmt rx event: %d\0A\00", align 1
@ATH10K_DBG_MGMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"event mgmt rx status %08x\0A\00", align 1
@ATH10K_CAC_RUNNING = common dso_local global i32 0, align 4
@WMI_RX_STATUS_ERR_DECRYPT = common dso_local global i32 0, align 4
@WMI_RX_STATUS_ERR_KEY_CACHE_MISS = common dso_local global i32 0, align 4
@WMI_RX_STATUS_ERR_CRC = common dso_local global i32 0, align 4
@WMI_RX_STATUS_ERR_MIC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@WMI_RX_STATUS_EXT_INFO = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ATH10K_MAX_5G_CHAN = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MODE_11B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"wmi mgmt rx 11b (CCK) on 5GHz\0A\00", align 1
@ATH10K_DEFAULT_NOISE_FLOOR = common dso_local global i32 0, align 4
@RX_FLAG_SKIP_MONITOR = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"event mgmt rx skb %pK len %d ftype %02x stype %02x\0A\00", align 1
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"event mgmt rx freq %d band %d snr %d, rate_idx %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_event_mgmt_rx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_mgmt_rx_ev_arg, align 4
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = bitcast %struct.wmi_mgmt_rx_ev_arg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %18)
  store %struct.ieee80211_rx_status* %19, %struct.ieee80211_rx_status** %7, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @ath10k_wmi_pull_mgmt_rx(%struct.ath10k* %20, %struct.sk_buff* %21, %struct.wmi_mgmt_rx_ev_arg* %6)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @dev_kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %3, align 4
  br label %270

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %6, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__le32_to_cpu(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %6, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le32_to_cpu(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %6, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__le32_to_cpu(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__le32_to_cpu(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__le32_to_cpu(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %49 = call i32 @memset(%struct.ieee80211_rx_status* %48, i32 0, i32 40)
  %50 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %51 = load i32, i32* @ATH10K_DBG_MGMT, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %50, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ATH10K_CAC_RUNNING, align 4
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 2
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %32
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @WMI_RX_STATUS_ERR_DECRYPT, align 4
  %62 = load i32, i32* @WMI_RX_STATUS_ERR_KEY_CACHE_MISS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @WMI_RX_STATUS_ERR_CRC, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59, %32
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @dev_kfree_skb(%struct.sk_buff* %69)
  store i32 0, i32* %3, align 4
  br label %270

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @WMI_RX_STATUS_ERR_MIC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %78 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @WMI_RX_STATUS_EXT_INFO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %6, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @__le64_to_cpu(i32 %90)
  %92 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %95 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %96 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %87, %82
  %100 = load i32, i32* %11, align 4
  %101 = icmp sge i32 %100, 1
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = icmp sle i32 %103, 14
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %107 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %125

109:                                              ; preds = %102, %99
  %110 = load i32, i32* %11, align 4
  %111 = icmp sge i32 %110, 36
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @ATH10K_MAX_5G_CHAN, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %118 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %124

120:                                              ; preds = %112, %109
  %121 = call i32 @WARN_ON_ONCE(i32 1)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @dev_kfree_skb(%struct.sk_buff* %122)
  store i32 0, i32* %3, align 4
  br label %270

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @MODE_11B, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %137 = load i32, i32* @ATH10K_DBG_MGMT, align 4
  %138 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %136, i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %135, %129, %125
  %140 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %141 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %142, align 8
  %144 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %145 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %143, i64 %146
  store %struct.ieee80211_supported_band* %147, %struct.ieee80211_supported_band** %9, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %150 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.sk_buff* @ieee80211_channel_to_frequency(i32 %148, i64 %151)
  %153 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %153, i32 0, i32 4
  store %struct.sk_buff* %152, %struct.sk_buff** %154, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @ATH10K_DEFAULT_NOISE_FLOOR, align 4
  %157 = add nsw i32 %155, %156
  %158 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sdiv i32 %161, 100
  %163 = call i32 @ath10k_mac_bitrate_to_idx(%struct.ieee80211_supported_band* %160, i32 %162)
  %164 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %169, %struct.ieee80211_hdr** %8, align 8
  %170 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %171 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* @RX_FLAG_SKIP_MONITOR, align 4
  %175 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %182 = call i32 @ath10k_wmi_handle_wep_reauth(%struct.ath10k* %179, %struct.sk_buff* %180, %struct.ieee80211_rx_status* %181)
  %183 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %184 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %185 = call i64 @ath10k_wmi_rx_is_decrypted(%struct.ath10k* %183, %struct.ieee80211_hdr* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %226

187:                                              ; preds = %139
  %188 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %189 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %190 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %194 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ieee80211_is_action(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %225, label %198

198:                                              ; preds = %187
  %199 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %200 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ieee80211_is_deauth(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %225, label %204

204:                                              ; preds = %198
  %205 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %206 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ieee80211_is_disassoc(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %225, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %212 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %220 = xor i32 %219, -1
  %221 = and i32 %218, %220
  %222 = call i32 @__cpu_to_le16(i32 %221)
  %223 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %224 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %210, %204, %198, %187
  br label %226

226:                                              ; preds = %225, %139
  %227 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %228 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @ieee80211_is_beacon(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %235 = call i32 @ath10k_mac_handle_beacon(%struct.ath10k* %233, %struct.sk_buff* %234)
  br label %236

236:                                              ; preds = %232, %226
  %237 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %238 = load i32, i32* @ATH10K_DBG_MGMT, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %245 = and i32 %243, %244
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %248 = and i32 %246, %247
  %249 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %237, i32 %238, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %239, i64 %242, i32 %245, i32 %248)
  %250 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %251 = load i32, i32* @ATH10K_DBG_MGMT, align 4
  %252 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %253 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %252, i32 0, i32 4
  %254 = load %struct.sk_buff*, %struct.sk_buff** %253, align 8
  %255 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %256 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %259 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %262 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %250, i32 %251, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %254, i64 %257, i32 %260, i32 %263)
  %265 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %266 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %269 = call i32 @ieee80211_rx_ni(i32 %267, %struct.sk_buff* %268)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %236, %120, %68, %25
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #2

declare dso_local i32 @ath10k_wmi_pull_mgmt_rx(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_mgmt_rx_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @__le64_to_cpu(i32) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local %struct.sk_buff* @ieee80211_channel_to_frequency(i32, i64) #2

declare dso_local i32 @ath10k_mac_bitrate_to_idx(%struct.ieee80211_supported_band*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ath10k_wmi_handle_wep_reauth(%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*) #2

declare dso_local i64 @ath10k_wmi_rx_is_decrypted(%struct.ath10k*, %struct.ieee80211_hdr*) #2

declare dso_local i32 @ieee80211_is_action(i32) #2

declare dso_local i32 @ieee80211_is_deauth(i32) #2

declare dso_local i32 @ieee80211_is_disassoc(i32) #2

declare dso_local i32 @__cpu_to_le16(i32) #2

declare dso_local i64 @ieee80211_is_beacon(i32) #2

declare dso_local i32 @ath10k_mac_handle_beacon(%struct.ath10k*, %struct.sk_buff*) #2

declare dso_local i32 @ieee80211_rx_ni(i32, %struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
