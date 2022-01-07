; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i64, %struct.ath10k*, %struct.TYPE_21__, %struct.TYPE_17__, i32 }
%struct.ath10k = type { %struct.TYPE_16__, %struct.TYPE_23__, i32, %struct.TYPE_19__, %struct.device* }
%struct.TYPE_16__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.htt_msdu_ext_desc* }
%struct.htt_msdu_ext_desc = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.ath10k_htt_txbuf_32* }
%struct.ath10k_htt_txbuf_32 = type { %struct.TYPE_18__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.htt_data_tx_desc_frag* }
%struct.TYPE_18__ = type { i64, i64, i8* }
%struct.TYPE_26__ = type { i32, i8*, %struct.TYPE_25__, i8*, i8*, i8*, i8* }
%struct.TYPE_25__ = type { i8*, i8* }
%struct.TYPE_24__ = type { i32 }
%struct.htt_data_tx_desc_frag = type { %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i8*, i32, i8* }
%struct.sk_buff = type { i32, i64, %struct.TYPE_18__* }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ath10k_skb_cb = type { i32, i32 }
%struct.ath10k_hif_sg_item = type { i32, i32, %struct.TYPE_18__*, i32*, i64 }

@IEEE80211_CCMP_MIC_LEN = common dso_local global i32 0, align 4
@ATH10K_SKB_F_NO_HWCRYPT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_VDEV_ID = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_EXT_TID = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ATH10K_FLAG_RAW_MODE = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD = common dso_local global i32 0, align 4
@HTT_MSDU_CHECKSUM_ENABLE = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_POSTPONED = common dso_local global i32 0, align 4
@HTT_H2T_MSG_TYPE_TX_FRM = common dso_local global i32 0, align 4
@HTT_INVALID_PEERID = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"htt tx flags0 %hhu flags1 %hu len %d id %hu frags_paddr %pad, msdu_paddr %pad vdev %hhu tid %hhu freq %hu\0A\00", align 1
@ATH10K_DBG_HTT_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"htt tx msdu: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, i32, %struct.sk_buff*)* @ath10k_htt_tx_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_32(%struct.ath10k_htt* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ath10k_skb_cb*, align 8
  %13 = alloca [2 x %struct.ath10k_hif_sg_item], align 16
  %14 = alloca %struct.ath10k_htt_txbuf_32*, align 8
  %15 = alloca %struct.htt_data_tx_desc_frag*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.htt_msdu_ext_desc*, align 8
  %28 = alloca %struct.htt_msdu_ext_desc*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %29 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %30 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %29, i32 0, i32 1
  %31 = load %struct.ath10k*, %struct.ath10k** %30, align 8
  store %struct.ath10k* %31, %struct.ath10k** %8, align 8
  %32 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 4
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %9, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = bitcast %struct.TYPE_18__* %37 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %38, %struct.ieee80211_hdr** %10, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %39)
  store %struct.ieee80211_tx_info* %40, %struct.ieee80211_tx_info** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %41)
  store %struct.ath10k_skb_cb* %42, %struct.ath10k_skb_cb** %12, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 131
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @ath10k_htt_tx_get_vdev_id(%struct.ath10k* %46, %struct.sk_buff* %47)
  store i32 %48, i32* %17, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ath10k_htt_tx_get_tid(%struct.sk_buff* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store %struct.htt_msdu_ext_desc* null, %struct.htt_msdu_ext_desc** %27, align 8
  store %struct.htt_msdu_ext_desc* null, %struct.htt_msdu_ext_desc** %28, align 8
  %52 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @ath10k_htt_tx_alloc_msdu_id(%struct.ath10k_htt* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %3
  br label %520

58:                                               ; preds = %3
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %22, align 4
  %60 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %61 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @min(i32 %62, i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @roundup(i32 %67, i32 4)
  store i32 %68, i32* %19, align 4
  %69 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %70 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %71, align 8
  %73 = load i32, i32* %22, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %72, i64 %74
  store %struct.ath10k_htt_txbuf_32* %75, %struct.ath10k_htt_txbuf_32** %14, align 8
  %76 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %77 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 104, %82
  %84 = add i64 %80, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %26, align 4
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ieee80211_is_action(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %58
  %92 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ieee80211_is_deauth(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @ieee80211_is_disassoc(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %97, %91, %58
  %104 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @ieee80211_has_protected(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = load i32, i32* @IEEE80211_CCMP_MIC_LEN, align 4
  %112 = call i32 @skb_put(%struct.sk_buff* %110, i32 %111)
  br label %134

113:                                              ; preds = %103, %97
  %114 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %115 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATH10K_SKB_F_NO_HWCRYPT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 128
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %125 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @ieee80211_has_protected(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = load i32, i32* @IEEE80211_CCMP_MIC_LEN, align 4
  %132 = call i32 @skb_put(%struct.sk_buff* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %123, %120, %113
  br label %134

134:                                              ; preds = %133, %109
  %135 = load %struct.device*, %struct.device** %9, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 2
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DMA_TO_DEVICE, align 4
  %143 = call i32 @dma_map_single(%struct.device* %135, %struct.TYPE_18__* %138, i32 %141, i32 %142)
  %144 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %145 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.device*, %struct.device** %9, align 8
  %147 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %148 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dma_mapping_error(%struct.device* %146, i32 %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %134
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %20, align 4
  br label %516

156:                                              ; preds = %134
  %157 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %158 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %161 = and i32 %159, %160
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %166 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %24, align 4
  br label %169

169:                                              ; preds = %164, %156
  %170 = load i32, i32* %6, align 4
  switch i32 %170, label %277 [
    i32 128, label %171
    i32 129, label %171
    i32 131, label %175
    i32 130, label %266
  ]

171:                                              ; preds = %169, %169
  %172 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT, align 4
  %173 = load i32, i32* %21, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %21, align 4
  br label %175

175:                                              ; preds = %169, %171
  %176 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %177 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %231

181:                                              ; preds = %175
  %182 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %183 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load %struct.htt_msdu_ext_desc*, %struct.htt_msdu_ext_desc** %184, align 8
  store %struct.htt_msdu_ext_desc* %185, %struct.htt_msdu_ext_desc** %28, align 8
  %186 = load %struct.htt_msdu_ext_desc*, %struct.htt_msdu_ext_desc** %28, align 8
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.htt_msdu_ext_desc, %struct.htt_msdu_ext_desc* %186, i64 %188
  %190 = call i32 @memset(%struct.htt_msdu_ext_desc* %189, i32 0, i32 8)
  %191 = load %struct.htt_msdu_ext_desc*, %struct.htt_msdu_ext_desc** %28, align 8
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.htt_msdu_ext_desc, %struct.htt_msdu_ext_desc* %191, i64 %193
  %195 = getelementptr inbounds %struct.htt_msdu_ext_desc, %struct.htt_msdu_ext_desc* %194, i32 0, i32 1
  %196 = bitcast i32* %195 to %struct.htt_data_tx_desc_frag*
  store %struct.htt_data_tx_desc_frag* %196, %struct.htt_data_tx_desc_frag** %15, align 8
  %197 = load %struct.htt_msdu_ext_desc*, %struct.htt_msdu_ext_desc** %28, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.htt_msdu_ext_desc, %struct.htt_msdu_ext_desc* %197, i64 %199
  store %struct.htt_msdu_ext_desc* %200, %struct.htt_msdu_ext_desc** %27, align 8
  %201 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %202 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @__cpu_to_le32(i32 %203)
  %205 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %206 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %205, i64 0
  %207 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 2
  store i8* %204, i8** %208, align 8
  %209 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %210 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %209, i64 0
  %211 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @__cpu_to_le16(i32 %215)
  %217 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %218 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %217, i64 0
  %219 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  store i8* %216, i8** %220, align 8
  %221 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %222 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %22, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 8, %227
  %229 = add i64 %225, %228
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %25, align 4
  br label %260

231:                                              ; preds = %175
  %232 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %233 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %232, i32 0, i32 3
  %234 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %233, align 8
  store %struct.htt_data_tx_desc_frag* %234, %struct.htt_data_tx_desc_frag** %15, align 8
  %235 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %236 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @__cpu_to_le32(i32 %237)
  %239 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %240 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %239, i64 0
  %241 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  store i8* %238, i8** %242, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i8* @__cpu_to_le32(i32 %245)
  %247 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %248 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %247, i64 0
  %249 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  store i8* %246, i8** %250, align 8
  %251 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %252 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %251, i64 1
  %253 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  store i8* null, i8** %254, align 8
  %255 = load %struct.htt_data_tx_desc_frag*, %struct.htt_data_tx_desc_frag** %15, align 8
  %256 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %255, i64 1
  %257 = getelementptr inbounds %struct.htt_data_tx_desc_frag, %struct.htt_data_tx_desc_frag* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  store i8* null, i8** %258, align 8
  %259 = load i32, i32* %26, align 4
  store i32 %259, i32* %25, align 4
  br label %260

260:                                              ; preds = %231, %181
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE, align 4
  %263 = call i32 @SM(i32 %261, i32 %262)
  %264 = load i32, i32* %21, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %21, align 4
  br label %277

266:                                              ; preds = %169
  %267 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE, align 4
  %268 = call i32 @SM(i32 130, i32 %267)
  %269 = load i32, i32* %21, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %21, align 4
  %271 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT, align 4
  %272 = load i32, i32* %21, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %21, align 4
  %274 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %275 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %25, align 4
  br label %277

277:                                              ; preds = %169, %266, %260
  %278 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %279 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %282 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  store i64 %280, i64* %283, align 8
  %284 = load i32, i32* %19, align 4
  %285 = sext i32 %284 to i64
  %286 = add i64 68, %285
  %287 = trunc i64 %286 to i32
  %288 = call i8* @__cpu_to_le16(i32 %287)
  %289 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %290 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  store i8* %288, i8** %291, align 8
  %292 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %293 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 1
  store i64 0, i64* %294, align 8
  %295 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %296 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @ATH10K_SKB_F_NO_HWCRYPT, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %277
  %302 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT, align 4
  %303 = load i32, i32* %21, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %21, align 4
  br label %305

305:                                              ; preds = %301, %277
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_VDEV_ID, align 4
  %308 = call i32 @SM(i32 %306, i32 %307)
  %309 = load i32, i32* %23, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %23, align 4
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_EXT_TID, align 4
  %313 = call i32 @SM(i32 %311, i32 %312)
  %314 = load i32, i32* %23, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %23, align 4
  %316 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %317 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %346

321:                                              ; preds = %305
  %322 = load i32, i32* @ATH10K_FLAG_RAW_MODE, align 4
  %323 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %324 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %323, i32 0, i32 2
  %325 = call i32 @test_bit(i32 %322, i32* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %346, label %327

327:                                              ; preds = %321
  %328 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD, align 4
  %329 = load i32, i32* %23, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %23, align 4
  %331 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD, align 4
  %332 = load i32, i32* %23, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %23, align 4
  %334 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %335 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %327
  %340 = load i32, i32* @HTT_MSDU_CHECKSUM_ENABLE, align 4
  %341 = load %struct.htt_msdu_ext_desc*, %struct.htt_msdu_ext_desc** %27, align 8
  %342 = getelementptr inbounds %struct.htt_msdu_ext_desc, %struct.htt_msdu_ext_desc* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %339, %327
  br label %346

346:                                              ; preds = %345, %321, %305
  %347 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_POSTPONED, align 4
  %348 = load i32, i32* %23, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %23, align 4
  %350 = load i32, i32* @HTT_H2T_MSG_TYPE_TX_FRM, align 4
  %351 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %352 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 0
  store i32 %350, i32* %353, align 8
  %354 = load i32, i32* %21, align 4
  %355 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %356 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 0
  store i32 %354, i32* %357, align 8
  %358 = load i32, i32* %23, align 4
  %359 = call i8* @__cpu_to_le16(i32 %358)
  %360 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %361 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 6
  store i8* %359, i8** %362, align 8
  %363 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %364 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = call i8* @__cpu_to_le16(i32 %365)
  %367 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %368 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 5
  store i8* %366, i8** %369, align 8
  %370 = load i32, i32* %22, align 4
  %371 = call i8* @__cpu_to_le16(i32 %370)
  %372 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %373 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 4
  store i8* %371, i8** %374, align 8
  %375 = load i32, i32* %25, align 4
  %376 = call i8* @__cpu_to_le32(i32 %375)
  %377 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %378 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 3
  store i8* %376, i8** %379, align 8
  %380 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %381 = call i64 @ath10k_mac_tx_frm_has_freq(%struct.ath10k* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %346
  %384 = load i32, i32* @HTT_INVALID_PEERID, align 4
  %385 = call i8* @__cpu_to_le16(i32 %384)
  %386 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %387 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 1
  store i8* %385, i8** %389, align 8
  %390 = load i32, i32* %24, align 4
  %391 = call i8* @__cpu_to_le16(i32 %390)
  %392 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %393 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 0
  store i8* %391, i8** %395, align 8
  br label %402

396:                                              ; preds = %346
  %397 = load i32, i32* @HTT_INVALID_PEERID, align 4
  %398 = call i8* @__cpu_to_le32(i32 %397)
  %399 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %400 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 1
  store i8* %398, i8** %401, align 8
  br label %402

402:                                              ; preds = %396, %383
  %403 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %404 = load i32, i32* %22, align 4
  %405 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %406 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %17, align 4
  %409 = load i32, i32* %18, align 4
  %410 = call i32 @trace_ath10k_htt_tx(%struct.ath10k* %403, i32 %404, i32 %407, i32 %408, i32 %409)
  %411 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %412 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %413 = load i32, i32* %21, align 4
  %414 = load i32, i32* %23, align 4
  %415 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %416 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* %22, align 4
  %419 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %420 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %419, i32 0, i32 1
  %421 = load i32, i32* %17, align 4
  %422 = load i32, i32* %18, align 4
  %423 = load i32, i32* %24, align 4
  %424 = call i32 @ath10k_dbg(%struct.ath10k* %411, i32 %412, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %413, i32 %414, i32 %417, i32 %418, i32* %25, i32* %420, i32 %421, i32 %422, i32 %423)
  %425 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %426 = load i32, i32* @ATH10K_DBG_HTT_DUMP, align 4
  %427 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %428 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %427, i32 0, i32 2
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %428, align 8
  %430 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %431 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @ath10k_dbg_dump(%struct.ath10k* %425, i32 %426, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %429, i32 %432)
  %434 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %435 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %436 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %435, i32 0, i32 2
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %436, align 8
  %438 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %439 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @trace_ath10k_tx_hdr(%struct.ath10k* %434, %struct.TYPE_18__* %437, i32 %440)
  %442 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %443 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %444 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %443, i32 0, i32 2
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %444, align 8
  %446 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %447 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @trace_ath10k_tx_payload(%struct.ath10k* %442, %struct.TYPE_18__* %445, i32 %448)
  %450 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %451 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %450, i32 0, i32 4
  store i64 0, i64* %451, align 8
  %452 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %453 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %452, i32 0, i32 3
  store i32* null, i32** %453, align 16
  %454 = load %struct.ath10k_htt_txbuf_32*, %struct.ath10k_htt_txbuf_32** %14, align 8
  %455 = getelementptr inbounds %struct.ath10k_htt_txbuf_32, %struct.ath10k_htt_txbuf_32* %454, i32 0, i32 0
  %456 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %457 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %456, i32 0, i32 2
  store %struct.TYPE_18__* %455, %struct.TYPE_18__** %457, align 8
  %458 = load i32, i32* %26, align 4
  %459 = sext i32 %458 to i64
  %460 = add i64 %459, 8
  %461 = trunc i64 %460 to i32
  %462 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %463 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %462, i32 0, i32 0
  store i32 %461, i32* %463, align 16
  %464 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %465 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %464, i32 0, i32 1
  store i32 92, i32* %465, align 4
  %466 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 1
  %467 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %466, i32 0, i32 4
  store i64 0, i64* %467, align 8
  %468 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 1
  %469 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %468, i32 0, i32 3
  store i32* null, i32** %469, align 16
  %470 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %471 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %470, i32 0, i32 2
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %471, align 8
  %473 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 1
  %474 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %473, i32 0, i32 2
  store %struct.TYPE_18__* %472, %struct.TYPE_18__** %474, align 8
  %475 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %476 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 1
  %479 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %478, i32 0, i32 0
  store i32 %477, i32* %479, align 16
  %480 = load i32, i32* %19, align 4
  %481 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 1
  %482 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %481, i32 0, i32 1
  store i32 %480, i32* %482, align 4
  %483 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %484 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %483, i32 0, i32 1
  %485 = load %struct.ath10k*, %struct.ath10k** %484, align 8
  %486 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %487 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %486, i32 0, i32 1
  %488 = load %struct.ath10k*, %struct.ath10k** %487, align 8
  %489 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 0
  %491 = load %struct.TYPE_27__*, %struct.TYPE_27__** %490, align 8
  %492 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %493 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %491, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %499 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], [2 x %struct.ath10k_hif_sg_item]* %13, i64 0, i64 0
  %500 = call i32 @ARRAY_SIZE(%struct.ath10k_hif_sg_item* %499)
  %501 = call i32 @ath10k_hif_tx_sg(%struct.ath10k* %485, i32 %497, %struct.ath10k_hif_sg_item* %498, i32 %500)
  store i32 %501, i32* %20, align 4
  %502 = load i32, i32* %20, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %402
  br label %506

505:                                              ; preds = %402
  store i32 0, i32* %4, align 4
  br label %522

506:                                              ; preds = %504
  %507 = load %struct.device*, %struct.device** %9, align 8
  %508 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %509 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %512 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* @DMA_TO_DEVICE, align 4
  %515 = call i32 @dma_unmap_single(%struct.device* %507, i32 %510, i32 %513, i32 %514)
  br label %516

516:                                              ; preds = %506, %153
  %517 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %518 = load i32, i32* %22, align 4
  %519 = call i32 @ath10k_htt_tx_free_msdu_id(%struct.ath10k_htt* %517, i32 %518)
  br label %520

520:                                              ; preds = %516, %57
  %521 = load i32, i32* %20, align 4
  store i32 %521, i32* %4, align 4
  br label %522

522:                                              ; preds = %520, %505
  %523 = load i32, i32* %4, align 4
  ret i32 %523
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_get_vdev_id(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_get_tid(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_htt_tx_alloc_msdu_id(%struct.ath10k_htt*, %struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.htt_msdu_ext_desc*, i32, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @ath10k_mac_tx_frm_has_freq(%struct.ath10k*) #1

declare dso_local i32 @trace_ath10k_htt_tx(%struct.ath10k*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @trace_ath10k_tx_hdr(%struct.ath10k*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @trace_ath10k_tx_payload(%struct.ath10k*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ath10k_hif_tx_sg(%struct.ath10k*, i32, %struct.ath10k_hif_sg_item*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ath10k_hif_sg_item*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ath10k_htt_tx_free_msdu_id(%struct.ath10k_htt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
