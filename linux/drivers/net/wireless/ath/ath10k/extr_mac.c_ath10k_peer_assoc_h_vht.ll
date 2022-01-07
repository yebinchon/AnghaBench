; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_vht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_vht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64, %struct.ieee80211_sta_vht_cap, i32, i32 }
%struct.ieee80211_sta_vht_cap = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32, i32, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.ath10k_vif = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64* }
%struct.cfg80211_chan_def = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i64 0, align 8
@IEEE80211_STA_RX_BW_160 = common dso_local global i64 0, align 8
@NL80211_VHT_NSS_MAX = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mac vht peer %pM max_mpdu %d flags 0x%x\0A\00", align 1
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_peer_assoc_h_vht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_peer_assoc_h_vht(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.wmi_peer_assoc_complete_arg* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %9 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %10 = alloca %struct.ath10k_vif*, align 8
  %11 = alloca %struct.cfg80211_chan_def, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.wmi_peer_assoc_complete_arg* %3, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 1
  store %struct.ieee80211_sta_vht_cap* %19, %struct.ieee80211_sta_vht_cap** %9, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %24, %struct.ath10k_vif** %10, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = call i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %25, %struct.cfg80211_chan_def* %11)
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %251

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %251

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %42 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  store i64* %49, i64** %13, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = call i64 @ath10k_peer_assoc_h_vht_masked(i64* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %251

54:                                               ; preds = %36
  %55 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %62 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %54
  %73 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %80 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %72, %54
  %84 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %88 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT, align 4
  %95 = lshr i32 %93, %94
  store i32 %95, i32* %14, align 4
  %96 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %97 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_FACTOR, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add i32 %99, %100
  %102 = shl i32 1, %101
  %103 = sub i32 %102, 1
  %104 = call i32 @max(i32 %98, i32 %103)
  %105 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %106 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IEEE80211_STA_RX_BW_80, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %83
  %113 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %114 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %120 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %112, %83
  %124 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IEEE80211_STA_RX_BW_160, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %131 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %137 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %129, %123
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %169, %140
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* @NL80211_VHT_NSS_MAX, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %141
  %146 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @__le16_to_cpu(i32 %149)
  %151 = load i32, i32* %17, align 4
  %152 = mul nsw i32 2, %151
  %153 = ashr i32 %150, %152
  %154 = and i32 %153, 3
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %145
  %159 = load i64*, i64** %13, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %165, %158, %145
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %141

172:                                              ; preds = %141
  %173 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @min(i32 %175, i32 %176)
  %178 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %179 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %181 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @__le16_to_cpu(i32 %183)
  %185 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %186 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  %188 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %189 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @__le16_to_cpu(i32 %191)
  %193 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %194 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 4
  %196 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %197 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @__le16_to_cpu(i32 %199)
  %201 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %202 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 4
  %204 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %205 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @__le16_to_cpu(i32 %207)
  %209 = load i64*, i64** %13, align 8
  %210 = call i32 @ath10k_peer_assoc_h_vht_limit(i32 %208, i64* %209)
  %211 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %212 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  store i32 %210, i32* %213, align 4
  %214 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %215 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %216 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %217 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %220 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %223 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ath10k_dbg(%struct.ath10k* %214, i32 %215, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %218, i32 %221, i32 %224)
  %226 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %227 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %251

231:                                              ; preds = %172
  %232 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %233 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %231
  %240 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %241 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  switch i32 %243, label %250 [
    i32 1560, label %244
    i32 780, label %247
  ]

244:                                              ; preds = %239
  %245 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %246 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %245, i32 0, i32 1
  store i32 2, i32* %246, align 4
  br label %250

247:                                              ; preds = %239
  %248 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %249 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %248, i32 0, i32 1
  store i32 1, i32* %249, align 4
  br label %250

250:                                              ; preds = %239, %247, %244
  br label %251

251:                                              ; preds = %29, %35, %53, %250, %231, %172
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @ath10k_peer_assoc_h_vht_masked(i64*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ath10k_peer_assoc_h_vht_limit(i32, i64*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
