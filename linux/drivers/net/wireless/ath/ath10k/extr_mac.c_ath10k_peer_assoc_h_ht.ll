; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_ht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64, i32, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.wmi_peer_assoc_complete_arg = type { i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.ath10k_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64, i32* }
%struct.cfg80211_chan_def = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@IEEE80211_HT_MAX_AMPDU_FACTOR = common dso_local global i32 0, align 4
@WMI_RC_HT_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@WMI_RC_CW40_FLAG = common dso_local global i32 0, align 4
@NL80211_TXRATE_FORCE_LGI = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@WMI_RC_SGI_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@WMI_RC_TX_STBC_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@WMI_RC_RX_STBC_FLAG_S = common dso_local global i32 0, align 4
@WMI_RC_TS_FLAG = common dso_local global i32 0, align 4
@WMI_RC_DS_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mac ht peer %pM mcs cnt %d nss %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_peer_assoc_h_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_peer_assoc_h_ht(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.wmi_peer_assoc_complete_arg* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %9 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %10 = alloca %struct.ath10k_vif*, align 8
  %11 = alloca %struct.cfg80211_chan_def, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.wmi_peer_assoc_complete_arg* %3, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 2
  store %struct.ieee80211_sta_ht_cap* %20, %struct.ieee80211_sta_ht_cap** %9, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %25, %struct.ath10k_vif** %10, align 8
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 1
  %28 = call i32 @lockdep_assert_held(i32* %27)
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = call i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %29, %struct.cfg80211_chan_def* %11)
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %382

34:                                               ; preds = %4
  %35 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %382

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %46 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %13, align 8
  %54 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %55 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %14, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @ath10k_peer_assoc_h_ht_masked(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %40
  %67 = load i32*, i32** %14, align 8
  %68 = call i64 @ath10k_peer_assoc_h_vht_masked(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %382

71:                                               ; preds = %66, %40
  %72 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %79 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_FACTOR, align 4
  %83 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %90 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ath10k_parse_mpdudensity(i32 %93)
  %95 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %96 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %101 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @WMI_RC_HT_FLAG, align 4
  %103 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %104 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %71
  %114 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %115 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %121 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %113, %71
  %125 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %132 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %138 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @WMI_RC_CW40_FLAG, align 4
  %142 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %143 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %130, %124
  %147 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %148 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NL80211_TXRATE_FORCE_LGI, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %146
  %159 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %160 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i32, i32* @WMI_RC_SGI_FLAG, align 4
  %167 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %168 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %158
  %172 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %173 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load i32, i32* @WMI_RC_SGI_FLAG, align 4
  %180 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %181 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %178, %171
  br label %185

185:                                              ; preds = %184, %146
  %186 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %187 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %185
  %193 = load i32, i32* @WMI_RC_TX_STBC_FLAG, align 4
  %194 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %195 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %199 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %205 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %192, %185
  %209 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %242

215:                                              ; preds = %208
  %216 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %217 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %220 = and i32 %218, %219
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %223 = ashr i32 %221, %222
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* @WMI_RC_RX_STBC_FLAG_S, align 4
  %226 = shl i32 %224, %225
  store i32 %226, i32* %18, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %229 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %233 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %239 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %215, %208
  %243 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %244 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %242
  %251 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %252 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %250
  %259 = load i32, i32* @WMI_RC_TS_FLAG, align 4
  %260 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %261 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %279

264:                                              ; preds = %250, %242
  %265 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %266 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %264
  %273 = load i32, i32* @WMI_RC_DS_FLAG, align 4
  %274 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %275 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %272, %264
  br label %279

279:                                              ; preds = %278, %258
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %280

280:                                              ; preds = %326, %279
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %283 = mul nsw i32 %282, 8
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %285, label %329

285:                                              ; preds = %280
  %286 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %287 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sdiv i32 %290, 8
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %15, align 4
  %296 = srem i32 %295, 8
  %297 = call i32 @BIT(i32 %296)
  %298 = and i32 %294, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %325

300:                                              ; preds = %285
  %301 = load i32*, i32** %13, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sdiv i32 %302, 8
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %15, align 4
  %308 = srem i32 %307, 8
  %309 = call i32 @BIT(i32 %308)
  %310 = and i32 %306, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %300
  %313 = load i32, i32* %15, align 4
  %314 = sdiv i32 %313, 8
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %17, align 4
  %316 = load i32, i32* %15, align 4
  %317 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %318 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %16, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %16, align 4
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  store i32 %316, i32* %324, align 4
  br label %325

325:                                              ; preds = %312, %300, %285
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %280

329:                                              ; preds = %280
  %330 = load i32, i32* %16, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %356

332:                                              ; preds = %329
  %333 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %334 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 1
  store i32 8, i32* %335, align 8
  store i32 0, i32* %15, align 4
  br label %336

336:                                              ; preds = %352, %332
  %337 = load i32, i32* %15, align 4
  %338 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %339 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %337, %341
  br i1 %342, label %343, label %355

343:                                              ; preds = %336
  %344 = load i32, i32* %15, align 4
  %345 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %346 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %15, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  store i32 %344, i32* %351, align 4
  br label %352

352:                                              ; preds = %343
  %353 = load i32, i32* %15, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %15, align 4
  br label %336

355:                                              ; preds = %336
  br label %368

356:                                              ; preds = %329
  %357 = load i32, i32* %16, align 4
  %358 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %359 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  store i32 %357, i32* %360, align 8
  %361 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %362 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %17, align 4
  %365 = call i32 @min(i32 %363, i32 %364)
  %366 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %367 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %366, i32 0, i32 3
  store i32 %365, i32* %367, align 4
  br label %368

368:                                              ; preds = %356, %355
  %369 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %370 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %371 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %372 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %375 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %379 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @ath10k_dbg(%struct.ath10k* %369, i32 %370, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %373, i32 %377, i32 %380)
  br label %382

382:                                              ; preds = %368, %70, %39, %33
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @ath10k_peer_assoc_h_ht_masked(i32*) #1

declare dso_local i64 @ath10k_peer_assoc_h_vht_masked(i32*) #1

declare dso_local i32 @ath10k_parse_mpdudensity(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
