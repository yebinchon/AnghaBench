; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_fill_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_fill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band }
%struct.sk_buff = type { i8**, i32, i64 }
%struct.mt76_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64, i32, i8**, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@MT_RXD1_NORMAL_U2M = common dso_local global i32 0, align 4
@MT_RXD1_NORMAL_CH_FREQ = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_WLAN_IDX = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_FCS_ERR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_TKIP_MIC_ERR = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_SEC_MODE = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_CLM = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_CM = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MIC_STRIPPED = common dso_local global i32 0, align 4
@MT_RXD1_NORMAL_HDR_OFFSET = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_MAX_LEN_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_RXD0_NORMAL_GROUP_4 = common dso_local global i32 0, align 4
@MT_RXD0_NORMAL_GROUP_1 = common dso_local global i32 0, align 4
@MT_RXD2_NORMAL_FRAG = common dso_local global i32 0, align 4
@MT_RXD0_NORMAL_GROUP_2 = common dso_local global i32 0, align 4
@MT_RXD0_NORMAL_GROUP_3 = common dso_local global i32 0, align 4
@MT_RXV1_TX_RATE = common dso_local global i32 0, align 4
@MT_RXV1_TX_MODE = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@MT_RXV1_HT_SHORT_GI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@MT_RXV1_HT_AD_CODE = common dso_local global i32 0, align 4
@RX_ENC_FLAG_LDPC = common dso_local global i32 0, align 4
@RX_ENC_FLAG_STBC_MASK = common dso_local global i32 0, align 4
@MT_RXV1_HT_STBC = common dso_local global i32 0, align 4
@MT_RXV4_IB_RSSI0 = common dso_local global i32 0, align 4
@MT_RXV4_IB_RSSI1 = common dso_local global i32 0, align 4
@MT_RXV1_FRAME_MODE = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@MT_RXD1_NORMAL_KEY_ID = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_mac_fill_rx(%struct.mt7603_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7603_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mt76_rx_status*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.mt76_rx_status*
  store %struct.mt76_rx_status* %26, %struct.mt76_rx_status** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = bitcast i8** %29 to i32*
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @MT_RXD1_NORMAL_U2M, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %46 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %47 = call i32 @memset(%struct.mt76_rx_status* %46, i32 0, i32 80)
  %48 = load i32, i32* @MT_RXD1_NORMAL_CH_FREQ, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @FIELD_GET(i32 %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %56 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  br label %64

59:                                               ; preds = %2
  %60 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %61 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi %struct.ieee80211_supported_band* [ %58, %54 ], [ %63, %59 ]
  store %struct.ieee80211_supported_band* %65, %struct.ieee80211_supported_band** %7, align 8
  %66 = load i32, i32* %17, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* @MT_RXD2_NORMAL_WLAN_IDX, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @FIELD_GET(i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @mt7603_rx_get_wcid(%struct.mt7603_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %76 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %81 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %64
  %88 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %97 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %96, i32 0, i32 13
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %87, %64
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @MT_RXD2_NORMAL_FCS_ERR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %105 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %106 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @MT_RXD2_NORMAL_TKIP_MIC_ERR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %116 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %117 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %109
  %121 = load i32, i32* @MT_RXD2_NORMAL_SEC_MODE, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @FIELD_GET(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @MT_RXD2_NORMAL_CLM, align 4
  %128 = load i32, i32* @MT_RXD2_NORMAL_CM, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %134 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %135 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %139 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %140 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %144 = load i32, i32* @RX_FLAG_MIC_STRIPPED, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %147 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %132, %125, %120
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @MT_RXD1_NORMAL_HDR_OFFSET, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @MT_RXD2_NORMAL_MAX_LEN_ERROR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %545

161:                                              ; preds = %150
  %162 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = icmp ne %struct.TYPE_7__* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %545

169:                                              ; preds = %161
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  store i32* %171, i32** %9, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @MT_RXD0_NORMAL_GROUP_4, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %169
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %9, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = bitcast i32* %179 to i8**
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i8**, i8*** %182, align 8
  %184 = ptrtoint i8** %180 to i64
  %185 = ptrtoint i8** %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = icmp sge i64 %187, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %176
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %545

196:                                              ; preds = %176
  br label %197

197:                                              ; preds = %196, %169
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @MT_RXD0_NORMAL_GROUP_1, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %278

202:                                              ; preds = %197
  %203 = load i32*, i32** %9, align 8
  %204 = bitcast i32* %203 to i8**
  store i8** %204, i8*** %18, align 8
  %205 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %206 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %257

211:                                              ; preds = %202
  %212 = load i8**, i8*** %18, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 5
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %216 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %215, i32 0, i32 12
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  store i8* %214, i8** %218, align 8
  %219 = load i8**, i8*** %18, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 4
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %223 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %222, i32 0, i32 12
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  store i8* %221, i8** %225, align 8
  %226 = load i8**, i8*** %18, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 3
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %230 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %229, i32 0, i32 12
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 2
  store i8* %228, i8** %232, align 8
  %233 = load i8**, i8*** %18, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 2
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %237 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %236, i32 0, i32 12
  %238 = load i8**, i8*** %237, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 3
  store i8* %235, i8** %239, align 8
  %240 = load i8**, i8*** %18, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 1
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %244 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %243, i32 0, i32 12
  %245 = load i8**, i8*** %244, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 4
  store i8* %242, i8** %246, align 8
  %247 = load i8**, i8*** %18, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %251 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %250, i32 0, i32 12
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 5
  store i8* %249, i8** %253, align 8
  %254 = load i32, i32* @MT_RXD2_NORMAL_FRAG, align 4
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @FIELD_GET(i32 %254, i32 %255)
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %211, %202
  %258 = load i32*, i32** %9, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 4
  store i32* %259, i32** %9, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = bitcast i32* %260 to i8**
  %262 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %263 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %262, i32 0, i32 0
  %264 = load i8**, i8*** %263, align 8
  %265 = ptrtoint i8** %261 to i64
  %266 = ptrtoint i8** %264 to i64
  %267 = sub i64 %265, %266
  %268 = sdiv exact i64 %267, 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %270 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = icmp sge i64 %268, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %257
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %3, align 4
  br label %545

277:                                              ; preds = %257
  br label %278

278:                                              ; preds = %277, %197
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* @MT_RXD0_NORMAL_GROUP_2, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %304

283:                                              ; preds = %278
  %284 = load i32*, i32** %9, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  store i32* %285, i32** %9, align 8
  %286 = load i32*, i32** %9, align 8
  %287 = bitcast i32* %286 to i8**
  %288 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 0
  %290 = load i8**, i8*** %289, align 8
  %291 = ptrtoint i8** %287 to i64
  %292 = ptrtoint i8** %290 to i64
  %293 = sub i64 %291, %292
  %294 = sdiv exact i64 %293, 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = icmp sge i64 %294, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %283
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %545

303:                                              ; preds = %283
  br label %304

304:                                              ; preds = %303, %278
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @MT_RXD0_NORMAL_GROUP_3, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %469

309:                                              ; preds = %304
  %310 = load i32*, i32** %9, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @le32_to_cpu(i32 %312)
  store i32 %313, i32* %19, align 4
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 3
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @le32_to_cpu(i32 %316)
  store i32 %317, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %318 = load i32, i32* @MT_RXV1_TX_RATE, align 4
  %319 = load i32, i32* %19, align 4
  %320 = call i32 @FIELD_GET(i32 %318, i32 %319)
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* @MT_RXV1_TX_MODE, align 4
  %322 = load i32, i32* %19, align 4
  %323 = call i32 @FIELD_GET(i32 %321, i32 %322)
  switch i32 %323, label %342 [
    i32 131, label %324
    i32 128, label %325
    i32 129, label %332
    i32 130, label %332
  ]

324:                                              ; preds = %309
  store i32 1, i32* %21, align 4
  br label %325

325:                                              ; preds = %309, %324
  %326 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %327 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %326, i32 0, i32 1
  %328 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* %21, align 4
  %331 = call i32 @mt76_get_rate(%struct.TYPE_8__* %327, %struct.ieee80211_supported_band* %328, i32 %329, i32 %330)
  store i32 %331, i32* %17, align 4
  br label %345

332:                                              ; preds = %309, %309
  %333 = load i32, i32* @RX_ENC_HT, align 4
  %334 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %335 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %334, i32 0, i32 11
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* %17, align 4
  %337 = icmp sgt i32 %336, 15
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %545

341:                                              ; preds = %332
  br label %345

342:                                              ; preds = %309
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %3, align 4
  br label %545

345:                                              ; preds = %341, %325
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* @MT_RXV1_HT_SHORT_GI, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %352 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %353 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %350, %345
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* @MT_RXV1_HT_AD_CODE, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %356
  %362 = load i32, i32* @RX_ENC_FLAG_LDPC, align 4
  %363 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %364 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %361, %356
  %368 = load i32, i32* @RX_ENC_FLAG_STBC_MASK, align 4
  %369 = load i32, i32* @MT_RXV1_HT_STBC, align 4
  %370 = load i32, i32* %19, align 4
  %371 = call i32 @FIELD_GET(i32 %369, i32 %370)
  %372 = mul nsw i32 %368, %371
  %373 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %374 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load i32, i32* %17, align 4
  %378 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %379 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %378, i32 0, i32 2
  store i32 %377, i32* %379, align 8
  %380 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %381 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %385 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %384, i32 0, i32 3
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* @MT_RXV4_IB_RSSI0, align 4
  %387 = load i32, i32* %20, align 4
  %388 = call i32 @FIELD_GET(i32 %386, i32 %387)
  %389 = sext i32 %388 to i64
  %390 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %391 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %390, i32 0, i32 0
  %392 = load i64*, i64** %391, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 0
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %389, %394
  %396 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %397 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %396, i32 0, i32 9
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  store i64 %395, i64* %399, align 8
  %400 = load i32, i32* @MT_RXV4_IB_RSSI1, align 4
  %401 = load i32, i32* %20, align 4
  %402 = call i32 @FIELD_GET(i32 %400, i32 %401)
  %403 = sext i32 %402 to i64
  %404 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %405 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %404, i32 0, i32 0
  %406 = load i64*, i64** %405, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 1
  %408 = load i64, i64* %407, align 8
  %409 = add nsw i64 %403, %408
  %410 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %411 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %410, i32 0, i32 9
  %412 = load i64*, i64** %411, align 8
  %413 = getelementptr inbounds i64, i64* %412, i64 1
  store i64 %409, i64* %413, align 8
  %414 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %415 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %414, i32 0, i32 9
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 0
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %420 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %419, i32 0, i32 10
  store i64 %418, i64* %420, align 8
  %421 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %422 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @BIT(i32 1)
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %439

427:                                              ; preds = %367
  %428 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %429 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %428, i32 0, i32 10
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %432 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %431, i32 0, i32 9
  %433 = load i64*, i64** %432, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 1
  %435 = load i64, i64* %434, align 8
  %436 = call i64 @max(i64 %430, i64 %435)
  %437 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %438 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %437, i32 0, i32 10
  store i64 %436, i64* %438, align 8
  br label %439

439:                                              ; preds = %427, %367
  %440 = load i32, i32* @MT_RXV1_FRAME_MODE, align 4
  %441 = load i32, i32* %19, align 4
  %442 = call i32 @FIELD_GET(i32 %440, i32 %441)
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %444, label %448

444:                                              ; preds = %439
  %445 = load i32, i32* @RATE_INFO_BW_40, align 4
  %446 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %447 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %446, i32 0, i32 8
  store i32 %445, i32* %447, align 8
  br label %448

448:                                              ; preds = %444, %439
  %449 = load i32*, i32** %9, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 6
  store i32* %450, i32** %9, align 8
  %451 = load i32*, i32** %9, align 8
  %452 = bitcast i32* %451 to i8**
  %453 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %454 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %453, i32 0, i32 0
  %455 = load i8**, i8*** %454, align 8
  %456 = ptrtoint i8** %452 to i64
  %457 = ptrtoint i8** %455 to i64
  %458 = sub i64 %456, %457
  %459 = sdiv exact i64 %458, 8
  %460 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %461 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = sext i32 %462 to i64
  %464 = icmp sge i64 %459, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %448
  %466 = load i32, i32* @EINVAL, align 4
  %467 = sub nsw i32 0, %466
  store i32 %467, i32* %3, align 4
  br label %545

468:                                              ; preds = %448
  br label %472

469:                                              ; preds = %304
  %470 = load i32, i32* @EINVAL, align 4
  %471 = sub nsw i32 0, %470
  store i32 %471, i32* %3, align 4
  br label %545

472:                                              ; preds = %468
  %473 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %474 = load i32*, i32** %9, align 8
  %475 = bitcast i32* %474 to i8**
  %476 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %477 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %476, i32 0, i32 0
  %478 = load i8**, i8*** %477, align 8
  %479 = ptrtoint i8** %475 to i64
  %480 = ptrtoint i8** %478 to i64
  %481 = sub i64 %479, %480
  %482 = sdiv exact i64 %481, 8
  %483 = load i32, i32* %15, align 4
  %484 = mul nsw i32 2, %483
  %485 = sext i32 %484 to i64
  %486 = add nsw i64 %482, %485
  %487 = trunc i64 %486 to i32
  %488 = call i32 @skb_pull(%struct.sk_buff* %473, i32 %487)
  %489 = load i32, i32* %14, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %500

491:                                              ; preds = %472
  %492 = load i32, i32* @MT_RXD1_NORMAL_KEY_ID, align 4
  %493 = load i32, i32* %11, align 4
  %494 = call i32 @FIELD_GET(i32 %492, i32 %493)
  %495 = sext i32 %494 to i64
  %496 = inttoptr i64 %495 to i8*
  store i8* %496, i8** %22, align 8
  %497 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %498 = load i8*, i8** %22, align 8
  %499 = call i32 @mt76_insert_ccmp_hdr(%struct.sk_buff* %497, i8* %498)
  br label %500

500:                                              ; preds = %491, %472
  %501 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %502 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %501, i32 0, i32 0
  %503 = load i8**, i8*** %502, align 8
  %504 = bitcast i8** %503 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %504, %struct.ieee80211_hdr** %8, align 8
  %505 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %506 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %505, i32 0, i32 7
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %515

509:                                              ; preds = %500
  %510 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %511 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @ieee80211_is_data_qos(i32 %512)
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %516, label %515

515:                                              ; preds = %509, %500
  store i32 0, i32* %3, align 4
  br label %545

516:                                              ; preds = %509
  %517 = load i32, i32* %13, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %526

519:                                              ; preds = %516
  %520 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %521 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @ieee80211_is_qos_nullfunc(i32 %522)
  %524 = icmp ne i32 %523, 0
  %525 = xor i1 %524, true
  br label %526

526:                                              ; preds = %519, %516
  %527 = phi i1 [ false, %516 ], [ %525, %519 ]
  %528 = zext i1 %527 to i32
  %529 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %530 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %529, i32 0, i32 4
  store i32 %528, i32* %530, align 8
  %531 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %532 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %531)
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %535 = and i32 %533, %534
  %536 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %537 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %536, i32 0, i32 5
  store i32 %535, i32* %537, align 4
  %538 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %539 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = call i32 @le16_to_cpu(i32 %540)
  %542 = call i32 @IEEE80211_SEQ_TO_SN(i32 %541)
  %543 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %6, align 8
  %544 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %543, i32 0, i32 6
  store i32 %542, i32* %544, align 8
  store i32 0, i32* %3, align 4
  br label %545

545:                                              ; preds = %526, %515, %469, %465, %342, %338, %300, %274, %193, %166, %158
  %546 = load i32, i32* %3, align 4
  ret i32 %546
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.mt76_rx_status*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mt7603_rx_get_wcid(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_get_rate(%struct.TYPE_8__*, %struct.ieee80211_supported_band*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @mt76_insert_ccmp_hdr(%struct.sk_buff*, i8*) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
