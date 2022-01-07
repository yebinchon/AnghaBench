; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_write_txwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_write_txwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_vif*, %struct.ieee80211_tx_rate* }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_bar = type { i32 }
%struct.mt7603_vif = type { i32 }
%struct.mt7603_sta = type { i32 }

@MT_TXQ_BEACON = common dso_local global i32 0, align 4
@MT7603_WTBL_RESERVED = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@MT_TXD0_TX_BYTES = common dso_local global i32 0, align 4
@MT_TXD_SIZE = common dso_local global i32 0, align 4
@MT_TXD0_Q_IDX = common dso_local global i32 0, align 4
@MT_TXD1_LONG_FORMAT = common dso_local global i32 0, align 4
@MT_TXD1_OWN_MAC = common dso_local global i32 0, align 4
@MT_TXD1_TID = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@MT_TXD1_HDR_FORMAT = common dso_local global i32 0, align 4
@MT_HDR_FORMAT_802_11 = common dso_local global i32 0, align 4
@MT_TXD1_HDR_INFO = common dso_local global i32 0, align 4
@MT_TXD1_WLAN_IDX = common dso_local global i32 0, align 4
@MT_TXD1_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@MT_TXD1_NO_ACK = common dso_local global i32 0, align 4
@MT_TXD2_FRAME_TYPE = common dso_local global i32 0, align 4
@MT_TXD2_SUB_TYPE = common dso_local global i32 0, align 4
@MT_TXD2_MULTICAST = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@MT_TXD2_BA_DISABLE = common dso_local global i32 0, align 4
@MT_TXD5_TX_STATUS_HOST = common dso_local global i32 0, align 4
@MT_TXD5_SW_POWER_MGMT = common dso_local global i32 0, align 4
@MT_TXD5_PID = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_STBC = common dso_local global i32 0, align 4
@MT_TXD2_FIX_RATE = common dso_local global i32 0, align 4
@MT_TXD6_FIXED_BW = common dso_local global i32 0, align 4
@MT_TXD6_BW = common dso_local global i32 0, align 4
@MT_TXD6_TX_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MT_TXD6_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MT_TXD3_REM_TX_COUNT = common dso_local global i32 0, align 4
@MT_TXD3_SN_VALID = common dso_local global i32 0, align 4
@MT_TXD3_SEQ = common dso_local global i32 0, align 4
@MT_TXD3_PN_VALID = common dso_local global i32 0, align 4
@MT_TXD5_PN_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, i32*, %struct.sk_buff*, i32, %struct.mt76_wcid*, %struct.ieee80211_sta*, i32, %struct.ieee80211_key_conf*)* @mt7603_mac_write_txwi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_mac_write_txwi(%struct.mt7603_dev* %0, i32* %1, %struct.sk_buff* %2, i32 %3, %struct.mt76_wcid* %4, %struct.ieee80211_sta* %5, i32 %6, %struct.ieee80211_key_conf* %7) #0 {
  %9 = alloca %struct.mt7603_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mt76_wcid*, align 8
  %14 = alloca %struct.ieee80211_sta*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_key_conf*, align 8
  %17 = alloca %struct.ieee80211_tx_info*, align 8
  %18 = alloca %struct.ieee80211_tx_rate*, align 8
  %19 = alloca %struct.ieee80211_hdr*, align 8
  %20 = alloca %struct.ieee80211_bar*, align 8
  %21 = alloca %struct.ieee80211_vif*, align 8
  %22 = alloca %struct.mt76_queue*, align 8
  %23 = alloca %struct.mt7603_vif*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.mt7603_sta*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.mt76_wcid* %4, %struct.mt76_wcid** %13, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.ieee80211_key_conf* %7, %struct.ieee80211_key_conf** %16, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %38)
  store %struct.ieee80211_tx_info* %39, %struct.ieee80211_tx_info** %17, align 8
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %42, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i64 0
  store %struct.ieee80211_tx_rate* %44, %struct.ieee80211_tx_rate** %18, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %48, %struct.ieee80211_hdr** %19, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %52, %struct.ieee80211_bar** %20, align 8
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %55, align 8
  store %struct.ieee80211_vif* %56, %struct.ieee80211_vif** %21, align 8
  %57 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %58 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.mt76_queue*, %struct.mt76_queue** %64, align 8
  store %struct.mt76_queue* %65, %struct.mt76_queue** %22, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %66)
  store i32 %67, i32* %25, align 4
  store i32 8, i32* %26, align 4
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  store i32 %71, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %21, align 8
  %73 = icmp ne %struct.ieee80211_vif* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %21, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.mt7603_vif*
  store %struct.mt7603_vif* %78, %struct.mt7603_vif** %23, align 8
  %79 = load %struct.mt7603_vif*, %struct.mt7603_vif** %23, align 8
  %80 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %31, align 4
  %82 = load i32, i32* %31, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @MT_TXQ_BEACON, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %31, align 4
  %90 = add nsw i32 %89, 16
  store i32 %90, i32* %31, align 4
  br label %91

91:                                               ; preds = %88, %84, %74
  br label %92

92:                                               ; preds = %91, %8
  %93 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %94 = icmp ne %struct.ieee80211_sta* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %14, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.mt7603_sta*
  store %struct.mt7603_sta* %99, %struct.mt7603_sta** %34, align 8
  %100 = load %struct.mt7603_sta*, %struct.mt7603_sta** %34, align 8
  %101 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %26, align 4
  br label %103

103:                                              ; preds = %95, %92
  %104 = load %struct.mt76_wcid*, %struct.mt76_wcid** %13, align 8
  %105 = icmp ne %struct.mt76_wcid* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.mt76_wcid*, %struct.mt76_wcid** %13, align 8
  %108 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %24, align 4
  br label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @MT7603_WTBL_RESERVED, align 4
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i32, i32* %29, align 4
  %114 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %115 = and i32 %113, %114
  %116 = ashr i32 %115, 2
  store i32 %116, i32* %27, align 4
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %119 = and i32 %117, %118
  %120 = ashr i32 %119, 4
  store i32 %120, i32* %28, align 4
  %121 = load i32, i32* @MT_TXD0_TX_BYTES, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MT_TXD_SIZE, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @FIELD_PREP(i32 %121, i32 %126)
  %128 = load i32, i32* @MT_TXD0_Q_IDX, align 4
  %129 = load %struct.mt76_queue*, %struct.mt76_queue** %22, align 8
  %130 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @FIELD_PREP(i32 %128, i32 %131)
  %133 = or i32 %127, %132
  store i32 %133, i32* %32, align 4
  %134 = load i32, i32* %32, align 4
  %135 = call i32 @cpu_to_le32(i32 %134)
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @MT_TXD1_LONG_FORMAT, align 4
  %139 = load i32, i32* @MT_TXD1_OWN_MAC, align 4
  %140 = load i32, i32* %31, align 4
  %141 = call i32 @FIELD_PREP(i32 %139, i32 %140)
  %142 = or i32 %138, %141
  %143 = load i32, i32* @MT_TXD1_TID, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %148 = and i32 %146, %147
  %149 = call i32 @FIELD_PREP(i32 %143, i32 %148)
  %150 = or i32 %142, %149
  %151 = load i32, i32* @MT_TXD1_HDR_FORMAT, align 4
  %152 = load i32, i32* @MT_HDR_FORMAT_802_11, align 4
  %153 = call i32 @FIELD_PREP(i32 %151, i32 %152)
  %154 = or i32 %150, %153
  %155 = load i32, i32* @MT_TXD1_HDR_INFO, align 4
  %156 = load i32, i32* %25, align 4
  %157 = sdiv i32 %156, 2
  %158 = call i32 @FIELD_PREP(i32 %155, i32 %157)
  %159 = or i32 %154, %158
  %160 = load i32, i32* @MT_TXD1_WLAN_IDX, align 4
  %161 = load i32, i32* %24, align 4
  %162 = call i32 @FIELD_PREP(i32 %160, i32 %161)
  %163 = or i32 %159, %162
  %164 = load i32, i32* @MT_TXD1_PROTECTED, align 4
  %165 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %16, align 8
  %166 = icmp ne %struct.ieee80211_key_conf* %165, null
  %167 = xor i1 %166, true
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @FIELD_PREP(i32 %164, i32 %169)
  %171 = or i32 %163, %170
  store i32 %171, i32* %32, align 4
  %172 = load i32, i32* %32, align 4
  %173 = call i32 @cpu_to_le32(i32 %172)
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %177 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %112
  %183 = load i32, i32* @MT_TXD1_NO_ACK, align 4
  %184 = call i32 @cpu_to_le32(i32 %183)
  %185 = load i32*, i32** %10, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %182, %112
  %190 = load i32, i32* @MT_TXD2_FRAME_TYPE, align 4
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @FIELD_PREP(i32 %190, i32 %191)
  %193 = load i32, i32* @MT_TXD2_SUB_TYPE, align 4
  %194 = load i32, i32* %28, align 4
  %195 = call i32 @FIELD_PREP(i32 %193, i32 %194)
  %196 = or i32 %192, %195
  %197 = load i32, i32* @MT_TXD2_MULTICAST, align 4
  %198 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %199 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @is_multicast_ether_addr(i32 %200)
  %202 = call i32 @FIELD_PREP(i32 %197, i32 %201)
  %203 = or i32 %196, %202
  store i32 %203, i32* %32, align 4
  %204 = load i32, i32* %32, align 4
  %205 = call i32 @cpu_to_le32(i32 %204)
  %206 = load i32*, i32** %10, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  store i32 %205, i32* %207, align 4
  %208 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %209 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %189
  %215 = load i32, i32* @MT_TXD2_BA_DISABLE, align 4
  %216 = call i32 @cpu_to_le32(i32 %215)
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %214, %189
  %222 = load i32*, i32** %10, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  store i32 0, i32* %223, align 4
  %224 = load i32, i32* @MT_TXD5_TX_STATUS_HOST, align 4
  %225 = load i32, i32* @MT_TXD5_SW_POWER_MGMT, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @MT_TXD5_PID, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @FIELD_PREP(i32 %227, i32 %228)
  %230 = or i32 %226, %229
  store i32 %230, i32* %32, align 4
  %231 = load i32, i32* %32, align 4
  %232 = call i32 @cpu_to_le32(i32 %231)
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 5
  store i32 %232, i32* %234, align 4
  %235 = load i32*, i32** %10, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 6
  store i32 0, i32* %236, align 4
  %237 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %238 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp sge i64 %239, 0
  br i1 %240, label %241, label %315

241:                                              ; preds = %221
  %242 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %243 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %315

246:                                              ; preds = %241
  %247 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %248 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %315, label %253

253:                                              ; preds = %246
  %254 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %255 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @IEEE80211_TX_CTL_STBC, align 4
  %258 = and i32 %256, %257
  store i32 %258, i32* %35, align 4
  %259 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %260 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %261 = load i32, i32* %35, align 4
  %262 = call i32 @mt7603_mac_tx_rate_val(%struct.mt7603_dev* %259, %struct.ieee80211_tx_rate* %260, i32 %261, i32* %33)
  store i32 %262, i32* %36, align 4
  %263 = load i32, i32* @MT_TXD2_FIX_RATE, align 4
  %264 = call i32 @cpu_to_le32(i32 %263)
  %265 = load i32*, i32** %10, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* @MT_TXD6_FIXED_BW, align 4
  %270 = load i32, i32* @MT_TXD6_BW, align 4
  %271 = load i32, i32* %33, align 4
  %272 = call i32 @FIELD_PREP(i32 %270, i32 %271)
  %273 = or i32 %269, %272
  %274 = load i32, i32* @MT_TXD6_TX_RATE, align 4
  %275 = load i32, i32* %36, align 4
  %276 = call i32 @FIELD_PREP(i32 %274, i32 %275)
  %277 = or i32 %273, %276
  store i32 %277, i32* %32, align 4
  %278 = load i32, i32* %32, align 4
  %279 = call i32 @cpu_to_le32(i32 %278)
  %280 = load i32*, i32** %10, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 6
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %285 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %253
  %291 = load i32, i32* @MT_TXD6_SGI, align 4
  %292 = call i32 @cpu_to_le32(i32 %291)
  %293 = load i32*, i32** %10, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 6
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %290, %253
  %298 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %299 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %297
  %305 = load i32, i32* @MT_TXD2_BA_DISABLE, align 4
  %306 = call i32 @cpu_to_le32(i32 %305)
  %307 = load i32*, i32** %10, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %304, %297
  %312 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %313 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  store i32 %314, i32* %26, align 4
  br label %315

315:                                              ; preds = %311, %246, %241, %221
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* @MT_TXQ_BEACON, align 4
  %318 = icmp uge i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  store i32 31, i32* %26, align 4
  br label %320

320:                                              ; preds = %319, %315
  %321 = load i32, i32* @MT_TXD3_REM_TX_COUNT, align 4
  %322 = load i32, i32* %26, align 4
  %323 = call i32 @FIELD_PREP(i32 %321, i32 %322)
  %324 = load i32, i32* @MT_TXD3_SN_VALID, align 4
  %325 = or i32 %323, %324
  store i32 %325, i32* %32, align 4
  %326 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %327 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @ieee80211_is_data_qos(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %320
  %332 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %333 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @le16_to_cpu(i32 %334)
  store i32 %335, i32* %30, align 4
  br label %353

336:                                              ; preds = %320
  %337 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %338 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i64 @ieee80211_is_back_req(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %336
  %343 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %20, align 8
  %344 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @le16_to_cpu(i32 %345)
  store i32 %346, i32* %30, align 4
  br label %352

347:                                              ; preds = %336
  %348 = load i32, i32* @MT_TXD3_SN_VALID, align 4
  %349 = xor i32 %348, -1
  %350 = load i32, i32* %32, align 4
  %351 = and i32 %350, %349
  store i32 %351, i32* %32, align 4
  br label %352

352:                                              ; preds = %347, %342
  br label %353

353:                                              ; preds = %352, %331
  %354 = load i32, i32* @MT_TXD3_SEQ, align 4
  %355 = load i32, i32* %30, align 4
  %356 = ashr i32 %355, 4
  %357 = call i32 @FIELD_PREP(i32 %354, i32 %356)
  %358 = load i32, i32* %32, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %32, align 4
  %360 = load i32, i32* %32, align 4
  %361 = call i32 @cpu_to_le32(i32 %360)
  %362 = load i32*, i32** %10, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 3
  store i32 %361, i32* %363, align 4
  %364 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %16, align 8
  %365 = icmp ne %struct.ieee80211_key_conf* %364, null
  br i1 %365, label %366, label %391

366:                                              ; preds = %353
  %367 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %16, align 8
  %368 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %367, i32 0, i32 0
  %369 = call i32 @atomic64_inc_return(i32* %368)
  store i32 %369, i32* %37, align 4
  %370 = load i32, i32* @MT_TXD3_PN_VALID, align 4
  %371 = call i32 @cpu_to_le32(i32 %370)
  %372 = load i32*, i32** %10, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 3
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 4
  %376 = load i32, i32* %37, align 4
  %377 = call i32 @GENMASK(i32 31, i32 0)
  %378 = and i32 %376, %377
  %379 = call i32 @cpu_to_le32(i32 %378)
  %380 = load i32*, i32** %10, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 4
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* @MT_TXD5_PN_HIGH, align 4
  %383 = load i32, i32* %37, align 4
  %384 = ashr i32 %383, 32
  %385 = call i32 @FIELD_PREP(i32 %382, i32 %384)
  %386 = call i32 @cpu_to_le32(i32 %385)
  %387 = load i32*, i32** %10, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 5
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %366, %353
  %392 = load i32*, i32** %10, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 7
  store i32 0, i32* %393, align 4
  ret i32 0
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @mt7603_mac_tx_rate_val(%struct.mt7603_dev*, %struct.ieee80211_tx_rate*, i32, i32*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
