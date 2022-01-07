; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_skb_preprocess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_skb_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_13__, i32, %struct.TYPE_10__*, %struct.TYPE_14__, %struct.ath_hw*, %struct.ieee80211_hw* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.ath_hw = type { %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32 }
%struct.ath_common = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@rx_len_err = common dso_local global i32 0, align 4
@ATH9K_RXERR_CORRUPT_DESC = common dso_local global i32 0, align 4
@SPECTRAL_DISABLED = common dso_local global i64 0, align 8
@rx_spectral = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rx_beacons = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unsupported hw bitrate detected 0x%02x using 1 Mbit\0A\00", align 1
@rx_rate_err = common dso_local global i32 0, align 4
@ATH_CHANCTX_EVENT_BEACON_RECEIVED = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.sk_buff*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*, i32*, i32)* @ath9k_rx_skb_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rx_skb_preprocess(%struct.ath_softc* %0, %struct.sk_buff* %1, %struct.ath_rx_status* %2, %struct.ieee80211_rx_status* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ath_rx_status*, align 8
  %11 = alloca %struct.ieee80211_rx_status*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_hw*, align 8
  %15 = alloca %struct.ath_hw*, align 8
  %16 = alloca %struct.ath_common*, align 8
  %17 = alloca %struct.ieee80211_hdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %10, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 5
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %21, align 8
  store %struct.ieee80211_hw* %22, %struct.ieee80211_hw** %14, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %24, align 8
  store %struct.ath_hw* %25, %struct.ath_hw** %15, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %27 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %26)
  store %struct.ath_common* %27, %struct.ath_common** %16, align 8
  %28 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  br label %268

35:                                               ; preds = %6
  %36 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %40 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %45 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %50 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53, %35
  %57 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %58 = load i32, i32* @rx_len_err, align 4
  %59 = call i32 @RX_STAT_INC(%struct.ath_softc* %57, i32 %58)
  br label %268

60:                                               ; preds = %53, %48
  %61 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %62 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %66 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %69 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %67, %71
  %73 = icmp sgt i64 %64, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %76 = load i32, i32* @rx_len_err, align 4
  %77 = call i32 @RX_STAT_INC(%struct.ath_softc* %75, i32 %76)
  br label %268

78:                                               ; preds = %60
  %79 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %80 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %277

84:                                               ; preds = %78
  %85 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %86 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATH9K_RXERR_CORRUPT_DESC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %268

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %95, %99
  %101 = inttoptr i64 %100 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %101, %struct.ieee80211_hdr** %17, align 8
  %102 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %103 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @ath9k_process_tsf(%struct.ath_rx_status* %102, %struct.ieee80211_rx_status* %103, i32 %104)
  %106 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %107 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %108 = call i32 @ath_debug_stat_rx(%struct.ath_softc* %106, %struct.ath_rx_status* %107)
  %109 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %110 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %92
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  %117 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %123 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %124 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %125 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %126 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ath9k_dfs_process_phyerr(%struct.ath_softc* %122, %struct.ieee80211_hdr* %123, %struct.ath_rx_status* %124, i32 %127)
  br label %151

129:                                              ; preds = %115
  %130 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %131 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SPECTRAL_DISABLED, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %129
  %137 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %138 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %137, i32 0, i32 3
  %139 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %140 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %141 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %142 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @ath_cmn_process_fft(%struct.TYPE_14__* %138, %struct.ieee80211_hdr* %139, %struct.ath_rx_status* %140, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %148 = load i32, i32* @rx_spectral, align 4
  %149 = call i32 @RX_STAT_INC(%struct.ath_softc* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %136, %129
  br label %151

151:                                              ; preds = %150, %121
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %7, align 4
  br label %277

154:                                              ; preds = %92
  %155 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %156 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %155, i32 0, i32 1
  %157 = call i32 @spin_lock_bh(i32* %156)
  %158 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %159 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %160 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %161 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %164 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %163, i32 0, i32 2
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ath9k_cmn_rx_accept(%struct.ath_common* %158, %struct.ieee80211_hdr* %159, %struct.ieee80211_rx_status* %160, %struct.ath_rx_status* %161, i32* %162, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %154
  %171 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %172 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %171, i32 0, i32 1
  %173 = call i32 @spin_unlock_bh(i32* %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %7, align 4
  br label %277

176:                                              ; preds = %154
  %177 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %178 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %177, i32 0, i32 1
  %179 = call i32 @spin_unlock_bh(i32* %178)
  %180 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %181 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %182 = call i64 @ath_is_mybeacon(%struct.ath_common* %180, %struct.ieee80211_hdr* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %186 = load i32, i32* @rx_beacons, align 4
  %187 = call i32 @RX_STAT_INC(%struct.ath_softc* %185, i32 %186)
  %188 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %189 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %188, i32 0, i32 3
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %176
  %191 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %192 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %191, i32 0, i32 0
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = icmp ne %struct.TYPE_12__* %193, null
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i64 @WARN_ON(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %7, align 4
  br label %277

202:                                              ; preds = %190
  %203 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  %205 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %206 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %207 = call i64 @ath9k_cmn_process_rate(%struct.ath_common* %203, %struct.ieee80211_hw* %204, %struct.ath_rx_status* %205, %struct.ieee80211_rx_status* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %202
  %210 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %211 = load i32, i32* @ANY, align 4
  %212 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %213 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ath_dbg(%struct.ath_common* %210, i32 %211, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %217 = load i32, i32* @rx_rate_err, align 4
  %218 = call i32 @RX_STAT_INC(%struct.ath_softc* %216, i32 %217)
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %7, align 4
  br label %277

221:                                              ; preds = %202
  %222 = call i64 (...) @ath9k_is_chanctx_enabled()
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %226 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %231 = load i32, i32* @ATH_CHANCTX_EVENT_BEACON_RECEIVED, align 4
  %232 = call i32 @ath_chanctx_beacon_recv_ev(%struct.ath_softc* %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %224
  br label %234

234:                                              ; preds = %233, %221
  %235 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  %237 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %238 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %239 = call i32 @ath9k_cmn_process_rssi(%struct.ath_common* %235, %struct.ieee80211_hw* %236, %struct.ath_rx_status* %237, %struct.ieee80211_rx_status* %238)
  %240 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %241 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %240, i32 0, i32 0
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %248 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %250 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %249, i32 0, i32 0
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %257 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 4
  %258 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %259 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %262 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %264 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %265 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  store i32 0, i32* %7, align 4
  br label %277

268:                                              ; preds = %91, %74, %56, %34
  %269 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %270 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %273 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %7, align 4
  br label %277

277:                                              ; preds = %268, %234, %209, %199, %170, %151, %83
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @RX_STAT_INC(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_process_tsf(%struct.ath_rx_status*, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @ath_debug_stat_rx(%struct.ath_softc*, %struct.ath_rx_status*) #1

declare dso_local i32 @ath9k_dfs_process_phyerr(%struct.ath_softc*, %struct.ieee80211_hdr*, %struct.ath_rx_status*, i32) #1

declare dso_local i64 @ath_cmn_process_fft(%struct.TYPE_14__*, %struct.ieee80211_hdr*, %struct.ath_rx_status*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath9k_cmn_rx_accept(%struct.ath_common*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, %struct.ath_rx_status*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @ath_is_mybeacon(%struct.ath_common*, %struct.ieee80211_hdr*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ath9k_cmn_process_rate(%struct.ath_common*, %struct.ieee80211_hw*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @ath_chanctx_beacon_recv_ev(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_cmn_process_rssi(%struct.ath_common*, %struct.ieee80211_hw*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
