; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_construct_chaninfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_construct_chaninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__, %struct.brcmf_pub* }
%struct.TYPE_2__ = type { i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i32, i64, i32, i32 }
%struct.brcmf_pub = type { i32 }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_chanspec_list = type { i32*, i32 }

@BRCMF_DCMD_MEDLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"chanspecs\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"get chanspecs error (%d)\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BRCMU_CHAN_BAND_2G = common dso_local global i64 0, align 8
@BRCMU_CHAN_BAND_5G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid channel Spec. 0x%x.\0A\00", align 1
@WLC_BW_40MHZ_BIT = common dso_local global i64 0, align 8
@WLC_BW_80MHZ_BIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Ignoring unexpected firmware channel %d\0A\00", align 1
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Firmware reported unsupported bandwidth %d\0A\00", align 1
@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"per_chan_info\00", align 1
@WL_CHAN_RADAR = common dso_local global i64 0, align 8
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@WL_CHAN_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, i64*)* @brcmf_construct_chaninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_construct_chaninfo(%struct.brcmf_cfg80211_info* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_if*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.brcmf_chanspec_list*, align 8
  %12 = alloca %struct.brcmu_chan, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store i64* %1, i64** %5, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %20 = call %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %19)
  store %struct.wiphy* %20, %struct.wiphy** %6, align 8
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %21, i32 0, i32 1
  %23 = load %struct.brcmf_pub*, %struct.brcmf_pub** %22, align 8
  store %struct.brcmf_pub* %23, %struct.brcmf_pub** %7, align 8
  %24 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %25 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %24, i32 0)
  store %struct.brcmf_if* %25, %struct.brcmf_if** %8, align 8
  %26 = load i32, i32* @BRCMF_DCMD_MEDLEN, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 %26, i32 %27)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %315

34:                                               ; preds = %2
  %35 = load i32*, i32** %14, align 8
  %36 = bitcast i32* %35 to %struct.brcmf_chanspec_list*
  store %struct.brcmf_chanspec_list* %36, %struct.brcmf_chanspec_list** %11, align 8
  %37 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* @BRCMF_DCMD_MEDLEN, align 4
  %40 = call i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @bphy_err(%struct.brcmf_pub* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %311

47:                                               ; preds = %34
  %48 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %49 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %48, i32 0, i32 0
  %50 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %49, align 8
  %51 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, i64 %51
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %52, align 8
  store %struct.ieee80211_supported_band* %53, %struct.ieee80211_supported_band** %9, align 8
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %55 = icmp ne %struct.ieee80211_supported_band* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %47
  store i64 0, i64* %15, align 8
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %65, i32 0, i32 2
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i64 %68
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %77 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %76, i32 0, i32 0
  %78 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %77, align 8
  %79 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %80 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %78, i64 %79
  %81 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %80, align 8
  store %struct.ieee80211_supported_band* %81, %struct.ieee80211_supported_band** %9, align 8
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %83 = icmp ne %struct.ieee80211_supported_band* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %75
  store i64 0, i64* %15, align 8
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %88 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %93 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %93, i32 0, i32 2
  %95 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %95, i64 %96
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i32 0, i32 0
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %91
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %15, align 8
  br label %85

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %75
  %104 = load %struct.brcmf_chanspec_list*, %struct.brcmf_chanspec_list** %11, align 8
  %105 = getelementptr inbounds %struct.brcmf_chanspec_list, %struct.brcmf_chanspec_list* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @le32_to_cpu(i32 %106)
  store i64 %107, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %108

108:                                              ; preds = %307, %103
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %17, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %310

112:                                              ; preds = %108
  %113 = load %struct.brcmf_chanspec_list*, %struct.brcmf_chanspec_list** %11, align 8
  %114 = getelementptr inbounds %struct.brcmf_chanspec_list, %struct.brcmf_chanspec_list* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le32_to_cpu(i32 %118)
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %123 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %124, align 8
  %126 = call i32 %125(%struct.brcmu_chan* %12)
  %127 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @BRCMU_CHAN_BAND_2G, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %112
  %132 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %133 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %132, i32 0, i32 0
  %134 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %133, align 8
  %135 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %136 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %134, i64 %135
  %137 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %136, align 8
  store %struct.ieee80211_supported_band* %137, %struct.ieee80211_supported_band** %9, align 8
  br label %156

138:                                              ; preds = %112
  %139 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @BRCMU_CHAN_BAND_5G, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %145 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %144, i32 0, i32 0
  %146 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %145, align 8
  %147 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %148 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %146, i64 %147
  %149 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %148, align 8
  store %struct.ieee80211_supported_band* %149, %struct.ieee80211_supported_band** %9, align 8
  br label %155

150:                                              ; preds = %138
  %151 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %152 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @bphy_err(%struct.brcmf_pub* %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %307

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %131
  %157 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %158 = icmp ne %struct.ieee80211_supported_band* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  br label %307

160:                                              ; preds = %156
  %161 = load i64*, i64** %5, align 8
  %162 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %163 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @WLC_BW_40MHZ_BIT, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 129
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %307

175:                                              ; preds = %170, %160
  %176 = load i64*, i64** %5, align 8
  %177 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %178 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @WLC_BW_80MHZ_BIT, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 128
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %307

190:                                              ; preds = %185, %175
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %10, align 8
  store i64 0, i64* %16, align 8
  br label %191

191:                                              ; preds = %215, %190
  %192 = load i64, i64* %16, align 8
  %193 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %194 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %197, label %218

197:                                              ; preds = %191
  %198 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %199 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %198, i32 0, i32 2
  %200 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %199, align 8
  %201 = load i64, i64* %16, align 8
  %202 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %200, i64 %201
  %203 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %197
  %209 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %210 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %209, i32 0, i32 2
  %211 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %210, align 8
  %212 = load i64, i64* %16, align 8
  %213 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %211, i64 %212
  store %struct.ieee80211_channel* %213, %struct.ieee80211_channel** %10, align 8
  br label %218

214:                                              ; preds = %197
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %16, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %16, align 8
  br label %191

218:                                              ; preds = %208, %191
  %219 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %220 = icmp ne %struct.ieee80211_channel* %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %223 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @bphy_err(%struct.brcmf_pub* %222, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %224)
  br label %307

226:                                              ; preds = %218
  %227 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %228 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  br label %307

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  switch i32 %236, label %254 [
    i32 131, label %237
    i32 128, label %244
    i32 129, label %251
    i32 130, label %259
  ]

237:                                              ; preds = %234
  %238 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %241 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %306

244:                                              ; preds = %234
  %245 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %246 = xor i32 %245, -1
  %247 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %248 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %306

251:                                              ; preds = %234
  %252 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %253 = call i32 @brcmf_update_bw40_channel_flag(%struct.ieee80211_channel* %252, %struct.brcmu_chan* %12)
  br label %306

254:                                              ; preds = %234
  %255 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %256 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @wiphy_warn(%struct.wiphy* %255, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %234, %254
  %260 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %261 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %266 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 4
  %267 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 2
  store i32 130, i32* %267, align 8
  %268 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %269 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %270, align 8
  %272 = call i32 %271(%struct.brcmu_chan* %12)
  %273 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %18, align 8
  %276 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %277 = call i32 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if* %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64* %18)
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %305, label %280

280:                                              ; preds = %259
  %281 = load i64, i64* %18, align 8
  %282 = load i64, i64* @WL_CHAN_RADAR, align 8
  %283 = and i64 %281, %282
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %287 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %290 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %285, %280
  %294 = load i64, i64* %18, align 8
  %295 = load i64, i64* @WL_CHAN_PASSIVE, align 8
  %296 = and i64 %294, %295
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  %299 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %300 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %301 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %298, %293
  br label %305

305:                                              ; preds = %304, %259
  br label %306

306:                                              ; preds = %305, %251, %244, %237
  br label %307

307:                                              ; preds = %306, %233, %221, %189, %174, %159, %150
  %308 = load i64, i64* %15, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %15, align 8
  br label %108

310:                                              ; preds = %108
  br label %311

311:                                              ; preds = %310, %43
  %312 = load i32*, i32** %14, align 8
  %313 = call i32 @kfree(i32* %312)
  %314 = load i32, i32* %13, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %311, %31
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if*, i8*, i32*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brcmf_update_bw40_channel_flag(%struct.ieee80211_channel*, %struct.brcmu_chan*) #1

declare dso_local i32 @wiphy_warn(%struct.wiphy*, i8*, i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if*, i8*, i64*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
