; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.ath6kl = type { i32, %struct.wiphy*, i32, %struct.TYPE_8__, i64, i32 }
%struct.wiphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, %struct.TYPE_9__**, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@ath6kl_mgmt_stypes = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@CONFIG_ATH6KL_REGDOMAIN = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_REGDOMAIN = common dso_local global i32 0, align 4
@ath6kl_cfg80211_reg_notify = common dso_local global i32 0, align 4
@NL80211_FEATURE_CELL_BASE_REG_HINTS = common dso_local global i32 0, align 4
@MAX_PROBED_SSIDS = common dso_local global i8* null, align 8
@ATH6KL_FW_CAPABILITY_SCHED_SCAN_MATCH_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid phy capability!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_RSN_CAP_OVERRIDE = common dso_local global i32 0, align 4
@ath6kl_band_2ghz = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ath6kl_band_5ghz = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Firmware lacks RSN-CAP-OVERRIDE, so HT (802.11n) is disabled.\00", align 1
@ATH6KL_FW_CAPABILITY_64BIT_RATES = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@cipher_suites = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_FW_ROAM = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAVE_AP_SME = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_SCHED_SCAN_V2 = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_INACTIVITY_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_FEATURE_INACTIVITY_TIMER = common dso_local global i32 0, align 4
@NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS = common dso_local global i32 0, align 4
@NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS2 = common dso_local global i32 0, align 4
@NL80211_PROBE_RESP_OFFLOAD_SUPPORT_P2P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't register wiphy device\0A\00", align 1
@ath6kl_wowlan_support = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_cfg80211_init(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %9 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %10 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %9, i32 0, i32 1
  %11 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  store %struct.wiphy* %11, %struct.wiphy** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @ath6kl_mgmt_stypes, align 4
  %13 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %14 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %13, i32 0, i32 18
  store i32 %12, i32* %14, align 4
  %15 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 0
  store i32 5000, i32* %16, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %18 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @set_wiphy_dev(%struct.wiphy* %17, i32 %20)
  %22 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = or i32 %26, %28
  %30 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %31 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  %42 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %43 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %1
  %47 = load i32, i32* @CONFIG_ATH6KL_REGDOMAIN, align 4
  %48 = call i64 @IS_ENABLED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* @ATH6KL_FW_CAPABILITY_REGDOMAIN, align 4
  %52 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %53 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @test_bit(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load i32, i32* @ath6kl_cfg80211_reg_notify, align 4
  %59 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %60 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %59, i32 0, i32 17
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @NL80211_FEATURE_CELL_BASE_REG_HINTS, align 4
  %62 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %63 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %62, i32 0, i32 1
  %64 = load %struct.wiphy*, %struct.wiphy** %63, align 8
  %65 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %57, %50, %46
  %69 = load i8*, i8** @MAX_PROBED_SSIDS, align 8
  %70 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %71 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %70, i32 0, i32 16
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @ATH6KL_FW_CAPABILITY_SCHED_SCAN_MATCH_LIST, align 4
  %73 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @test_bit(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** @MAX_PROBED_SSIDS, align 8
  %80 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %81 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %80, i32 0, i32 15
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %68
  %83 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %84 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %83, i32 0, i32 2
  store i32 1000, i32* %84, align 8
  %85 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %86 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %95 [
    i32 131, label %89
    i32 130, label %90
    i32 129, label %91
    i32 128, label %92
    i32 133, label %93
    i32 132, label %94
  ]

89:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %82, %89
  store i32 1, i32* %6, align 4
  br label %99

91:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %82, %91
  store i32 1, i32* %5, align 4
  br label %99

93:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %82, %93
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %99

95:                                               ; preds = %82
  %96 = call i32 @ath6kl_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %251

99:                                               ; preds = %94, %92, %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* @ATH6KL_FW_CAPABILITY_RSN_CAP_OVERRIDE, align 4
  %104 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %105 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @test_bit(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %102, %99
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_2ghz, i32 0, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_2ghz, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_5ghz, i32 0, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_5ghz, i32 0, i32 0, i32 0), align 8
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 @ath6kl_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i32, i32* @ATH6KL_FW_CAPABILITY_64BIT_RATES, align 4
  %117 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %118 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @test_bit(i32 %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %115
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_2ghz, i32 0, i32 0, i32 1, i32 0), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 255, i32* %124, align 4
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_5ghz, i32 0, i32 0, i32 1, i32 0), align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 255, i32* %126, align 4
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_2ghz, i32 0, i32 0, i32 1, i32 0), align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 255, i32* %128, align 4
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_5ghz, i32 0, i32 0, i32 1, i32 0), align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 255, i32* %130, align 4
  %131 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %132 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 3, i32* %133, align 4
  %134 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %135 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32 3, i32* %136, align 4
  br label %148

137:                                              ; preds = %115
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_2ghz, i32 0, i32 0, i32 1, i32 0), align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 255, i32* %139, align 4
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ath6kl_band_5ghz, i32 0, i32 0, i32 1, i32 0), align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 255, i32* %141, align 4
  %142 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %143 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %146 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %122
  %149 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %150 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %154 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %156 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %160 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %148
  %164 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %165 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %164, i32 0, i32 14
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %165, align 8
  %167 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %166, i64 %167
  store %struct.TYPE_9__* @ath6kl_band_2ghz, %struct.TYPE_9__** %168, align 8
  br label %169

169:                                              ; preds = %163, %148
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %174 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %173, i32 0, i32 14
  %175 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %174, align 8
  %176 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %175, i64 %176
  store %struct.TYPE_9__* @ath6kl_band_5ghz, %struct.TYPE_9__** %177, align 8
  br label %178

178:                                              ; preds = %172, %169
  %179 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %180 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %181 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %180, i32 0, i32 13
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @cipher_suites, align 4
  %183 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %184 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %183, i32 0, i32 12
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @cipher_suites, align 4
  %186 = call i32 @ARRAY_SIZE(i32 %185)
  %187 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %188 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %187, i32 0, i32 11
  store i32 %186, i32* %188, align 8
  %189 = load i8*, i8** @MAX_PROBED_SSIDS, align 8
  %190 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %191 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %190, i32 0, i32 9
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* @WIPHY_FLAG_SUPPORTS_FW_ROAM, align 4
  %193 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %200 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %199, i32 0, i32 1
  %201 = load %struct.wiphy*, %struct.wiphy** %200, align 8
  %202 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %198
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* @ATH6KL_FW_CAPABILITY_SCHED_SCAN_V2, align 4
  %206 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %207 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @test_bit(i32 %205, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %178
  %212 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %213 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %212, i32 0, i32 1
  %214 = load %struct.wiphy*, %struct.wiphy** %213, align 8
  %215 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %214, i32 0, i32 6
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %211, %178
  %217 = load i32, i32* @ATH6KL_FW_CAPABILITY_INACTIVITY_TIMEOUT, align 4
  %218 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %219 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @test_bit(i32 %217, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %216
  %224 = load i32, i32* @NL80211_FEATURE_INACTIVITY_TIMER, align 4
  %225 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %226 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %225, i32 0, i32 1
  %227 = load %struct.wiphy*, %struct.wiphy** %226, align 8
  %228 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %224
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %223, %216
  %232 = load i32, i32* @NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS, align 4
  %233 = load i32, i32* @NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS2, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @NL80211_PROBE_RESP_OFFLOAD_SUPPORT_P2P, align 4
  %236 = or i32 %234, %235
  %237 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %238 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %237, i32 0, i32 1
  %239 = load %struct.wiphy*, %struct.wiphy** %238, align 8
  %240 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %239, i32 0, i32 7
  store i32 %236, i32* %240, align 4
  %241 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %242 = call i32 @wiphy_register(%struct.wiphy* %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %231
  %246 = call i32 @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %2, align 4
  br label %251

248:                                              ; preds = %231
  %249 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %250 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %248, %245, %95
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @set_wiphy_dev(%struct.wiphy*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wiphy_register(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
