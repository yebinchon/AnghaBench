; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_write_txwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_write_txwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_vif*, %struct.ieee80211_tx_rate* }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.mt7615_vif = type { i32, i32 }
%struct.mt7615_sta = type { i32 }
%struct.ieee80211_bar = type { i32 }

@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@MT7615_MAX_WMM_SETS = common dso_local global i32 0, align 4
@MT_TX_TYPE_CT = common dso_local global i32 0, align 4
@MT_LMAC_BCN0 = common dso_local global i32 0, align 4
@MT_TX_TYPE_FW = common dso_local global i32 0, align 4
@MT_LMAC_ALTX0 = common dso_local global i32 0, align 4
@MT_TXD0_TX_BYTES = common dso_local global i32 0, align 4
@MT_TXD_SIZE = common dso_local global i32 0, align 4
@MT_TXD0_P_IDX = common dso_local global i32 0, align 4
@MT_TX_PORT_IDX_LMAC = common dso_local global i32 0, align 4
@MT_TXD0_Q_IDX = common dso_local global i32 0, align 4
@MT_TXD1_LONG_FORMAT = common dso_local global i32 0, align 4
@MT_TXD1_WLAN_IDX = common dso_local global i32 0, align 4
@MT_TXD1_HDR_FORMAT = common dso_local global i32 0, align 4
@MT_HDR_FORMAT_802_11 = common dso_local global i32 0, align 4
@MT_TXD1_HDR_INFO = common dso_local global i32 0, align 4
@MT_TXD1_TID = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@MT_TXD1_PKT_FMT = common dso_local global i32 0, align 4
@MT_TXD1_OWN_MAC = common dso_local global i32 0, align 4
@MT_TXD2_FRAME_TYPE = common dso_local global i32 0, align 4
@MT_TXD2_SUB_TYPE = common dso_local global i32 0, align 4
@MT_TXD2_MULTICAST = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@MT_TXD2_BIP = common dso_local global i32 0, align 4
@MT_TXD3_PROTECT_FRAME = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@MT_TXD2_BA_DISABLE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_STBC = common dso_local global i32 0, align 4
@MT_TXD2_FIX_RATE = common dso_local global i32 0, align 4
@MT_TXD6_FIXED_BW = common dso_local global i32 0, align 4
@MT_TXD6_BW = common dso_local global i32 0, align 4
@MT_TXD6_TX_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MT_TXD6_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_LDPC = common dso_local global i32 0, align 4
@MT_TXD6_LDPC = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@MT_TXD5_TX_STATUS_HOST = common dso_local global i32 0, align 4
@MT_TXD5_SW_POWER_MGMT = common dso_local global i32 0, align 4
@MT_TXD5_PID = common dso_local global i32 0, align 4
@MT_TXD3_REM_TX_COUNT = common dso_local global i32 0, align 4
@MT_TXD3_SN_VALID = common dso_local global i32 0, align 4
@MT_TXD3_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@MT_TXD3_NO_ACK = common dso_local global i32 0, align 4
@MT_TXD7_TYPE = common dso_local global i32 0, align 4
@MT_TXD7_SUB_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_mac_write_txwi(%struct.mt7615_dev* %0, i32* %1, %struct.sk_buff* %2, %struct.mt76_wcid* %3, %struct.ieee80211_sta* %4, i32 %5, %struct.ieee80211_key_conf* %6) #0 {
  %8 = alloca %struct.mt7615_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.mt76_wcid*, align 8
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_key_conf*, align 8
  %15 = alloca %struct.ieee80211_tx_info*, align 8
  %16 = alloca %struct.ieee80211_tx_rate*, align 8
  %17 = alloca %struct.ieee80211_hdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_vif*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.mt7615_vif*, align 8
  %31 = alloca %struct.mt7615_sta*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.ieee80211_bar*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.mt76_wcid* %3, %struct.mt76_wcid** %11, align 8
  store %struct.ieee80211_sta* %4, %struct.ieee80211_sta** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ieee80211_key_conf* %6, %struct.ieee80211_key_conf** %14, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %36)
  store %struct.ieee80211_tx_info* %37, %struct.ieee80211_tx_info** %15, align 8
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %40, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %41, i64 0
  store %struct.ieee80211_tx_rate* %42, %struct.ieee80211_tx_rate** %16, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %46, %struct.ieee80211_hdr** %17, align 8
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @is_multicast_ether_addr(i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %53, align 8
  store %struct.ieee80211_vif* %54, %struct.ieee80211_vif** %19, align 8
  store i32 8, i32* %20, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %19, align 8
  %59 = icmp ne %struct.ieee80211_vif* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %7
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %19, align 8
  %62 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %64, %struct.mt7615_vif** %30, align 8
  %65 = load %struct.mt7615_vif*, %struct.mt7615_vif** %30, align 8
  %66 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %25, align 4
  %68 = load %struct.mt7615_vif*, %struct.mt7615_vif** %30, align 8
  %69 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %26, align 4
  br label %71

71:                                               ; preds = %60, %7
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %73 = icmp ne %struct.ieee80211_sta* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.mt7615_sta*
  store %struct.mt7615_sta* %78, %struct.mt7615_sta** %31, align 8
  %79 = load %struct.mt7615_sta*, %struct.mt7615_sta** %31, align 8
  %80 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %20, align 4
  br label %82

82:                                               ; preds = %74, %71
  %83 = load i32, i32* %27, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 2
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %27, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %91 = and i32 %89, %90
  %92 = ashr i32 %91, 4
  store i32 %92, i32* %22, align 4
  %93 = load i32, i32* %27, align 4
  %94 = call i64 @ieee80211_is_data(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %27, align 4
  %98 = call i64 @ieee80211_is_bufferable_mmpdu(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96, %82
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* @MT7615_MAX_WMM_SETS, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %104)
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* @MT_TX_TYPE_CT, align 4
  store i32 %107, i32* %23, align 4
  br label %119

108:                                              ; preds = %96
  %109 = load i32, i32* %27, align 4
  %110 = call i64 @ieee80211_is_beacon(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @MT_LMAC_BCN0, align 4
  store i32 %113, i32* %24, align 4
  %114 = load i32, i32* @MT_TX_TYPE_FW, align 4
  store i32 %114, i32* %23, align 4
  br label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @MT_LMAC_ALTX0, align 4
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* @MT_TX_TYPE_CT, align 4
  store i32 %117, i32* %23, align 4
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i32, i32* @MT_TXD0_TX_BYTES, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MT_TXD_SIZE, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @FIELD_PREP(i32 %120, i32 %125)
  %127 = load i32, i32* @MT_TXD0_P_IDX, align 4
  %128 = load i32, i32* @MT_TX_PORT_IDX_LMAC, align 4
  %129 = call i32 @FIELD_PREP(i32 %127, i32 %128)
  %130 = or i32 %126, %129
  %131 = load i32, i32* @MT_TXD0_Q_IDX, align 4
  %132 = load i32, i32* %24, align 4
  %133 = call i32 @FIELD_PREP(i32 %131, i32 %132)
  %134 = or i32 %130, %133
  store i32 %134, i32* %29, align 4
  %135 = load i32, i32* %29, align 4
  %136 = call i32 @cpu_to_le32(i32 %135)
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @MT_TXD1_LONG_FORMAT, align 4
  %140 = load i32, i32* @MT_TXD1_WLAN_IDX, align 4
  %141 = load %struct.mt76_wcid*, %struct.mt76_wcid** %11, align 8
  %142 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @FIELD_PREP(i32 %140, i32 %143)
  %145 = or i32 %139, %144
  %146 = load i32, i32* @MT_TXD1_HDR_FORMAT, align 4
  %147 = load i32, i32* @MT_HDR_FORMAT_802_11, align 4
  %148 = call i32 @FIELD_PREP(i32 %146, i32 %147)
  %149 = or i32 %145, %148
  %150 = load i32, i32* @MT_TXD1_HDR_INFO, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %151)
  %153 = sdiv i32 %152, 2
  %154 = call i32 @FIELD_PREP(i32 %150, i32 %153)
  %155 = or i32 %149, %154
  %156 = load i32, i32* @MT_TXD1_TID, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @FIELD_PREP(i32 %156, i32 %161)
  %163 = or i32 %155, %162
  %164 = load i32, i32* @MT_TXD1_PKT_FMT, align 4
  %165 = load i32, i32* %23, align 4
  %166 = call i32 @FIELD_PREP(i32 %164, i32 %165)
  %167 = or i32 %163, %166
  %168 = load i32, i32* @MT_TXD1_OWN_MAC, align 4
  %169 = load i32, i32* %25, align 4
  %170 = call i32 @FIELD_PREP(i32 %168, i32 %169)
  %171 = or i32 %167, %170
  store i32 %171, i32* %29, align 4
  %172 = load i32, i32* %29, align 4
  %173 = call i32 @cpu_to_le32(i32 %172)
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @MT_TXD2_FRAME_TYPE, align 4
  %177 = load i32, i32* %21, align 4
  %178 = call i32 @FIELD_PREP(i32 %176, i32 %177)
  %179 = load i32, i32* @MT_TXD2_SUB_TYPE, align 4
  %180 = load i32, i32* %22, align 4
  %181 = call i32 @FIELD_PREP(i32 %179, i32 %180)
  %182 = or i32 %178, %181
  %183 = load i32, i32* @MT_TXD2_MULTICAST, align 4
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @FIELD_PREP(i32 %183, i32 %184)
  %186 = or i32 %182, %185
  store i32 %186, i32* %29, align 4
  %187 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %14, align 8
  %188 = icmp ne %struct.ieee80211_key_conf* %187, null
  br i1 %188, label %189, label %214

189:                                              ; preds = %119
  %190 = load i32, i32* %18, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %194 = call i64 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %14, align 8
  %198 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load i32, i32* @MT_TXD2_BIP, align 4
  %204 = load i32, i32* %29, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %29, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 3
  store i32 0, i32* %207, align 4
  br label %213

208:                                              ; preds = %196, %192, %189
  %209 = load i32, i32* @MT_TXD3_PROTECT_FRAME, align 4
  %210 = call i32 @cpu_to_le32(i32 %209)
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %208, %202
  br label %217

214:                                              ; preds = %119
  %215 = load i32*, i32** %9, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %213
  %218 = load i32, i32* %29, align 4
  %219 = call i32 @cpu_to_le32(i32 %218)
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 %219, i32* %221, align 4
  %222 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %223 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %217
  %229 = load i32, i32* @MT_TXD2_BA_DISABLE, align 4
  %230 = call i32 @cpu_to_le32(i32 %229)
  %231 = load i32*, i32** %9, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %228, %217
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  store i32 0, i32* %237, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  store i32 0, i32* %239, align 4
  %240 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %16, align 8
  %241 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sge i64 %242, 0
  br i1 %243, label %244, label %334

244:                                              ; preds = %235
  %245 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %16, align 8
  %246 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %334

249:                                              ; preds = %244
  %250 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %251 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %334, label %256

256:                                              ; preds = %249
  %257 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %258 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @IEEE80211_TX_CTL_STBC, align 4
  %261 = and i32 %259, %260
  store i32 %261, i32* %32, align 4
  %262 = load %struct.mt7615_dev*, %struct.mt7615_dev** %8, align 8
  %263 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %16, align 8
  %264 = load i32, i32* %32, align 4
  %265 = call i32 @mt7615_mac_tx_rate_val(%struct.mt7615_dev* %262, %struct.ieee80211_tx_rate* %263, i32 %264, i32* %33)
  store i32 %265, i32* %34, align 4
  %266 = load i32, i32* @MT_TXD2_FIX_RATE, align 4
  %267 = call i32 @cpu_to_le32(i32 %266)
  %268 = load i32*, i32** %9, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* @MT_TXD6_FIXED_BW, align 4
  %273 = load i32, i32* @MT_TXD6_BW, align 4
  %274 = load i32, i32* %33, align 4
  %275 = call i32 @FIELD_PREP(i32 %273, i32 %274)
  %276 = or i32 %272, %275
  %277 = load i32, i32* @MT_TXD6_TX_RATE, align 4
  %278 = load i32, i32* %34, align 4
  %279 = call i32 @FIELD_PREP(i32 %277, i32 %278)
  %280 = or i32 %276, %279
  store i32 %280, i32* %29, align 4
  %281 = load i32, i32* %29, align 4
  %282 = call i32 @cpu_to_le32(i32 %281)
  %283 = load i32*, i32** %9, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 6
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %16, align 8
  %288 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %256
  %294 = load i32, i32* @MT_TXD6_SGI, align 4
  %295 = call i32 @cpu_to_le32(i32 %294)
  %296 = load i32*, i32** %9, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 6
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %293, %256
  %301 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %302 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @IEEE80211_TX_CTL_LDPC, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %300
  %308 = load i32, i32* @MT_TXD6_LDPC, align 4
  %309 = call i32 @cpu_to_le32(i32 %308)
  %310 = load i32*, i32** %9, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 6
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %307, %300
  %315 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %16, align 8
  %316 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %319 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %320 = or i32 %318, %319
  %321 = and i32 %317, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %314
  %324 = load i32, i32* @MT_TXD2_BA_DISABLE, align 4
  %325 = call i32 @cpu_to_le32(i32 %324)
  %326 = load i32*, i32** %9, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 2
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %323, %314
  %331 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %16, align 8
  %332 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %20, align 4
  br label %334

334:                                              ; preds = %330, %249, %244, %235
  %335 = load i32, i32* %27, align 4
  %336 = call i64 @ieee80211_is_beacon(i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* @MT_TXD5_TX_STATUS_HOST, align 4
  %340 = load i32, i32* @MT_TXD5_SW_POWER_MGMT, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* @MT_TXD5_PID, align 4
  %343 = load i32, i32* %13, align 4
  %344 = call i32 @FIELD_PREP(i32 %342, i32 %343)
  %345 = or i32 %341, %344
  store i32 %345, i32* %29, align 4
  %346 = load i32, i32* %29, align 4
  %347 = call i32 @cpu_to_le32(i32 %346)
  %348 = load i32*, i32** %9, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 5
  store i32 %347, i32* %349, align 4
  br label %353

350:                                              ; preds = %334
  %351 = load i32*, i32** %9, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 5
  store i32 0, i32* %352, align 4
  store i32 31, i32* %20, align 4
  br label %353

353:                                              ; preds = %350, %338
  %354 = load i32, i32* @MT_TXD3_REM_TX_COUNT, align 4
  %355 = load i32, i32* %20, align 4
  %356 = call i32 @FIELD_PREP(i32 %354, i32 %355)
  store i32 %356, i32* %29, align 4
  %357 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %358 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i64 @ieee80211_is_data_qos(i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %353
  %363 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %364 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @le16_to_cpu(i32 %365)
  %367 = call i32 @IEEE80211_SEQ_TO_SN(i32 %366)
  store i32 %367, i32* %28, align 4
  %368 = load i32, i32* @MT_TXD3_SN_VALID, align 4
  %369 = load i32, i32* %29, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %29, align 4
  br label %391

371:                                              ; preds = %353
  %372 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %373 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i64 @ieee80211_is_back_req(i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %390

377:                                              ; preds = %371
  %378 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %379 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = inttoptr i64 %380 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %381, %struct.ieee80211_bar** %35, align 8
  %382 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %35, align 8
  %383 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @le16_to_cpu(i32 %384)
  %386 = call i32 @IEEE80211_SEQ_TO_SN(i32 %385)
  store i32 %386, i32* %28, align 4
  %387 = load i32, i32* @MT_TXD3_SN_VALID, align 4
  %388 = load i32, i32* %29, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %29, align 4
  br label %390

390:                                              ; preds = %377, %371
  br label %391

391:                                              ; preds = %390, %362
  %392 = load i32, i32* @MT_TXD3_SEQ, align 4
  %393 = load i32, i32* %28, align 4
  %394 = call i32 @FIELD_PREP(i32 %392, i32 %393)
  %395 = load i32, i32* %29, align 4
  %396 = or i32 %395, %394
  store i32 %396, i32* %29, align 4
  %397 = load i32, i32* %29, align 4
  %398 = call i32 @cpu_to_le32(i32 %397)
  %399 = load i32*, i32** %9, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 3
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %404 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %391
  %410 = load i32, i32* @MT_TXD3_NO_ACK, align 4
  %411 = call i32 @cpu_to_le32(i32 %410)
  %412 = load i32*, i32** %9, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 3
  %414 = load i32, i32* %413, align 4
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 4
  br label %416

416:                                              ; preds = %409, %391
  %417 = load i32, i32* @MT_TXD7_TYPE, align 4
  %418 = load i32, i32* %21, align 4
  %419 = call i32 @FIELD_PREP(i32 %417, i32 %418)
  %420 = load i32, i32* @MT_TXD7_SUB_TYPE, align 4
  %421 = load i32, i32* %22, align 4
  %422 = call i32 @FIELD_PREP(i32 %420, i32 %421)
  %423 = or i32 %419, %422
  %424 = load i32*, i32** %9, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 7
  store i32 %423, i32* %425, align 4
  ret i32 0
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_bufferable_mmpdu(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff*) #1

declare dso_local i32 @mt7615_mac_tx_rate_val(%struct.mt7615_dev*, %struct.ieee80211_tx_rate*, i32, i32*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
