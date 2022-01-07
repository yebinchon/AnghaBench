; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32*, %struct.ieee80211_vif**, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee80211_vif = type { i64 }
%struct.ath5k_vif = type { %struct.ath5k_buf* }
%struct.ath5k_buf = type { i32, i64, i32* }
%struct.sk_buff = type { i32 }

@ATH5K_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"in beacon_send\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"missed %u consecutive beacons\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"stuck beacon time (%u missed)\0A\00", align 1
@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"stuck beacon, resetting\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"resume beacon xmit after %u misses\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@ATH_BCBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"tsf %llx tsftu %x intval %u slot %u vif %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"beacon queue %u didn't start/stop ?\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"bf=%p bf_skb=%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"TXDP[%u] = %llx (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*)* @ath5k_beacon_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_beacon_send(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.ath5k_vif*, align 8
  %5 = alloca %struct.ath5k_buf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %13 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %11, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @ath5k_hw_num_tx_pending(%struct.ath5k_hw* %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %1
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %29 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %28, i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %54

38:                                               ; preds = %23
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %40 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %46 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %47 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %51, i32 0, i32 11
  %53 = call i32 @ieee80211_queue_work(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %38, %23
  br label %290

55:                                               ; preds = %1
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %65 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %64, i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %63, %55
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %83 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %93, label %87

87:                                               ; preds = %78, %72
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %89 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %87, %78
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %95 = call i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw* %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @TSF_TO_TU(i64 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %100 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = srem i32 %98, %101
  %103 = load i32, i32* @ATH_BCBUF, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %104, %107
  store i32 %108, i32* %10, align 4
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 10
  %111 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @ATH_BCBUF, align 4
  %115 = srem i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %111, i64 %116
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %117, align 8
  store %struct.ieee80211_vif* %118, %struct.ieee80211_vif** %3, align 8
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %120 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %124 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %128 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %119, i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %121, i32 %122, i32 %125, i32 %126, %struct.ieee80211_vif* %127)
  br label %135

129:                                              ; preds = %87
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %131 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %130, i32 0, i32 10
  %132 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %131, align 8
  %133 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %132, i64 0
  %134 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %133, align 8
  store %struct.ieee80211_vif* %134, %struct.ieee80211_vif** %3, align 8
  br label %135

135:                                              ; preds = %129, %93
  %136 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %137 = icmp ne %struct.ieee80211_vif* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  br label %290

139:                                              ; preds = %135
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %141 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = bitcast i8* %143 to %struct.ath5k_vif*
  store %struct.ath5k_vif* %144, %struct.ath5k_vif** %4, align 8
  %145 = load %struct.ath5k_vif*, %struct.ath5k_vif** %4, align 8
  %146 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %145, i32 0, i32 0
  %147 = load %struct.ath5k_buf*, %struct.ath5k_buf** %146, align 8
  store %struct.ath5k_buf* %147, %struct.ath5k_buf** %5, align 8
  %148 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %149 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %150 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ath5k_hw_stop_beacon_queue(%struct.ath5k_hw* %148, i64 %151)
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %139
  %156 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %157 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %158 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_WARN(%struct.ath5k_hw* %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %155, %139
  %162 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %163 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %169 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167, %161
  %174 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %175 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %178 = call i32 @ath5k_beacon_update(i32 %176, %struct.ieee80211_vif* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %290

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %167
  %184 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %185 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %200, label %188

188:                                              ; preds = %183
  %189 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %190 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %196 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %199 = icmp eq i64 %197, %198
  br label %200

200:                                              ; preds = %194, %188, %183
  %201 = phi i1 [ true, %188 ], [ true, %183 ], [ %199, %194 ]
  %202 = zext i1 %201 to i32
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %207 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %208 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %209 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_WARN(%struct.ath5k_hw* %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %struct.ath5k_buf* %207, i32* %210)
  br label %290

212:                                              ; preds = %200
  %213 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %214 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %215 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %218 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %217, i32 0, i32 9
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %221 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = call i32 @trace_ath5k_tx(%struct.ath5k_hw* %213, i32* %216, i32* %223)
  %225 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %226 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %227 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %230 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @ath5k_hw_set_txdp(%struct.ath5k_hw* %225, i64 %228, i64 %231)
  %233 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %234 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %235 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw* %233, i64 %236)
  %238 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %239 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %240 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %241 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %244 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.ath5k_buf*, %struct.ath5k_buf** %5, align 8
  %247 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %238, i32 %239, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %242, i64 %245, i32 %248)
  %250 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %251 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %254 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %252, %struct.ieee80211_vif* %253)
  store %struct.sk_buff* %254, %struct.sk_buff** %6, align 8
  br label %255

255:                                              ; preds = %279, %212
  %256 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %257 = icmp ne %struct.sk_buff* %256, null
  br i1 %257, label %258, label %285

258:                                              ; preds = %255
  %259 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %260 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %263 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %264 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %263, i32 0, i32 8
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = call i32 @ath5k_tx_queue(i32 %261, %struct.sk_buff* %262, %struct.TYPE_2__* %265, i32* null)
  %267 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %268 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %267, i32 0, i32 8
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %273 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %272, i32 0, i32 8
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp sge i64 %271, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %258
  br label %285

279:                                              ; preds = %258
  %280 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %281 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %284 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %282, %struct.ieee80211_vif* %283)
  store %struct.sk_buff* %284, %struct.sk_buff** %6, align 8
  br label %255

285:                                              ; preds = %278, %255
  %286 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %287 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %285, %205, %181, %138, %54
  ret void
}

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ath5k_hw_num_tx_pending(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw*) #1

declare dso_local i32 @TSF_TO_TU(i64) #1

declare dso_local i32 @ath5k_hw_stop_beacon_queue(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ATH5K_WARN(%struct.ath5k_hw*, i8*, ...) #1

declare dso_local i32 @ath5k_beacon_update(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @trace_ath5k_tx(%struct.ath5k_hw*, i32*, i32*) #1

declare dso_local i32 @ath5k_hw_set_txdp(%struct.ath5k_hw*, i64, i64) #1

declare dso_local i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw*, i64) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath5k_tx_queue(i32, %struct.sk_buff*, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
