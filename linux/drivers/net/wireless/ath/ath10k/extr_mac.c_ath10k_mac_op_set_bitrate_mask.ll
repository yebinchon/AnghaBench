; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_set_bitrate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_set_bitrate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, i64, i32* }
%struct.ath10k_vif = type { i32, i32, i64, %struct.cfg80211_bitrate_mask, %struct.ath10k* }
%struct.ath10k = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@WMI_HT_CAP_LDPC = common dso_local global i32 0, align 4
@NL80211_TXRATE_FORCE_LGI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_PEER_FIXED_RATE = common dso_local global i32 0, align 4
@ath10k_mac_clr_bitrate_mask_iter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to get single rate for vdev %i: %d\0A\00", align 1
@WMI_FIXED_RATE_NONE = common dso_local global i64 0, align 8
@ath10k_mac_set_bitrate_mask_iter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to set fixed rate params on vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_bitrate_mask*)* @ath10k_mac_op_set_bitrate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_op_set_bitrate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_bitrate_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  %9 = alloca %struct.cfg80211_chan_def, align 8
  %10 = alloca %struct.ath10k*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %7, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %29, %struct.ath10k_vif** %8, align 8
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %31 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %30, i32 0, i32 4
  %32 = load %struct.ath10k*, %struct.ath10k** %31, align 8
  store %struct.ath10k* %32, %struct.ath10k** %10, align 8
  store i32 1, i32* %23, align 4
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = call i64 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %33, %struct.cfg80211_chan_def* %9)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %225

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %45 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  store i64* %51, i64** %12, align 8
  %52 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %53 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %13, align 8
  %60 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WMI_HT_CAP_LDPC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %17, align 8
  %70 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %71 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @NL80211_TXRATE_FORCE_LGI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %39
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %225

84:                                               ; preds = %39
  %85 = load i32, i32* @ATH10K_FW_FEATURE_PEER_FIXED_RATE, align 4
  %86 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %87 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @test_bit(i32 %85, i32 %90)
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %21, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %84
  %95 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %96 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %95, i32 0, i32 1
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %99 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ath10k_mac_clr_bitrate_mask_iter, align 4
  %102 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %103 = call i32 @ieee80211_iterate_stations_atomic(i32 %100, i32 %101, %struct.ath10k_vif* %102)
  %104 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %105 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %94, %84
  %108 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %111 = call i64 @ath10k_mac_bitrate_mask_has_single_rate(%struct.ath10k* %108, i32 %109, %struct.cfg80211_bitrate_mask* %110, i32* %20)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %117 = call i32 @ath10k_mac_bitrate_mask_get_single_rate(%struct.ath10k* %114, i32 %115, %struct.cfg80211_bitrate_mask* %116, i64* %14, i64* %15, i32 0)
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %122 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %123 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @ath10k_warn(%struct.ath10k* %121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %19, align 4
  store i32 %127, i32* %4, align 4
  br label %225

128:                                              ; preds = %113
  br label %200

129:                                              ; preds = %107
  %130 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %133 = call i64 @ath10k_mac_bitrate_mask_get_single_nss(%struct.ath10k* %130, i32 %131, %struct.cfg80211_bitrate_mask* %132, i32* %18)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i64, i64* @WMI_FIXED_RATE_NONE, align 8
  store i64 %136, i64* %14, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %15, align 8
  br label %199

139:                                              ; preds = %129
  %140 = load i64, i64* @WMI_FIXED_RATE_NONE, align 8
  store i64 %140, i64* %14, align 8
  %141 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %142 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i64*, i64** %12, align 8
  %145 = call i32 @ath10k_mac_max_ht_nss(i64* %144)
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @ath10k_mac_max_vht_nss(i32* %146)
  %148 = call i32 @max(i32 %145, i32 %147)
  %149 = call i64 @min(i32 %143, i32 %148)
  store i64 %149, i64* %15, align 8
  %150 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @ath10k_mac_can_set_bitrate_mask(%struct.ath10k* %150, i32 %151, %struct.cfg80211_bitrate_mask* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %139
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 1
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %156
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %225

165:                                              ; preds = %159
  %166 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %169 = call i32 @ath10k_mac_bitrate_mask_get_single_rate(%struct.ath10k* %166, i32 %167, %struct.cfg80211_bitrate_mask* %168, i64* %22, i64* %24, i32 1)
  store i32 0, i32* %23, align 4
  br label %171

170:                                              ; preds = %139
  store i64 0, i64* %22, align 8
  br label %171

171:                                              ; preds = %170, %165
  %172 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %173 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %172, i32 0, i32 1
  %174 = call i32 @mutex_lock(i32* %173)
  %175 = load i32, i32* %23, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %179 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %178, i32 0, i32 3
  %180 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %181 = bitcast %struct.cfg80211_bitrate_mask* %179 to i8*
  %182 = bitcast %struct.cfg80211_bitrate_mask* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 8, i1 false)
  br label %183

183:                                              ; preds = %177, %171
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %186 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i64, i64* %22, align 8
  %188 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %189 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %191 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ath10k_mac_set_bitrate_mask_iter, align 4
  %194 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %195 = call i32 @ieee80211_iterate_stations_atomic(i32 %192, i32 %193, %struct.ath10k_vif* %194)
  %196 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %197 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %196, i32 0, i32 1
  %198 = call i32 @mutex_unlock(i32* %197)
  br label %199

199:                                              ; preds = %183, %135
  br label %200

200:                                              ; preds = %199, %128
  %201 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %202 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %201, i32 0, i32 1
  %203 = call i32 @mutex_lock(i32* %202)
  %204 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %205 = load i64, i64* %14, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %17, align 8
  %209 = call i32 @ath10k_mac_set_fixed_rate_params(%struct.ath10k_vif* %204, i64 %205, i64 %206, i64 %207, i64 %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %200
  %213 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %214 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %215 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %19, align 4
  %218 = call i32 @ath10k_warn(%struct.ath10k* %213, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %217)
  br label %220

219:                                              ; preds = %200
  br label %220

220:                                              ; preds = %219, %212
  %221 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %222 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %221, i32 0, i32 1
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load i32, i32* %19, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %220, %162, %120, %81, %36
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i64 @ath10k_mac_vif_chan(%struct.ieee80211_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_iterate_stations_atomic(i32, i32, %struct.ath10k_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ath10k_mac_bitrate_mask_has_single_rate(%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i32*) #1

declare dso_local i32 @ath10k_mac_bitrate_mask_get_single_rate(%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i64*, i64*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i64 @ath10k_mac_bitrate_mask_get_single_nss(%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ath10k_mac_max_ht_nss(i64*) #1

declare dso_local i32 @ath10k_mac_max_vht_nss(i32*) #1

declare dso_local i32 @ath10k_mac_can_set_bitrate_mask(%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ath10k_mac_set_fixed_rate_params(%struct.ath10k_vif*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
