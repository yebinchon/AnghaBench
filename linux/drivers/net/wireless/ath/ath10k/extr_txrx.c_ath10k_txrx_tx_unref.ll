; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_txrx_tx_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_txrx_tx_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i64, i64, %struct.ath10k*, i32, i32, i32 }
%struct.ath10k = type { i32, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }
%struct.htt_tx_done = type { i64, i64, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ieee80211_txq = type { i32, i64, i64 }
%struct.ath10k_skb_cb = type { i32, i64, %struct.ieee80211_txq* }
%struct.ath10k_txq = type { i32 }
%struct.sk_buff = type { i32 }

@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"htt tx completion msdu_id %u status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"warning: msdu_id %d too big, ignoring\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"received tx completion for invalid msdu_id: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@HTT_TX_COMPL_STATE_NOACK = common dso_local global i64 0, align 8
@HTT_TX_COMPL_STATE_ACK = common dso_local global i64 0, align 8
@IEEE80211_TX_STAT_NOACK_TRANSMITTED = common dso_local global i32 0, align 4
@HTT_TX_COMPL_STATE_DISCARD = common dso_local global i64 0, align 8
@ATH10K_INVALID_RSSI = common dso_local global i64 0, align 8
@ATH10K_DEFAULT_NOISE_FLOOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt* %0, %struct.htt_tx_done* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_htt*, align 8
  %5 = alloca %struct.htt_tx_done*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_txq*, align 8
  %10 = alloca %struct.ath10k_skb_cb*, align 8
  %11 = alloca %struct.ath10k_txq*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %4, align 8
  store %struct.htt_tx_done* %1, %struct.htt_tx_done** %5, align 8
  %13 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %13, i32 0, i32 2
  %15 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  store %struct.ath10k* %15, %struct.ath10k** %6, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 2
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %20 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %21 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %22 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %25 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ath10k_dbg(%struct.ath10k* %19, i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  %28 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %29 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %37 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %38 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ath10k_warn(%struct.ath10k* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %264

43:                                               ; preds = %2
  %44 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %45 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %44, i32 0, i32 3
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %48 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %47, i32 0, i32 5
  %49 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %50 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.sk_buff* @idr_find(i32* %48, i64 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %12, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %43
  %56 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %57 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %58 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %61, i32 0, i32 3
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %264

66:                                               ; preds = %43
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %67)
  store %struct.ath10k_skb_cb* %68, %struct.ath10k_skb_cb** %10, align 8
  %69 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %70 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %69, i32 0, i32 2
  %71 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %70, align 8
  store %struct.ieee80211_txq* %71, %struct.ieee80211_txq** %9, align 8
  %72 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %9, align 8
  %73 = icmp ne %struct.ieee80211_txq* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = bitcast i8* %78 to %struct.ath10k_txq*
  store %struct.ath10k_txq* %79, %struct.ath10k_txq** %11, align 8
  %80 = load %struct.ath10k_txq*, %struct.ath10k_txq** %11, align 8
  %81 = getelementptr inbounds %struct.ath10k_txq, %struct.ath10k_txq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %66
  %85 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %86 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %87 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ath10k_htt_tx_free_msdu_id(%struct.ath10k_htt* %85, i64 %88)
  %90 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %91 = call i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt* %90)
  %92 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %93 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %98 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %97, i32 0, i32 4
  %99 = call i32 @wake_up(i32* %98)
  br label %100

100:                                              ; preds = %96, %84
  %101 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %102 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %101, i32 0, i32 3
  %103 = call i32 @spin_unlock_bh(i32* %102)
  %104 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %9, align 8
  %105 = icmp ne %struct.ieee80211_txq* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %9, align 8
  %108 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %113 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %9, align 8
  %118 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %124 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ieee80211_sta_register_airtime(i64 %119, i32 %122, i64 %125, i32 0)
  br label %127

127:                                              ; preds = %116, %111, %106, %100
  %128 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %129 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load %struct.device*, %struct.device** %7, align 8
  %136 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %137 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DMA_TO_DEVICE, align 4
  %143 = call i32 @dma_unmap_single(%struct.device* %135, i32 %138, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %134, %127
  %145 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %146 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %145, i32 0, i32 2
  %147 = load %struct.ath10k*, %struct.ath10k** %146, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = call i32 @ath10k_report_offchan_tx(%struct.ath10k* %147, %struct.sk_buff* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %150)
  store %struct.ieee80211_tx_info* %151, %struct.ieee80211_tx_info** %8, align 8
  %152 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %152, i32 0, i32 1
  %154 = call i32 @memset(%struct.TYPE_4__* %153, i32 0, i32 16)
  %155 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %156 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %157 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @trace_ath10k_txrx_tx_unref(%struct.ath10k* %155, i64 %158)
  %160 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %161 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %144
  %167 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %168 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %169 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %144
  %173 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %174 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @HTT_TX_COMPL_STATE_NOACK, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %182 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %178, %172
  %186 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %187 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @HTT_TX_COMPL_STATE_ACK, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %185
  %192 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %193 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @IEEE80211_TX_STAT_NOACK_TRANSMITTED, align 4
  %200 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %191, %185
  %205 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %206 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @HTT_TX_COMPL_STATE_DISCARD, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %232

210:                                              ; preds = %204
  %211 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %212 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = load i32, i32* @IEEE80211_TX_STAT_NOACK_TRANSMITTED, align 4
  %219 = xor i32 %218, -1
  %220 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %221 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %231

224:                                              ; preds = %210
  %225 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %226 = xor i32 %225, -1
  %227 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %228 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %224, %217
  br label %232

232:                                              ; preds = %231, %204
  %233 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %234 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @HTT_TX_COMPL_STATE_ACK, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %240 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @ATH10K_INVALID_RSSI, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %238
  %245 = load i64, i64* @ATH10K_DEFAULT_NOISE_FLOOR, align 8
  %246 = load %struct.htt_tx_done*, %struct.htt_tx_done** %5, align 8
  %247 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %245, %248
  %250 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %251 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  store i64 %249, i64* %252, align 8
  %253 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %254 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  store i32 1, i32* %255, align 8
  br label %256

256:                                              ; preds = %244, %238, %232
  %257 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %258 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %257, i32 0, i32 2
  %259 = load %struct.ath10k*, %struct.ath10k** %258, align 8
  %260 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %263 = call i32 @ieee80211_tx_status(i32 %261, %struct.sk_buff* %262)
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %256, %55, %35
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @idr_find(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_free_msdu_id(%struct.ath10k_htt*, i64) #1

declare dso_local i32 @ath10k_htt_tx_dec_pending(%struct.ath10k_htt*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ieee80211_sta_register_airtime(i64, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ath10k_report_offchan_tx(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @trace_ath10k_txrx_tx_unref(%struct.ath10k*, i64) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
