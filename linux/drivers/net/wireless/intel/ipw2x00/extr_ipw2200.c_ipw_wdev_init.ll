; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipw_priv = type { %struct.TYPE_8__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { %struct.ieee80211_supported_band, %struct.ieee80211_supported_band, %struct.wireless_dev }
%struct.ieee80211_supported_band = type { i64, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.wireless_dev = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.ieee80211_supported_band**, i32 }
%struct.libipw_geo = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIBIPW_CH_PASSIVE_ONLY = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@LIBIPW_CH_NO_IBSS = common dso_local global i32 0, align 4
@LIBIPW_CH_RADAR_DETECT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@ipw2200_bg_rates = common dso_local global i32 0, align 4
@ipw2200_num_bg_rates = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ipw2200_a_rates = common dso_local global i32 0, align 4
@ipw2200_num_a_rates = common dso_local global i32 0, align 4
@ipw_cipher_suites = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipw_wdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wdev_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca %struct.libipw_geo*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw_priv* %11, %struct.ipw_priv** %5, align 8
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = call %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_13__* %14)
  store %struct.libipw_geo* %15, %struct.libipw_geo** %6, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  store %struct.wireless_dev* %19, %struct.wireless_dev** %7, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i32 %24, i32 %27, i32 %28)
  %30 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %31 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %210

34:                                               ; preds = %1
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  store %struct.ieee80211_supported_band* %38, %struct.ieee80211_supported_band** %8, align 8
  %39 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %43 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %48 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kcalloc(i32 %49, i32 4, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_11__*
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %53, i32 0, i32 4
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  %55 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %55, i32 0, i32 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %34
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %420

62:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %192, %62
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %66 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %195

69:                                               ; preds = %63
  %70 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  %78 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %79 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %78, i32 0, i32 3
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  store i32 %85, i32* %92, align 4
  %93 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %94 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %93, i32 0, i32 3
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %101, i32 0, i32 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %100, i32* %107, align 8
  %108 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %109 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %108, i32 0, i32 3
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %116, i32 0, i32 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i32 %115, i32* %122, align 4
  %123 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %124 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %123, i32 0, i32 3
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %69
  %135 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %136 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %136, i32 0, i32 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %135
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %134, %69
  %146 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %147 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %146, i32 0, i32 3
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @LIBIPW_CH_NO_IBSS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %145
  %158 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %159 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %159, i32 0, i32 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %158
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %157, %145
  %169 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %170 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %169, i32 0, i32 3
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %168
  %181 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %182 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %183 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %182, i32 0, i32 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %181
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %180, %168
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %3, align 4
  br label %63

195:                                              ; preds = %63
  %196 = load i32, i32* @ipw2200_bg_rates, align 4
  %197 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %198 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @ipw2200_num_bg_rates, align 4
  %200 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %203 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %204 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %203, i32 0, i32 0
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %206, align 8
  %208 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %209 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %207, i64 %208
  store %struct.ieee80211_supported_band* %202, %struct.ieee80211_supported_band** %209, align 8
  br label %210

210:                                              ; preds = %195, %1
  %211 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %212 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %391

215:                                              ; preds = %210
  %216 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %217 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %216, i32 0, i32 1
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  store %struct.ieee80211_supported_band* %219, %struct.ieee80211_supported_band** %9, align 8
  %220 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %221 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %222 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  %223 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %224 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %227 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 8
  %228 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %229 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @GFP_KERNEL, align 4
  %232 = call i8* @kcalloc(i32 %230, i32 4, i32 %231)
  %233 = bitcast i8* %232 to %struct.TYPE_11__*
  %234 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %235 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %234, i32 0, i32 4
  store %struct.TYPE_11__* %233, %struct.TYPE_11__** %235, align 8
  %236 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %237 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %236, i32 0, i32 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = icmp ne %struct.TYPE_11__* %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %215
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %420

243:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %373, %243
  %245 = load i32, i32* %3, align 4
  %246 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %247 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %376

250:                                              ; preds = %244
  %251 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %252 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %253 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %252, i32 0, i32 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = load i32, i32* %3, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  store i64 %251, i64* %258, align 8
  %259 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %260 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %259, i32 0, i32 2
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %268 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %267, i32 0, i32 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  %270 = load i32, i32* %3, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 4
  store i32 %266, i32* %273, align 4
  %274 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %275 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %274, i32 0, i32 2
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %275, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %283 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %282, i32 0, i32 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 3
  store i32 %281, i32* %288, align 8
  %289 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %290 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %289, i32 0, i32 2
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %298 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %297, i32 0, i32 4
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %298, align 8
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  store i32 %296, i32* %303, align 4
  %304 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %305 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %304, i32 0, i32 2
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %250
  %316 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %317 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %318 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %317, i32 0, i32 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = load i32, i32* %3, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, %316
  store i32 %325, i32* %323, align 8
  br label %326

326:                                              ; preds = %315, %250
  %327 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %328 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %327, i32 0, i32 2
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %328, align 8
  %330 = load i32, i32* %3, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @LIBIPW_CH_NO_IBSS, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %326
  %339 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %340 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %341 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %340, i32 0, i32 4
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %341, align 8
  %343 = load i32, i32* %3, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = or i32 %347, %339
  store i32 %348, i32* %346, align 8
  br label %349

349:                                              ; preds = %338, %326
  %350 = load %struct.libipw_geo*, %struct.libipw_geo** %6, align 8
  %351 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %350, i32 0, i32 2
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = load i32, i32* %3, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %372

361:                                              ; preds = %349
  %362 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %363 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %364 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %363, i32 0, i32 4
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %364, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = or i32 %370, %362
  store i32 %371, i32* %369, align 8
  br label %372

372:                                              ; preds = %361, %349
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %3, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %3, align 4
  br label %244

376:                                              ; preds = %244
  %377 = load i32, i32* @ipw2200_a_rates, align 4
  %378 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %379 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %378, i32 0, i32 3
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* @ipw2200_num_a_rates, align 4
  %381 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %382 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %381, i32 0, i32 2
  store i32 %380, i32* %382, align 4
  %383 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %384 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %385 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %384, i32 0, i32 0
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 2
  %388 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %387, align 8
  %389 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %390 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %388, i64 %389
  store %struct.ieee80211_supported_band* %383, %struct.ieee80211_supported_band** %390, align 8
  br label %391

391:                                              ; preds = %376, %210
  %392 = load i32, i32* @ipw_cipher_suites, align 4
  %393 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %394 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %393, i32 0, i32 0
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 1
  store i32 %392, i32* %396, align 4
  %397 = load i32, i32* @ipw_cipher_suites, align 4
  %398 = call i32 @ARRAY_SIZE(i32 %397)
  %399 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %400 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %399, i32 0, i32 0
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 0
  store i32 %398, i32* %402, align 8
  %403 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %404 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %403, i32 0, i32 0
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %404, align 8
  %406 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %407 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %406, i32 0, i32 0
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  %410 = call i32 @set_wiphy_dev(%struct.TYPE_12__* %405, i32* %409)
  %411 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %412 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %411, i32 0, i32 0
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %412, align 8
  %414 = call i64 @wiphy_register(%struct.TYPE_12__* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %391
  %417 = load i32, i32* @EIO, align 4
  %418 = sub nsw i32 0, %417
  store i32 %418, i32* %4, align 4
  br label %419

419:                                              ; preds = %416, %391
  br label %420

420:                                              ; preds = %419, %240, %59
  %421 = load i32, i32* %4, align 4
  ret i32 %421
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @set_wiphy_dev(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @wiphy_register(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
