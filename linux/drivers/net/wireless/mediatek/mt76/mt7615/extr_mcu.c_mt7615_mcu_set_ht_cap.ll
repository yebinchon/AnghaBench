; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_set_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_set_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.mt7615_sta = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mt7615_vif = type { i32, i32 }
%struct.wtbl_req_hdr = type { i8*, i32, i32 }
%struct.sta_req_hdr = type { i32, i32, i8*, i32, i32 }
%struct.wtbl_raw = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.sta_rec_ht = type { i8*, i8*, i8* }
%struct.wtbl_ht = type { i32, i32, i32, i32, i8*, i8* }
%struct.wtbl_vht = type { i32, i32, i8*, i8* }
%struct.wtbl_smps = type { i32, i8*, i8* }
%struct.sta_rec_vht = type { i32, i32, i8*, i8*, i8* }

@MT7615_WTBL_UPDATE_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WTBL_SET = common dso_local global i32 0, align 4
@WTBL_HT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@MT_WTBL_W5_SHORT_GI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@MT_WTBL_W5_SHORT_GI_40 = common dso_local global i32 0, align 4
@WTBL_VHT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@MT_WTBL_W5_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@MT_WTBL_W5_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8
@WTBL_SMPS = common dso_local global i32 0, align 4
@WTBL_RAW_DATA = common dso_local global i32 0, align 4
@MCU_EXT_CMD_WTBL_UPDATE = common dso_local global i32 0, align 4
@STA_REC_HT = common dso_local global i32 0, align 4
@STA_REC_VHT = common dso_local global i32 0, align 4
@MCU_EXT_CMD_STA_REC_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_mcu_set_ht_cap(%struct.mt7615_dev* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7615_dev*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.mt7615_sta*, align 8
  %9 = alloca %struct.mt7615_vif*, align 8
  %10 = alloca %struct.wtbl_req_hdr*, align 8
  %11 = alloca %struct.sta_req_hdr*, align 8
  %12 = alloca %struct.wtbl_raw*, align 8
  %13 = alloca %struct.sta_rec_ht*, align 8
  %14 = alloca %struct.wtbl_ht*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.wtbl_vht*, align 8
  %22 = alloca %struct.wtbl_smps*, align 8
  %23 = alloca %struct.sta_rec_vht*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.mt7615_sta*
  store %struct.mt7615_sta* %27, %struct.mt7615_sta** %8, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %31, %struct.mt7615_vif** %9, align 8
  store i32 2, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* @MT7615_WTBL_UPDATE_MAX_SIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32* @kzalloc(i32 %32, i32 %33)
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %361

40:                                               ; preds = %3
  %41 = load i32*, i32** %20, align 8
  %42 = bitcast i32* %41 to %struct.wtbl_req_hdr*
  store %struct.wtbl_req_hdr* %42, %struct.wtbl_req_hdr** %10, align 8
  %43 = load %struct.mt7615_sta*, %struct.mt7615_sta** %8, align 8
  %44 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wtbl_req_hdr*, %struct.wtbl_req_hdr** %10, align 8
  %48 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @WTBL_SET, align 4
  %50 = load %struct.wtbl_req_hdr*, %struct.wtbl_req_hdr** %10, align 8
  %51 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  store i32 16, i32* %15, align 4
  %52 = load i32*, i32** %20, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to %struct.wtbl_ht*
  store %struct.wtbl_ht* %56, %struct.wtbl_ht** %14, align 8
  %57 = load i32, i32* @WTBL_HT, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.wtbl_ht*, %struct.wtbl_ht** %14, align 8
  %60 = getelementptr inbounds %struct.wtbl_ht, %struct.wtbl_ht* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = call i8* @cpu_to_le16(i32 32)
  %62 = load %struct.wtbl_ht*, %struct.wtbl_ht** %14, align 8
  %63 = getelementptr inbounds %struct.wtbl_ht, %struct.wtbl_ht* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.wtbl_ht*, %struct.wtbl_ht** %14, align 8
  %65 = getelementptr inbounds %struct.wtbl_ht, %struct.wtbl_ht* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %71 = and i32 %69, %70
  %72 = load %struct.wtbl_ht*, %struct.wtbl_ht** %14, align 8
  %73 = getelementptr inbounds %struct.wtbl_ht, %struct.wtbl_ht* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.wtbl_ht*, %struct.wtbl_ht** %14, align 8
  %79 = getelementptr inbounds %struct.wtbl_ht, %struct.wtbl_ht* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wtbl_ht*, %struct.wtbl_ht** %14, align 8
  %85 = getelementptr inbounds %struct.wtbl_ht, %struct.wtbl_ht* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 32
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %15, align 4
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %40
  %98 = load i32, i32* @MT_WTBL_W5_SHORT_GI_20, align 4
  %99 = load i32, i32* %19, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %97, %40
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32, i32* @MT_WTBL_W5_SHORT_GI_40, align 4
  %111 = load i32, i32* %19, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %109, %101
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %172

119:                                              ; preds = %113
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = bitcast i32* %123 to %struct.wtbl_vht*
  store %struct.wtbl_vht* %124, %struct.wtbl_vht** %21, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 24
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* @WTBL_VHT, align 4
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = load %struct.wtbl_vht*, %struct.wtbl_vht** %21, align 8
  %132 = getelementptr inbounds %struct.wtbl_vht, %struct.wtbl_vht* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = call i8* @cpu_to_le16(i32 24)
  %134 = load %struct.wtbl_vht*, %struct.wtbl_vht** %21, align 8
  %135 = getelementptr inbounds %struct.wtbl_vht, %struct.wtbl_vht* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %141 = and i32 %139, %140
  %142 = load %struct.wtbl_vht*, %struct.wtbl_vht** %21, align 8
  %143 = getelementptr inbounds %struct.wtbl_vht, %struct.wtbl_vht* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.wtbl_vht*, %struct.wtbl_vht** %21, align 8
  %145 = getelementptr inbounds %struct.wtbl_vht, %struct.wtbl_vht* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  %148 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %119
  %156 = load i32, i32* @MT_WTBL_W5_SHORT_GI_80, align 4
  %157 = load i32, i32* %19, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %155, %119
  %160 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @MT_WTBL_W5_SHORT_GI_160, align 4
  %169 = load i32, i32* %19, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %167, %159
  br label %172

172:                                              ; preds = %171, %113
  %173 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %172
  %179 = load i32*, i32** %20, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = bitcast i32* %182 to %struct.wtbl_smps*
  store %struct.wtbl_smps* %183, %struct.wtbl_smps** %22, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 24
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* @WTBL_SMPS, align 4
  %189 = call i8* @cpu_to_le16(i32 %188)
  %190 = load %struct.wtbl_smps*, %struct.wtbl_smps** %22, align 8
  %191 = getelementptr inbounds %struct.wtbl_smps, %struct.wtbl_smps* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = call i8* @cpu_to_le16(i32 24)
  %193 = load %struct.wtbl_smps*, %struct.wtbl_smps** %22, align 8
  %194 = getelementptr inbounds %struct.wtbl_smps, %struct.wtbl_smps* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.wtbl_smps*, %struct.wtbl_smps** %22, align 8
  %196 = getelementptr inbounds %struct.wtbl_smps, %struct.wtbl_smps* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %178, %172
  %200 = load i32, i32* @MT_WTBL_W5_SHORT_GI_20, align 4
  %201 = load i32, i32* @MT_WTBL_W5_SHORT_GI_40, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @MT_WTBL_W5_SHORT_GI_80, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @MT_WTBL_W5_SHORT_GI_160, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %18, align 4
  %207 = load i32*, i32** %20, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = bitcast i32* %210 to %struct.wtbl_raw*
  store %struct.wtbl_raw* %211, %struct.wtbl_raw** %12, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = add i64 %213, 40
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* @WTBL_RAW_DATA, align 4
  %217 = call i8* @cpu_to_le16(i32 %216)
  %218 = load %struct.wtbl_raw*, %struct.wtbl_raw** %12, align 8
  %219 = getelementptr inbounds %struct.wtbl_raw, %struct.wtbl_raw* %218, i32 0, i32 5
  store i8* %217, i8** %219, align 8
  %220 = call i8* @cpu_to_le16(i32 40)
  %221 = load %struct.wtbl_raw*, %struct.wtbl_raw** %12, align 8
  %222 = getelementptr inbounds %struct.wtbl_raw, %struct.wtbl_raw* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  %223 = load %struct.wtbl_raw*, %struct.wtbl_raw** %12, align 8
  %224 = getelementptr inbounds %struct.wtbl_raw, %struct.wtbl_raw* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  %225 = load %struct.wtbl_raw*, %struct.wtbl_raw** %12, align 8
  %226 = getelementptr inbounds %struct.wtbl_raw, %struct.wtbl_raw* %225, i32 0, i32 1
  store i32 5, i32* %226, align 4
  %227 = load i32, i32* %18, align 4
  %228 = xor i32 %227, -1
  %229 = call i8* @cpu_to_le32(i32 %228)
  %230 = load %struct.wtbl_raw*, %struct.wtbl_raw** %12, align 8
  %231 = getelementptr inbounds %struct.wtbl_raw, %struct.wtbl_raw* %230, i32 0, i32 3
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* %19, align 4
  %233 = call i8* @cpu_to_le32(i32 %232)
  %234 = load %struct.wtbl_raw*, %struct.wtbl_raw** %12, align 8
  %235 = getelementptr inbounds %struct.wtbl_raw, %struct.wtbl_raw* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* %17, align 4
  %237 = call i8* @cpu_to_le16(i32 %236)
  %238 = load %struct.wtbl_req_hdr*, %struct.wtbl_req_hdr** %10, align 8
  %239 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %241 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %240, i32 0, i32 0
  %242 = load i32, i32* @MCU_EXT_CMD_WTBL_UPDATE, align 4
  %243 = load i32*, i32** %20, align 8
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @__mt76_mcu_send_msg(i32* %241, i32 %242, i32* %243, i32 %244, i32 1)
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %199
  br label %357

249:                                              ; preds = %199
  %250 = load i32*, i32** %20, align 8
  %251 = load i32, i32* @MT7615_WTBL_UPDATE_MAX_SIZE, align 4
  %252 = call i32 @memset(i32* %250, i32 0, i32 %251)
  %253 = load i32*, i32** %20, align 8
  %254 = bitcast i32* %253 to %struct.sta_req_hdr*
  store %struct.sta_req_hdr* %254, %struct.sta_req_hdr** %11, align 8
  %255 = load %struct.mt7615_vif*, %struct.mt7615_vif** %9, align 8
  %256 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.sta_req_hdr*, %struct.sta_req_hdr** %11, align 8
  %259 = getelementptr inbounds %struct.sta_req_hdr, %struct.sta_req_hdr* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 4
  %260 = load %struct.mt7615_sta*, %struct.mt7615_sta** %8, align 8
  %261 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.sta_req_hdr*, %struct.sta_req_hdr** %11, align 8
  %265 = getelementptr inbounds %struct.sta_req_hdr, %struct.sta_req_hdr* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 8
  %266 = load %struct.sta_req_hdr*, %struct.sta_req_hdr** %11, align 8
  %267 = getelementptr inbounds %struct.sta_req_hdr, %struct.sta_req_hdr* %266, i32 0, i32 0
  store i32 1, i32* %267, align 8
  %268 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %269 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i32 2, i32 1
  store i32 %274, i32* %17, align 4
  %275 = load i32, i32* %17, align 4
  %276 = call i8* @cpu_to_le16(i32 %275)
  %277 = load %struct.sta_req_hdr*, %struct.sta_req_hdr** %11, align 8
  %278 = getelementptr inbounds %struct.sta_req_hdr, %struct.sta_req_hdr* %277, i32 0, i32 2
  store i8* %276, i8** %278, align 8
  %279 = load %struct.mt7615_vif*, %struct.mt7615_vif** %9, align 8
  %280 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.sta_req_hdr*, %struct.sta_req_hdr** %11, align 8
  %283 = getelementptr inbounds %struct.sta_req_hdr, %struct.sta_req_hdr* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  store i32 24, i32* %15, align 4
  %284 = load i32*, i32** %20, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = bitcast i32* %287 to %struct.sta_rec_ht*
  store %struct.sta_rec_ht* %288, %struct.sta_rec_ht** %13, align 8
  %289 = load i32, i32* @STA_REC_HT, align 4
  %290 = call i8* @cpu_to_le16(i32 %289)
  %291 = load %struct.sta_rec_ht*, %struct.sta_rec_ht** %13, align 8
  %292 = getelementptr inbounds %struct.sta_rec_ht, %struct.sta_rec_ht* %291, i32 0, i32 2
  store i8* %290, i8** %292, align 8
  %293 = call i8* @cpu_to_le16(i32 24)
  %294 = load %struct.sta_rec_ht*, %struct.sta_rec_ht** %13, align 8
  %295 = getelementptr inbounds %struct.sta_rec_ht, %struct.sta_rec_ht* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  %296 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %297 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i8* @cpu_to_le16(i32 %299)
  %301 = load %struct.sta_rec_ht*, %struct.sta_rec_ht** %13, align 8
  %302 = getelementptr inbounds %struct.sta_rec_ht, %struct.sta_rec_ht* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = add i64 %304, 24
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %15, align 4
  %307 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %308 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %350

312:                                              ; preds = %249
  %313 = load i32*, i32** %20, align 8
  %314 = load i32, i32* %15, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = bitcast i32* %316 to %struct.sta_rec_vht*
  store %struct.sta_rec_vht* %317, %struct.sta_rec_vht** %23, align 8
  %318 = load i32, i32* %15, align 4
  %319 = sext i32 %318 to i64
  %320 = add i64 %319, 32
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %15, align 4
  %322 = load i32, i32* @STA_REC_VHT, align 4
  %323 = call i8* @cpu_to_le16(i32 %322)
  %324 = load %struct.sta_rec_vht*, %struct.sta_rec_vht** %23, align 8
  %325 = getelementptr inbounds %struct.sta_rec_vht, %struct.sta_rec_vht* %324, i32 0, i32 4
  store i8* %323, i8** %325, align 8
  %326 = call i8* @cpu_to_le16(i32 32)
  %327 = load %struct.sta_rec_vht*, %struct.sta_rec_vht** %23, align 8
  %328 = getelementptr inbounds %struct.sta_rec_vht, %struct.sta_rec_vht* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  %329 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %330 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i8* @cpu_to_le32(i32 %332)
  %334 = load %struct.sta_rec_vht*, %struct.sta_rec_vht** %23, align 8
  %335 = getelementptr inbounds %struct.sta_rec_vht, %struct.sta_rec_vht* %334, i32 0, i32 2
  store i8* %333, i8** %335, align 8
  %336 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %337 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.sta_rec_vht*, %struct.sta_rec_vht** %23, align 8
  %342 = getelementptr inbounds %struct.sta_rec_vht, %struct.sta_rec_vht* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  %343 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %344 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.sta_rec_vht*, %struct.sta_rec_vht** %23, align 8
  %349 = getelementptr inbounds %struct.sta_rec_vht, %struct.sta_rec_vht* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 8
  br label %350

350:                                              ; preds = %312, %249
  %351 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %352 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %351, i32 0, i32 0
  %353 = load i32, i32* @MCU_EXT_CMD_STA_REC_UPDATE, align 4
  %354 = load i32*, i32** %20, align 8
  %355 = load i32, i32* %15, align 4
  %356 = call i32 @__mt76_mcu_send_msg(i32* %352, i32 %353, i32* %354, i32 %355, i32 1)
  store i32 %356, i32* %16, align 4
  br label %357

357:                                              ; preds = %350, %248
  %358 = load i32*, i32** %20, align 8
  %359 = call i32 @kfree(i32* %358)
  %360 = load i32, i32* %16, align 4
  store i32 %360, i32* %4, align 4
  br label %361

361:                                              ; preds = %357, %37
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @__mt76_mcu_send_msg(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
