; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.htt_rx_desc = type { i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@RX_PPDU_START_INFO1_PREAMBLE_TYPE = common dso_local global i32 0, align 4
@RX_PPDU_START_INFO1_L_SIG_RATE_SELECT = common dso_local global i32 0, align 4
@RX_PPDU_START_INFO1_L_SIG_RATE = common dso_local global i32 0, align 4
@RX_PPDU_START_RATE_FLAG = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid MCS received %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"rxd %08x mpdu start %08x %08x msdu start %08x %08x ppdu start %08x %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"msdu end %08x mpdu end %08x\0A\00", align 1
@ATH10K_DBG_HTT_DUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"rx desc msdu payload: \00", align 1
@RX_ENC_VHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*)* @ath10k_htt_rx_h_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_rates(%struct.ath10k* %0, %struct.ieee80211_rx_status* %1, %struct.htt_rx_desc* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.htt_rx_desc*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %5, align 8
  store %struct.htt_rx_desc* %2, %struct.htt_rx_desc** %6, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %20 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__le32_to_cpu(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %25 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__le32_to_cpu(i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %30 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__le32_to_cpu(i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @RX_PPDU_START_INFO1_PREAMBLE_TYPE, align 4
  %36 = call i32 @MS(i32 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  switch i32 %37, label %224 [
    i32 130, label %38
    i32 132, label %69
    i32 131, label %69
    i32 129, label %102
    i32 128, label %102
  ]

38:                                               ; preds = %3
  %39 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %225

44:                                               ; preds = %38
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @RX_PPDU_START_INFO1_L_SIG_RATE_SELECT, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @RX_PPDU_START_INFO1_L_SIG_RATE, align 4
  %50 = call i32 @MS(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @RX_PPDU_START_RATE_FLAG, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %57, align 8
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %58, i64 %61
  store %struct.ieee80211_supported_band* %62, %struct.ieee80211_supported_band** %7, align 8
  %63 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ath10k_mac_hw_rate_to_idx(%struct.ieee80211_supported_band* %63, i32 %64, i32 %65)
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %225

69:                                               ; preds = %3, %3
  %70 = load i32, i32* %17, align 4
  %71 = and i32 %70, 31
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = ashr i32 %72, 3
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %17, align 4
  %75 = ashr i32 %74, 7
  %76 = and i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %18, align 4
  %78 = ashr i32 %77, 7
  %79 = and i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @RX_ENC_HT, align 4
  %84 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %69
  %89 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %90 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %69
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @RATE_INFO_BW_40, align 4
  %99 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %94
  br label %225

102:                                              ; preds = %3, %3
  %103 = load i32, i32* %17, align 4
  %104 = and i32 %103, 3
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %18, align 4
  %106 = and i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %17, align 4
  %108 = ashr i32 %107, 4
  %109 = and i32 %108, 63
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @GROUP_ID_IS_SU_MIMO(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load i32, i32* %18, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 15
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %17, align 4
  %118 = ashr i32 %117, 10
  %119 = and i32 %118, 7
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %122

121:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %122

122:                                              ; preds = %121, %113
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %123, 9
  br i1 %124, label %125, label %201

125:                                              ; preds = %122
  %126 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %130 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %131 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @__le32_to_cpu(i32 %133)
  %135 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %136 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @__le32_to_cpu(i32 %138)
  %140 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %141 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @__le32_to_cpu(i32 %143)
  %145 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %146 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @__le32_to_cpu(i32 %149)
  %151 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %152 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @__le32_to_cpu(i32 %155)
  %157 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %158 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %162 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @__le32_to_cpu(i32 %164)
  %166 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %167 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @__le32_to_cpu(i32 %169)
  %171 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %172 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @__le32_to_cpu(i32 %174)
  %176 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %177 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @__le32_to_cpu(i32 %179)
  %181 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %129, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %139, i32 %144, i32 %150, i32 %156, i32 %160, i32 %165, i32 %170, i32 %175, i32 %180)
  %182 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %183 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %184 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @__le32_to_cpu(i32 %187)
  %189 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %190 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @__le32_to_cpu(i32 %192)
  %194 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %188, i32 %193)
  %195 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %196 = load i32, i32* @ATH10K_DBG_HTT_DUMP, align 4
  %197 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %198 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ath10k_dbg_dump(%struct.ath10k* %195, i32 %196, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %199, i32 50)
  br label %201

201:                                              ; preds = %125, %122
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %204 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %207 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %201
  %211 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %212 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %213 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %210, %201
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @ath10k_bw_to_mac80211_bw(i32 %217)
  %219 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %220 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @RX_ENC_VHT, align 4
  %222 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %223 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  br label %225

224:                                              ; preds = %3
  br label %225

225:                                              ; preds = %43, %224, %216, %101, %44
  ret void
}

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath10k_mac_hw_rate_to_idx(%struct.ieee80211_supported_band*, i32, i32) #1

declare dso_local i32 @GROUP_ID_IS_SU_MIMO(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_bw_to_mac80211_bw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
