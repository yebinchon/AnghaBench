; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_setup_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_setup_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_14__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i32* }
%struct.ath9k_htc_target_rate = type { i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.ath9k_htc_sta = type { i32 }

@ATH_HTC_RATE_MAX = common dso_local global i32 0, align 4
@WLAN_RC_HT_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@ATH_RC_TX_STBC_FLAG = common dso_local global i32 0, align 4
@WLAN_RC_DS_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@WLAN_RC_40_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@WLAN_RC_SGI_FLAG = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_sta*, %struct.ath9k_htc_target_rate*)* @ath9k_htc_setup_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_setup_rate(%struct.ath9k_htc_priv* %0, %struct.ieee80211_sta* %1, %struct.ath9k_htc_target_rate* %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ath9k_htc_target_rate*, align 8
  %7 = alloca %struct.ath9k_htc_sta*, align 8
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.ath9k_htc_target_rate* %2, %struct.ath9k_htc_target_rate** %6, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %15, %struct.ath9k_htc_sta** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %21, align 8
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %22, i64 %31
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %32, align 8
  store %struct.ieee80211_supported_band* %33, %struct.ieee80211_supported_band** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %75, %3
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %40
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 2
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = sdiv i32 %62, 10
  %64 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %65 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %63, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %53, %40
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %81 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 8
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %219

89:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %126, %89
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 77
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %99, 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = srem i32 %104, 8
  %106 = shl i32 1, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %93
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %112 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %110, i32* %119, align 4
  br label %120

120:                                              ; preds = %109, %93
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @ATH_HTC_RATE_MAX, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %129

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %90

129:                                              ; preds = %124, %90
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %132 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 8
  %135 = load i32, i32* @WLAN_RC_HT_FLAG, align 4
  store i32 %135, i32* %9, align 4
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %129
  %144 = load i32, i32* @ATH_RC_TX_STBC_FLAG, align 4
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %143, %129
  %148 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i32, i32* @WLAN_RC_DS_FLAG, align 4
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %156, %147
  %161 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %162 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %160
  %169 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %170 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %169, i32 0, i32 0
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = call i64 @conf_is_ht40(%struct.TYPE_14__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i32, i32* @WLAN_RC_40_FLAG, align 4
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %175, %168, %160
  %180 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %181 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %180, i32 0, i32 0
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = call i64 @conf_is_ht40(%struct.TYPE_14__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %179
  %187 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %188 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load i32, i32* @WLAN_RC_SGI_FLAG, align 4
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  br label %218

198:                                              ; preds = %186, %179
  %199 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %200 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %199, i32 0, i32 0
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = call i64 @conf_is_ht20(%struct.TYPE_14__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %198
  %206 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %207 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load i32, i32* @WLAN_RC_SGI_FLAG, align 4
  %215 = load i32, i32* %9, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %213, %205, %198
  br label %218

218:                                              ; preds = %217, %194
  br label %219

219:                                              ; preds = %218, %78
  %220 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %7, align 8
  %221 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %224 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %226 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %225, i32 0, i32 0
  store i32 1, i32* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @cpu_to_be32(i32 %227)
  %229 = load %struct.ath9k_htc_target_rate*, %struct.ath9k_htc_target_rate** %6, align 8
  %230 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @conf_is_ht40(%struct.TYPE_14__*) #1

declare dso_local i64 @conf_is_ht20(%struct.TYPE_14__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
