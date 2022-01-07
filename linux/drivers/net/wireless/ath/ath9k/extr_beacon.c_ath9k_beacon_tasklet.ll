; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_6__, i32, %struct.ath_hw* }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_buf = type { i32 }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH_OP_HW_RESET = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"reset work is pending, skip beaconing now\0A\00", align 1
@BSTUCK_THRESH = common dso_local global i32 0, align 4
@BSTUCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"missed %u consecutive beacons\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"beacon is officially stuck\0A\00", align 1
@RESET_TYPE_BEACON_STUCK = common dso_local global i32 0, align 4
@ATH_CHANCTX_EVENT_BEACON_SENT = common dso_local global i32 0, align 4
@ATH_CHANCTX_EVENT_BEACON_PREPARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"resume beacon xmit after %u misses\0A\00", align 1
@UPDATE = common dso_local global i64 0, align 8
@COMMIT = common dso_local global i64 0, align 8
@OK = common dso_local global i64 0, align 8
@BEACON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Transmitting beacon for slot: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_beacon_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.ath_softc*
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 3
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %4, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  store %struct.ath_buf* null, %struct.ath_buf** %6, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @ATH_OP_HW_RESET, align 4
  %28 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %29 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %34 = load i32, i32* @RESET, align 4
  %35 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %33, i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %249

36:                                               ; preds = %1
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ath9k_hw_numtxpending(%struct.ath_hw* %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %36
  %45 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = call i32 @ath9k_hw_check_nav(%struct.ath_hw* %50)
  %52 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %53 = call i32 @ath_hw_check(%struct.ath_softc* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %249

56:                                               ; preds = %44
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BSTUCK_THRESH, align 4
  %62 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %56
  %68 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %69 = load i32, i32* @BSTUCK, align 4
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ath9k_hw_stop_dma_queue(%struct.ath_hw* %75, i32 %79)
  %81 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %67
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = call i32 @ath9k_hw_bstuck_nfcal(%struct.ath_hw* %87)
  br label %89

89:                                               ; preds = %86, %67
  br label %108

90:                                               ; preds = %56
  %91 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BSTUCK_THRESH, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %99 = load i32, i32* @BSTUCK, align 4
  %100 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %98, i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %105 = load i32, i32* @RESET_TYPE_BEACON_STUCK, align 4
  %106 = call i32 @ath9k_queue_reset(%struct.ath_softc* %104, i32 %105)
  br label %107

107:                                              ; preds = %97, %90
  br label %108

108:                                              ; preds = %107, %89
  br label %249

109:                                              ; preds = %36
  %110 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %111 = call i32 @ath9k_beacon_choose_slot(%struct.ath_softc* %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %115, i64 %117
  %119 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %118, align 8
  store %struct.ieee80211_vif* %119, %struct.ieee80211_vif** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %109
  %123 = call i64 (...) @ath9k_is_chanctx_enabled()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %127 = load i32, i32* @ATH_CHANCTX_EVENT_BEACON_SENT, align 4
  %128 = call i32 @ath_chanctx_beacon_sent_ev(%struct.ath_softc* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %132 = call i64 @ath9k_csa_is_finished(%struct.ath_softc* %130, %struct.ieee80211_vif* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %249

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %138 = icmp ne %struct.ieee80211_vif* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139, %136
  br label %249

146:                                              ; preds = %139
  %147 = call i64 (...) @ath9k_is_chanctx_enabled()
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %151 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %152 = load i32, i32* @ATH_CHANCTX_EVENT_BEACON_PREPARE, align 4
  %153 = call i32 @ath_chanctx_event(%struct.ath_softc* %150, %struct.ieee80211_vif* %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %146
  %155 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %159 = call %struct.ath_buf* @ath9k_beacon_generate(i32 %157, %struct.ieee80211_vif* %158)
  store %struct.ath_buf* %159, %struct.ath_buf** %6, align 8
  %160 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %161 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %154
  %166 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %167 = load i32, i32* @BSTUCK, align 4
  %168 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %169 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %166, i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %174 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %165, %154
  %177 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %178 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @UPDATE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %176
  %184 = load i64, i64* @COMMIT, align 8
  %185 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %186 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  store i64 %184, i64* %187, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %190 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  br label %220

192:                                              ; preds = %176
  %193 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %194 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @COMMIT, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %219

199:                                              ; preds = %192
  %200 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %201 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %199
  %207 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %208 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %212 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %214 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %213)
  %215 = load i64, i64* @OK, align 8
  %216 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  store i64 %215, i64* %218, align 8
  br label %219

219:                                              ; preds = %206, %199, %192
  br label %220

220:                                              ; preds = %219, %183
  %221 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %222 = icmp ne %struct.ath_buf* %221, null
  br i1 %222, label %223, label %249

223:                                              ; preds = %220
  %224 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %225 = call i32 @ath9k_reset_beacon_status(%struct.ath_softc* %224)
  %226 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %227 = load i32, i32* @BEACON, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %226, i32 %227, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %231 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %232 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %236 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ath9k_hw_puttxbuf(%struct.ath_hw* %230, i32 %234, i32 %237)
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %223
  %242 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %243 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %244 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @ath9k_hw_txstart(%struct.ath_hw* %242, i32 %246)
  br label %248

248:                                              ; preds = %241, %223
  br label %249

249:                                              ; preds = %32, %55, %108, %134, %145, %248, %220
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @ath9k_hw_numtxpending(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_check_nav(%struct.ath_hw*) #1

declare dso_local i32 @ath_hw_check(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_stop_dma_queue(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_bstuck_nfcal(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_beacon_choose_slot(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @ath_chanctx_beacon_sent_ev(%struct.ath_softc*, i32) #1

declare dso_local i64 @ath9k_csa_is_finished(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath_chanctx_event(%struct.ath_softc*, %struct.ieee80211_vif*, i32) #1

declare dso_local %struct.ath_buf* @ath9k_beacon_generate(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_reset_beacon_status(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_puttxbuf(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_txstart(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
