; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_update_per_peer_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_update_per_peer_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath10k_per_peer_tx_stats = type { i64, i32, i32 }
%struct.ath10k_sta = type { %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.rate_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid VHT mcs %hhd peer stats\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid HT mcs %hhd nss %hhd peer stats\00", align 1
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_sta*, %struct.ath10k_per_peer_tx_stats*)* @ath10k_update_per_peer_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_update_per_peer_tx_stats(%struct.ath10k* %0, %struct.ieee80211_sta* %1, %struct.ath10k_per_peer_tx_stats* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ath10k_per_peer_tx_stats*, align 8
  %7 = alloca %struct.ath10k_sta*, align 8
  %8 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rate_info, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.ath10k_per_peer_tx_stats* %2, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %17, %struct.ath10k_sta** %7, align 8
  store %struct.ieee80211_chanctx_conf* null, %struct.ieee80211_chanctx_conf** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %22 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ATH10K_HW_PREAMBLE(i32 %23)
  %25 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %27 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ATH10K_HW_BW(i32 %28)
  %30 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %32 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ATH10K_HW_NSS(i32 %33)
  %35 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %37 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ATH10K_HW_MCS_RATE(i32 %38)
  %40 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %42 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ATH10K_HW_GI(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ATH10K_FW_SKIPPED_RATE_CTRL(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %3
  br label %389

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 9
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %389

65:                                               ; preds = %56, %52
  %66 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 130
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 7
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %73, %69
  %78 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %79 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82)
  br label %389

84:                                               ; preds = %73, %65
  %85 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %86 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %85, i32 0, i32 1
  %87 = call i32 @memset(%struct.TYPE_13__* %86, i32 0, i32 32)
  %88 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %89 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = call i32 @memset(%struct.TYPE_13__* %90, i32 0, i32 32)
  %92 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 131
  br i1 %94, label %99, label %95

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %99, label %123

99:                                               ; preds = %95, %84
  %100 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %101 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ATH10K_HW_LEGACY_RATE(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 131
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 5, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %106, %99
  %112 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @ath10k_get_legacy_rate_idx(%struct.ath10k* %112, i32 %113)
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %389

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %121 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  br label %153

123:                                              ; preds = %95
  %124 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 130
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %129 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %130 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 8
  %132 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = mul nsw i32 8, %136
  %138 = add nsw i32 %133, %137
  %139 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %140 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %152

142:                                              ; preds = %123
  %143 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %144 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %145 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  store i32 %143, i32* %146, align 8
  %147 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %150 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %142, %127
  br label %153

153:                                              ; preds = %152, %118
  %154 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %302 [
    i32 129, label %156
    i32 131, label %201
    i32 130, label %227
    i32 128, label %266
  ]

156:                                              ; preds = %153
  %157 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %158 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %157, i32 0, i32 3
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = icmp ne %struct.TYPE_10__* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %163 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %162, i32 0, i32 3
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = icmp ne %struct.TYPE_9__* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %170 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %169, i32 0, i32 3
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %175)
  store %struct.ieee80211_chanctx_conf* %176, %struct.ieee80211_chanctx_conf** %8, align 8
  br label %177

177:                                              ; preds = %168, %161, %156
  %178 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %179 = icmp ne %struct.ieee80211_chanctx_conf* %178, null
  br i1 %179, label %180, label %200

180:                                              ; preds = %177
  %181 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %182 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %180
  %190 = load i64, i64* %11, align 8
  %191 = sub nsw i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %194 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  store i32 %192, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %180, %177
  br label %302

201:                                              ; preds = %153
  %202 = load i64, i64* %11, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %205 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  store i32 %203, i32* %210, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %201
  %214 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %215 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %218 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %216
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %213, %201
  br label %302

227:                                              ; preds = %153
  %228 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %231, 1
  %233 = mul nsw i32 %232, 8
  %234 = add nsw i32 %229, %233
  %235 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %236 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  store i32 %234, i32* %241, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %227
  %245 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %246 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %247 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %245
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %244, %227
  %256 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %257 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %258 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %256
  store i32 %265, i32* %263, align 4
  br label %302

266:                                              ; preds = %153
  %267 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %268 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i64 0
  %273 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ieee80211_rate_set_vht(%struct.TYPE_15__* %272, i32 %274, i32 %276)
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %266
  %281 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %282 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %283 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %281
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %280, %266
  %292 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %293 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %294 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %292
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %153, %291, %255, %226, %200
  %303 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %306 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 2
  store i32 %304, i32* %307, align 8
  %308 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %13, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @ath10k_bw_to_mac80211_bw(i32 %309)
  %311 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %312 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 3
  store i32 %310, i32* %313, align 4
  %314 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %315 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %314, i32 0, i32 1
  %316 = call i32 @cfg80211_calculate_bitrate(%struct.TYPE_13__* %315)
  %317 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %318 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 8
  %319 = load i32, i32* %10, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %302
  %322 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %323 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %324 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %322
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %321, %302
  %329 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %330 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  switch i32 %332, label %355 [
    i32 133, label %333
    i32 132, label %344
  ]

333:                                              ; preds = %328
  %334 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %335 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %336 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %334
  store i32 %343, i32* %341, align 4
  br label %355

344:                                              ; preds = %328
  %345 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %346 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %347 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 4
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i64 0
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %345
  store i32 %354, i32* %352, align 4
  br label %355

355:                                              ; preds = %328, %344, %333
  %356 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %357 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %379

360:                                              ; preds = %355
  %361 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %362 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %363 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 1
  store i32 %361, i32* %364, align 8
  %365 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %366 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i64 0
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 2
  store i32 1, i32* %371, align 4
  %372 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %373 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %376 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %377 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %376, i32 0, i32 0
  %378 = call i32 @ieee80211_tx_rate_update(i32 %374, %struct.ieee80211_sta* %375, %struct.TYPE_14__* %377)
  br label %379

379:                                              ; preds = %360, %355
  %380 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %381 = call i64 @ath10k_debug_is_extd_tx_stats_enabled(%struct.ath10k* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %379
  %384 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %385 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %386 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %387 = load i64, i64* %11, align 8
  %388 = call i32 @ath10k_accumulate_per_peer_tx_stats(%struct.ath10k* %384, %struct.ath10k_sta* %385, %struct.ath10k_per_peer_tx_stats* %386, i64 %387)
  br label %389

389:                                              ; preds = %51, %60, %77, %117, %383, %379
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ATH10K_HW_PREAMBLE(i32) #1

declare dso_local i32 @ATH10K_HW_BW(i32) #1

declare dso_local i32 @ATH10K_HW_NSS(i32) #1

declare dso_local i32 @ATH10K_HW_MCS_RATE(i32) #1

declare dso_local i32 @ATH10K_HW_GI(i32) #1

declare dso_local i32 @ATH10K_FW_SKIPPED_RATE_CTRL(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ATH10K_HW_LEGACY_RATE(i32) #1

declare dso_local i64 @ath10k_get_legacy_rate_idx(%struct.ath10k*, i32) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @ieee80211_rate_set_vht(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ath10k_bw_to_mac80211_bw(i32) #1

declare dso_local i32 @cfg80211_calculate_bitrate(%struct.TYPE_13__*) #1

declare dso_local i32 @ieee80211_tx_rate_update(i32, %struct.ieee80211_sta*, %struct.TYPE_14__*) #1

declare dso_local i64 @ath10k_debug_is_extd_tx_stats_enabled(%struct.ath10k*) #1

declare dso_local i32 @ath10k_accumulate_per_peer_tx_stats(%struct.ath10k*, %struct.ath10k_sta*, %struct.ath10k_per_peer_tx_stats*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
