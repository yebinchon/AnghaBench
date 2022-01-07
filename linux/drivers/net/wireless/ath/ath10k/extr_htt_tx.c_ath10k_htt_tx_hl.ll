; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_hl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32, i64, i64 }
%struct.htt_cmd_hdr = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.htt_data_tx_desc = type { i32, i32, i64, i8*, i8*, i8* }
%struct.ath10k_skb_cb = type { i32 }

@IEEE80211_CCMP_MIC_LEN = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE = common dso_local global i32 0, align 4
@ATH10K_SKB_F_NO_HWCRYPT = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_VDEV_ID = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_EXT_TID = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ATH10K_FLAG_RAW_MODE = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD = common dso_local global i32 0, align 4
@HTT_TX_HL_NEEDED_HEADROOM = common dso_local global i64 0, align 8
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Not enough headroom in skb. Current headroom: %u, needed: %u. Reallocating...\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"htt hl tx: Unable to realloc skb!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTT_DATA_TX_DESC_FLAGS1_POSTPONED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"msdu_id allocation failed %d\0A\00", align 1
@HTT_H2T_MSG_TYPE_TX_FRM = common dso_local global i32 0, align 4
@HTT_INVALID_PEERID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, i32, %struct.sk_buff*)* @ath10k_htt_tx_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_hl(%struct.ath10k_htt* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath10k_htt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.htt_cmd_hdr*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.htt_data_tx_desc*, align 8
  %13 = alloca %struct.ath10k_skb_cb*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %21 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %21, i32 0, i32 1
  %23 = load %struct.ath10k*, %struct.ath10k** %22, align 8
  store %struct.ath10k* %23, %struct.ath10k** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %27, %struct.ieee80211_hdr** %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %28)
  store %struct.ath10k_skb_cb* %29, %struct.ath10k_skb_cb** %13, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 131
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @ath10k_htt_tx_get_vdev_id(%struct.ath10k* %33, %struct.sk_buff* %34)
  store i32 %35, i32* %16, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @ath10k_htt_tx_get_tid(%struct.sk_buff* %36, i32 %37)
  store i32 %38, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ieee80211_is_action(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %3
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ieee80211_is_deauth(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ieee80211_is_disassoc(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %44, %3
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ieee80211_has_protected(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i32, i32* @IEEE80211_CCMP_MIC_LEN, align 4
  %65 = call i32 @skb_put(%struct.sk_buff* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %56, %50
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %5, align 4
  switch i32 %70, label %89 [
    i32 128, label %71
    i32 129, label %71
    i32 131, label %75
    i32 130, label %81
  ]

71:                                               ; preds = %66, %66
  %72 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT, align 4
  %73 = load i32, i32* %18, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %66, %71
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE, align 4
  %78 = call i32 @SM(i32 %76, i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %18, align 4
  br label %89

81:                                               ; preds = %66
  %82 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE, align 4
  %83 = call i32 @SM(i32 130, i32 %82)
  %84 = load i32, i32* %18, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT, align 4
  %87 = load i32, i32* %18, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %66, %81, %75
  %90 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %13, align 8
  %91 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ATH10K_SKB_F_NO_HWCRYPT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT, align 4
  %98 = load i32, i32* %18, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_VDEV_ID, align 4
  %103 = call i32 @SM(i32 %101, i32 %102)
  %104 = load i32, i32* %19, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_EXT_TID, align 4
  %108 = call i32 @SM(i32 %106, i32 %107)
  %109 = load i32, i32* %19, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %19, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %100
  %117 = load i32, i32* @ATH10K_FLAG_RAW_MODE, align 4
  %118 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %119 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %118, i32 0, i32 2
  %120 = call i32 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD, align 4
  %124 = load i32, i32* %19, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD, align 4
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %122, %116, %100
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i64 @skb_headroom(%struct.sk_buff* %130)
  %132 = load i64, i64* @HTT_TX_HL_NEEDED_HEADROOM, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %129
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %135, %struct.sk_buff** %14, align 8
  %136 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %137 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %136, i32 0, i32 1
  %138 = load %struct.ath10k*, %struct.ath10k** %137, align 8
  %139 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = call i64 @skb_headroom(%struct.sk_buff* %140)
  %142 = load i64, i64* @HTT_TX_HL_NEEDED_HEADROOM, align 8
  %143 = call i32 @ath10k_dbg(%struct.ath10k* %138, i32 %139, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %141, i64 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = load i64, i64* @HTT_TX_HL_NEEDED_HEADROOM, align 8
  %146 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %144, i64 %145)
  store %struct.sk_buff* %146, %struct.sk_buff** %6, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %148 = call i32 @kfree_skb(%struct.sk_buff* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %134
  %152 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %153 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %152, i32 0, i32 1
  %154 = load %struct.ath10k*, %struct.ath10k** %153, align 8
  %155 = call i32 @ath10k_warn(%struct.ath10k* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  br label %229

158:                                              ; preds = %134
  br label %159

159:                                              ; preds = %158, %129
  %160 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %161 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load i32, i32* @HTT_DATA_TX_DESC_FLAGS1_POSTPONED, align 4
  %167 = load i32, i32* %19, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %19, align 4
  %169 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call i32 @ath10k_htt_tx_alloc_msdu_id(%struct.ath10k_htt* %169, %struct.sk_buff* %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @ath10k_err(%struct.ath10k* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  br label %229

178:                                              ; preds = %165
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %20, align 4
  br label %180

180:                                              ; preds = %178, %159
  %181 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %182 = call i32 @skb_get(%struct.sk_buff* %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = call i32 @skb_push(%struct.sk_buff* %183, i32 4)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = call i32 @skb_push(%struct.sk_buff* %185, i32 40)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.htt_cmd_hdr*
  store %struct.htt_cmd_hdr* %190, %struct.htt_cmd_hdr** %10, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 4
  %195 = inttoptr i64 %194 to %struct.htt_data_tx_desc*
  store %struct.htt_data_tx_desc* %195, %struct.htt_data_tx_desc** %12, align 8
  %196 = load i32, i32* @HTT_H2T_MSG_TYPE_TX_FRM, align 4
  %197 = load %struct.htt_cmd_hdr*, %struct.htt_cmd_hdr** %10, align 8
  %198 = getelementptr inbounds %struct.htt_cmd_hdr, %struct.htt_cmd_hdr* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.htt_data_tx_desc*, %struct.htt_data_tx_desc** %12, align 8
  %201 = getelementptr inbounds %struct.htt_data_tx_desc, %struct.htt_data_tx_desc* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %19, align 4
  %203 = call i8* @__cpu_to_le16(i32 %202)
  %204 = load %struct.htt_data_tx_desc*, %struct.htt_data_tx_desc** %12, align 8
  %205 = getelementptr inbounds %struct.htt_data_tx_desc, %struct.htt_data_tx_desc* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i8* @__cpu_to_le16(i32 %206)
  %208 = load %struct.htt_data_tx_desc*, %struct.htt_data_tx_desc** %12, align 8
  %209 = getelementptr inbounds %struct.htt_data_tx_desc, %struct.htt_data_tx_desc* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %20, align 4
  %211 = call i8* @__cpu_to_le16(i32 %210)
  %212 = load %struct.htt_data_tx_desc*, %struct.htt_data_tx_desc** %12, align 8
  %213 = getelementptr inbounds %struct.htt_data_tx_desc, %struct.htt_data_tx_desc* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  %214 = load %struct.htt_data_tx_desc*, %struct.htt_data_tx_desc** %12, align 8
  %215 = getelementptr inbounds %struct.htt_data_tx_desc, %struct.htt_data_tx_desc* %214, i32 0, i32 2
  store i64 0, i64* %215, align 8
  %216 = load i32, i32* @HTT_INVALID_PEERID, align 4
  %217 = call i32 @__cpu_to_le32(i32 %216)
  %218 = load %struct.htt_data_tx_desc*, %struct.htt_data_tx_desc** %12, align 8
  %219 = getelementptr inbounds %struct.htt_data_tx_desc, %struct.htt_data_tx_desc* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %221 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %220, i32 0, i32 1
  %222 = load %struct.ath10k*, %struct.ath10k** %221, align 8
  %223 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %222, i32 0, i32 0
  %224 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %225 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = call i32 @ath10k_htc_send(i32* %223, i32 %226, %struct.sk_buff* %227)
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %180, %174, %151
  %230 = load i32, i32* %8, align 4
  ret i32 %230
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_get_vdev_id(%struct.ath10k*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_tx_get_tid(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_htt_tx_alloc_msdu_id(%struct.ath10k_htt*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_htc_send(i32*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
