; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.__wmi_event_txstatus = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath9k_htc_tx_ctl = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.ieee80211_vif* }

@ATH9K_HTC_TXSTAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_TX_FILTERED = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_RTC_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_RATE = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_CW40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.sk_buff*, %struct.__wmi_event_txstatus*)* @ath9k_htc_tx_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_tx_process(%struct.ath9k_htc_priv* %0, %struct.sk_buff* %1, %struct.__wmi_event_txstatus* %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.__wmi_event_txstatus*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_tx_rate*, align 8
  %11 = alloca %struct.ieee80211_conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.__wmi_event_txstatus* %2, %struct.__wmi_event_txstatus** %6, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store %struct.ieee80211_conf* %19, %struct.ieee80211_conf** %11, align 8
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @strip_drv_header(%struct.ath9k_htc_priv* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %26)
  br label %237

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff* %29)
  store %struct.ath9k_htc_tx_ctl* %30, %struct.ath9k_htc_tx_ctl** %8, align 8
  %31 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %8, align 8
  %32 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %34)
  store %struct.ieee80211_tx_info* %35, %struct.ieee80211_tx_info** %9, align 8
  %36 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %38, align 8
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %7, align 8
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %42, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i64 0
  store %struct.ieee80211_tx_rate* %44, %struct.ieee80211_tx_rate** %10, align 8
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 1
  %47 = call i32 @memset(%struct.TYPE_11__* %46, i32 0, i32 8)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %28
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %52 = icmp ne %struct.ieee80211_vif* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %55 = icmp ne %struct.__wmi_event_txstatus* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %50, %28
  br label %177

57:                                               ; preds = %53
  %58 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %59 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATH9K_HTC_TXSTAT_ACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %57
  %65 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %64
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %85 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATH9K_HTC_TXSTAT_FILT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %92 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %98 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ATH9K_HTC_TXSTAT_RTC_CTS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %105 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  %112 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %113 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ATH9K_HTC_TXSTAT_RATE, align 4
  %116 = call i32 @MS(i32 %114, i32 %115)
  %117 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %118 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %120 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ATH9K_HTC_TXSTAT_MCS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %109
  %126 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %127 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %132 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATH9K_HTC_TXSTAT_CW40, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %125
  %138 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %139 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %125
  %144 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %145 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ATH9K_HTC_TXSTAT_SGI, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %152 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %153 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %143
  br label %172

157:                                              ; preds = %109
  %158 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %11, align 8
  %159 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %168 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %157
  br label %172

172:                                              ; preds = %171, %156
  %173 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %174 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = call i32 @ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv* %173, %struct.ieee80211_vif* %174, %struct.sk_buff* %175)
  br label %177

177:                                              ; preds = %172, %56
  %178 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %179 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = call i32 @spin_lock_bh(i32* %180)
  %182 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %183 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, -1
  store i64 %186, i64* %184, align 8
  %187 = icmp slt i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i64 @WARN_ON(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %177
  %192 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %193 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %177
  %196 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %197 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = call i32 @spin_unlock_bh(i32* %198)
  %200 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv* %200, i32 %201)
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %203)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %14, align 4
  %206 = and i32 %205, 3
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %195
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %213, %214
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %209
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %220, %221
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @memmove(i32 %222, i32 %225, i32 %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @skb_pull(%struct.sk_buff* %228, i32 %229)
  br label %231

231:                                              ; preds = %217, %209, %195
  %232 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %233 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %232, i32 0, i32 0
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %236 = call i32 @ieee80211_tx_status(%struct.TYPE_12__* %234, %struct.sk_buff* %235)
  br label %237

237:                                              ; preds = %231, %25
  ret void
}

declare dso_local i32 @strip_drv_header(%struct.ath9k_htc_priv*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_status(%struct.TYPE_12__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
