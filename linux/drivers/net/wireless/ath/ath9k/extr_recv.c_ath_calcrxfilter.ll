; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_calcrxfilter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_calcrxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, %struct.TYPE_15__, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.ath_common = type { i32 }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_UCAST = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_BCAST = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_MCAST = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@FIF_PROBE_REQ = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PROBEREQ = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PROM = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_CONTROL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_MYBEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_OCB = common dso_local global i64 0, align 8
@ATH9K_RX_FILTER_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@FIF_PSPOLL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PSPOLL = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@ATH9K_RX_FILTER_COMP_BAR = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9160 = common dso_local global i64 0, align 8
@ATH9K_RX_FILTER_MCAST_BCAST_ALL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_4ADDRESS = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_CONTROL_WRAPPER = common dso_local global i32 0, align 4
@ATH_OP_SCANNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_calcrxfilter(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_19__* %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  %10 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %243

14:                                               ; preds = %1
  %15 = load i32, i32* @ATH9K_RX_FILTER_UCAST, align 4
  %16 = load i32, i32* @ATH9K_RX_FILTER_BCAST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ATH9K_RX_FILTER_MCAST, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %29 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %14
  %34 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FIF_PROBE_REQ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* @ATH9K_RX_FILTER_PROBEREQ, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %33
  %50 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @ATH9K_RX_FILTER_PROM, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 2
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FIF_CONTROL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %60
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69, %60
  %78 = load i32, i32* @ATH9K_RX_FILTER_CONTROL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %69
  %82 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  %90 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 1
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 2
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @ATH9K_RX_FILTER_MYBEACON, align 4
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %122

109:                                              ; preds = %96, %89, %81
  %110 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NL80211_IFTYPE_OCB, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* @ATH9K_RX_FILTER_BEACON, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %109
  br label %122

122:                                              ; preds = %121, %105
  %123 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %122
  %131 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %131, i32 0, i32 2
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FIF_PSPOLL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130, %122
  %140 = load i32, i32* @ATH9K_RX_FILTER_PSPOLL, align 4
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %130
  %144 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %145 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @ATH9K_RX_FILTER_COMP_BAR, align 4
  %152 = load i32, i32* %5, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %155, i32 0, i32 2
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %170, label %161

161:                                              ; preds = %154
  %162 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %162, i32 0, i32 2
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @FIF_OTHER_BSS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %161, %154
  %171 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %172 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @AR_SREV_VERSION_9160, align 8
  %178 = icmp sle i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = load i32, i32* @ATH9K_RX_FILTER_PROM, align 4
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %179, %170
  %184 = load i32, i32* @ATH9K_RX_FILTER_MCAST_BCAST_ALL, align 4
  %185 = load i32, i32* %5, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %183, %161
  %188 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %188, i32 0, i32 1
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = call i64 @AR_SREV_9550(%struct.TYPE_19__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %187
  %194 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %194, i32 0, i32 1
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = call i64 @AR_SREV_9531(%struct.TYPE_19__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %193
  %200 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %201 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %200, i32 0, i32 1
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = call i64 @AR_SREV_9561(%struct.TYPE_19__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199, %193, %187
  %206 = load i32, i32* @ATH9K_RX_FILTER_4ADDRESS, align 4
  %207 = load i32, i32* %5, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %205, %199
  %210 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %210, i32 0, i32 1
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %211, align 8
  %213 = call i64 @AR_SREV_9462(%struct.TYPE_19__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %209
  %216 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %216, i32 0, i32 1
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %217, align 8
  %219 = call i64 @AR_SREV_9565(%struct.TYPE_19__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215, %209
  %222 = load i32, i32* @ATH9K_RX_FILTER_CONTROL_WRAPPER, align 4
  %223 = load i32, i32* %5, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %221, %215
  %226 = call i64 (...) @ath9k_is_chanctx_enabled()
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i32, i32* @ATH_OP_SCANNING, align 4
  %230 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %231 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %230, i32 0, i32 0
  %232 = call i64 @test_bit(i32 %229, i32* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = load i32, i32* @ATH9K_RX_FILTER_BEACON, align 4
  %236 = load i32, i32* %5, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %234, %228, %225
  %239 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %240 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %239, i32 0, i32 0
  %241 = call i32 @spin_unlock_bh(i32* %240)
  %242 = load i32, i32* %5, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %238, %13
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @AR_SREV_9550(%struct.TYPE_19__*) #1

declare dso_local i64 @AR_SREV_9531(%struct.TYPE_19__*) #1

declare dso_local i64 @AR_SREV_9561(%struct.TYPE_19__*) #1

declare dso_local i64 @AR_SREV_9462(%struct.TYPE_19__*) #1

declare dso_local i64 @AR_SREV_9565(%struct.TYPE_19__*) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
