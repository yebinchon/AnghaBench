; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_channel.c_ath_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_channel.c_ath_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_8__, %struct.ath_hw*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.ieee80211_hw* }
%struct.TYPE_8__ = type { i64 }
%struct.ath_hw = type { %struct.ath9k_channel*, %struct.ath9k_channel* }
%struct.ath9k_channel = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ath_common = type { i32, i32 }

@ATH_OP_INVALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set channel: %d MHz width: %d\0A\00", align 1
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DFS enabled at freq %d\0A\00", align 1
@ATH_OP_SCANNING = common dso_local global i32 0, align 4
@SPECTRAL_CHANSCAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_set_channel(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %4, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %5, align 8
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 5
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %21, align 8
  store %struct.ieee80211_hw* %22, %struct.ieee80211_hw** %6, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store %struct.cfg80211_chan_def* %26, %struct.cfg80211_chan_def** %8, align 8
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %28, align 8
  store %struct.ieee80211_channel* %29, %struct.ieee80211_channel** %9, align 8
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  %33 = load i32, i32* @ATH_OP_INVALID, align 4
  %34 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %35 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %34, i32 0, i32 0
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %221

41:                                               ; preds = %1
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 1
  %44 = load %struct.ath9k_channel*, %struct.ath9k_channel** %43, align 8
  %45 = icmp ne %struct.ath9k_channel* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 1
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %48, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = load %struct.ath9k_channel*, %struct.ath9k_channel** %51, align 8
  %53 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %52, i64 0
  %54 = ptrtoint %struct.ath9k_channel* %49 to i64
  %55 = ptrtoint %struct.ath9k_channel* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %46, %41
  %60 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %61 = load i32, i32* @CONFIG, align 4
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %66 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %60, i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %70 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %69, i32 0, i32 1
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %74 = call i32 @ath_update_survey_stats(%struct.ath_softc* %73)
  %75 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %76 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %75, i32 0, i32 1
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %82 = call i32 @ath9k_cmn_get_channel(%struct.ieee80211_hw* %79, %struct.ath_hw* %80, %struct.cfg80211_chan_def* %81)
  %83 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %134, label %89

89:                                               ; preds = %59
  %90 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %90, i32 0, i32 3
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = icmp ne %struct.TYPE_7__* %92, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %89
  %101 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %109 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %107
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %105, %100
  %115 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %121, i32 0, i32 3
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %122, align 8
  %123 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = call i32 @memset(%struct.TYPE_7__* %125, i32 0, i32 4)
  %127 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %128 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %128, i32 0, i32 3
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %127
  store i32 %133, i32* %131, align 4
  br label %155

134:                                              ; preds = %89, %59
  %135 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %136 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %134
  %147 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = call i32 @memset(%struct.TYPE_7__* %152, i32 0, i32 4)
  br label %154

154:                                              ; preds = %146, %134
  br label %155

155:                                              ; preds = %154, %114
  %156 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %157 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %156, i32 0, i32 1
  %158 = load %struct.ath_hw*, %struct.ath_hw** %157, align 8
  %159 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %158, i32 0, i32 0
  %160 = load %struct.ath9k_channel*, %struct.ath9k_channel** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %160, i64 %162
  store %struct.ath9k_channel* %163, %struct.ath9k_channel** %7, align 8
  %164 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %165 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %166 = call i32 @ath_reset(%struct.ath_softc* %164, %struct.ath9k_channel* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %2, align 4
  br label %221

171:                                              ; preds = %155
  %172 = load i32, i32* %12, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @ath_update_survey_nf(%struct.ath_softc* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %180 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %178
  %185 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %186 = call i32 @ath9k_hw_getrxfilter(%struct.ath_hw* %185)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %188 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* %14, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %14, align 4
  %192 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %192, i32 %193)
  %195 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %196 = load i32, i32* @DFS, align 4
  %197 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %198 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %195, i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  br label %220

201:                                              ; preds = %178
  %202 = load i32, i32* @ATH_OP_SCANNING, align 4
  %203 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %204 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %203, i32 0, i32 0
  %205 = call i64 @test_bit(i32 %202, i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %201
  %208 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %209 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SPECTRAL_CHANSCAN, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %216 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %216, i32 0, i32 0
  %218 = call i32 @ath9k_cmn_spectral_scan_trigger(%struct.ath_common* %215, %struct.TYPE_8__* %217)
  br label %219

219:                                              ; preds = %214, %207, %201
  br label %220

220:                                              ; preds = %219, %184
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %220, %169, %38
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath_update_survey_stats(%struct.ath_softc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_cmn_get_channel(%struct.ieee80211_hw*, %struct.ath_hw*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ath_reset(%struct.ath_softc*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath_update_survey_nf(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_getrxfilter(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_cmn_spectral_scan_trigger(%struct.ath_common*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
