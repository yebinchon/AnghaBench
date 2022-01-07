; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.wiphy*, i32, %struct.brcmf_pub*, %struct.TYPE_11__, i32, i32 }
%struct.wiphy = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__**, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.brcmf_pub = type { %struct.brcmf_cfg80211_info*, %struct.wiphy* }
%struct.cfg80211_ops = type { i32 }
%struct.net_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.brcmf_cfg80211_vif = type { %struct.TYPE_7__, %struct.brcmf_if* }
%struct.brcmf_if = type { %struct.brcmf_cfg80211_vif* }
%struct.TYPE_12__ = type { %struct.net_device* }

@.str = private unnamed_addr constant [17 x i8] c"ndev is invalid\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate wiphy device\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to init iwm_priv (%d)\0A\00", align 1
@BRCMF_C_GET_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to get D11 version (%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Registering custom regulatory\0A\00", align 1
@brcmf_cfg80211_reg_notifier = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@brcmf_regdom = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Could not register wiphy device (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Setting wiphy bands failed (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"obss_coex\00", align 1
@BRCMF_OBSS_COEX_AUTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"FWEH activation failed (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"P2P initialisation failed (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"BT-coex initialisation failed (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"PNO initialisation failed (%d)\0A\00", align 1
@BRCMF_FEAT_TDLS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"tdls_enable\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"TDLS not enabled (%d)\0A\00", align 1
@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@BRCMF_E_TDLS_PEER_EVENT = common dso_local global i32 0, align 4
@brcmf_notify_tdls_peer_event = common dso_local global i32 0, align 4
@BRCMF_FEAT_SCAN_RANDOM_MAC = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@BRCMF_FEAT_WOWL_GTK = common dso_local global i32 0, align 4
@NL80211_FEATURE_ND_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_NET_DETECT = common dso_local global i32 0, align 4
@brcmf_cfg80211_set_rekey_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_cfg80211_info* @brcmf_cfg80211_attach(%struct.brcmf_pub* %0, %struct.cfg80211_ops* %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.cfg80211_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.brcmf_cfg80211_info*, align 8
  %11 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %12 = alloca %struct.brcmf_if*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %5, align 8
  store %struct.cfg80211_ops* %1, %struct.cfg80211_ops** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %16, i32 0, i32 1
  %18 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  store %struct.wiphy* %18, %struct.wiphy** %8, align 8
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %20 = call %struct.TYPE_12__* @brcmf_get_ifp(%struct.brcmf_pub* %19, i32 0)
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %9, align 8
  store i64 0, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %27 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.brcmf_cfg80211_info* null, %struct.brcmf_cfg80211_info** %4, align 8
  br label %312

28:                                               ; preds = %3
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.brcmf_cfg80211_info* @kzalloc(i32 40, i32 %29)
  store %struct.brcmf_cfg80211_info* %30, %struct.brcmf_cfg80211_info** %10, align 8
  %31 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %32 = icmp ne %struct.brcmf_cfg80211_info* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %35 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.brcmf_cfg80211_info* null, %struct.brcmf_cfg80211_info** %4, align 8
  br label %312

36:                                               ; preds = %28
  %37 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %38 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %39 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %38, i32 0, i32 0
  store %struct.wiphy* %37, %struct.wiphy** %39, align 8
  %40 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %41 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %41, i32 0, i32 2
  store %struct.brcmf_pub* %40, %struct.brcmf_pub** %42, align 8
  %43 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %43, i32 0, i32 5
  %45 = call i32 @init_vif_event(i32* %44)
  %46 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %47 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %46, i32 0, i32 4
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %50 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %51 = call %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.brcmf_cfg80211_info* %49, i32 %50)
  store %struct.brcmf_cfg80211_vif* %51, %struct.brcmf_cfg80211_vif** %11, align 8
  %52 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %53 = call i64 @IS_ERR(%struct.brcmf_cfg80211_vif* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %307

56:                                               ; preds = %36
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %57)
  store %struct.brcmf_if* %58, %struct.brcmf_if** %12, align 8
  %59 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %60 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %61 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %60, i32 0, i32 1
  store %struct.brcmf_if* %59, %struct.brcmf_if** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.net_device* %62, %struct.net_device** %65, align 8
  %66 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %67 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %66, i32 0, i32 0
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %72 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %71, i32 0, i32 0
  %73 = load %struct.wiphy*, %struct.wiphy** %72, align 8
  %74 = call i32 @wiphy_dev(%struct.wiphy* %73)
  %75 = call i32 @SET_NETDEV_DEV(%struct.net_device* %70, i32 %74)
  %76 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %77 = call i64 @wl_init_priv(%struct.brcmf_cfg80211_info* %76)
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %56
  %81 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %85 = call i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif* %84)
  br label %307

86:                                               ; preds = %56
  %87 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %88 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %89 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %88, i32 0, i32 0
  store %struct.brcmf_cfg80211_vif* %87, %struct.brcmf_cfg80211_vif** %89, align 8
  %90 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %91 = load i32, i32* @BRCMF_C_GET_VERSION, align 4
  %92 = call i64 @brcmf_fil_cmd_int_get(%struct.brcmf_if* %90, i32 %91, i64* %14)
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  br label %300

99:                                               ; preds = %86
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %102 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %105 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %104, i32 0, i32 3
  %106 = call i32 @brcmu_d11_attach(%struct.TYPE_11__* %105)
  %107 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %108 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %109 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %108, i32 0, i32 0
  store %struct.brcmf_cfg80211_info* %107, %struct.brcmf_cfg80211_info** %109, align 8
  %110 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %111 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %112 = call i64 @brcmf_setup_wiphy(%struct.wiphy* %110, %struct.brcmf_if* %111)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %300

116:                                              ; preds = %99
  %117 = load i32, i32* @INFO, align 4
  %118 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @brcmf_cfg80211_reg_notifier, align 4
  %120 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %121 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %123 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %124 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %128 = call i32 @wiphy_apply_custom_regulatory(%struct.wiphy* %127, i32* @brcmf_regdom)
  %129 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %130 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %129, i32 0, i32 3
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %130, align 8
  %132 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %131, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %116
  %137 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %138 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %138, align 8
  %140 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %139, i64 %140
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32* %144, i32** %15, align 8
  %145 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %136, %116
  %150 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %151 = call i64 @wiphy_register(%struct.wiphy* %150)
  store i64 %151, i64* %13, align 8
  %152 = load i64, i64* %13, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %156 = load i64, i64* %13, align 8
  %157 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %156)
  br label %300

158:                                              ; preds = %149
  %159 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %160 = call i64 @brcmf_setup_wiphybands(%struct.brcmf_cfg80211_info* %159)
  store i64 %160, i64* %13, align 8
  %161 = load i64, i64* %13, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %165 = load i64, i64* %13, align 8
  %166 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %165)
  br label %295

167:                                              ; preds = %158
  %168 = load i32*, i32** %15, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %178 = call i64 @brcmf_enable_bw40_2g(%struct.brcmf_cfg80211_info* %177)
  store i64 %178, i64* %13, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %183 = load i32, i32* @BRCMF_OBSS_COEX_AUTO, align 4
  %184 = call i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  store i64 %184, i64* %13, align 8
  br label %191

185:                                              ; preds = %176
  %186 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %187 = xor i32 %186, -1
  %188 = load i32*, i32** %15, align 8
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %187
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %181
  br label %192

192:                                              ; preds = %191, %170, %167
  %193 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %194 = call i64 @brcmf_fweh_activate_events(%struct.brcmf_if* %193)
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %199 = load i64, i64* %13, align 8
  %200 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %199)
  br label %295

201:                                              ; preds = %192
  %202 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i64 @brcmf_p2p_attach(%struct.brcmf_cfg80211_info* %202, i32 %203)
  store i64 %204, i64* %13, align 8
  %205 = load i64, i64* %13, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %209 = load i64, i64* %13, align 8
  %210 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %209)
  br label %295

211:                                              ; preds = %201
  %212 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %213 = call i64 @brcmf_btcoex_attach(%struct.brcmf_cfg80211_info* %212)
  store i64 %213, i64* %13, align 8
  %214 = load i64, i64* %13, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %218 = load i64, i64* %13, align 8
  %219 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i64 %218)
  %220 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %221 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %220, i32 0, i32 1
  %222 = call i32 @brcmf_p2p_detach(i32* %221)
  br label %295

223:                                              ; preds = %211
  %224 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %225 = call i64 @brcmf_pno_attach(%struct.brcmf_cfg80211_info* %224)
  store i64 %225, i64* %13, align 8
  %226 = load i64, i64* %13, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %230 = load i64, i64* %13, align 8
  %231 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %230)
  %232 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %233 = call i32 @brcmf_btcoex_detach(%struct.brcmf_cfg80211_info* %232)
  %234 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %235 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %234, i32 0, i32 1
  %236 = call i32 @brcmf_p2p_detach(i32* %235)
  br label %295

237:                                              ; preds = %223
  %238 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %239 = load i32, i32* @BRCMF_FEAT_TDLS, align 4
  %240 = call i64 @brcmf_feat_is_enabled(%struct.brcmf_if* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %265

242:                                              ; preds = %237
  %243 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %244 = call i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 1)
  store i64 %244, i64* %13, align 8
  %245 = load i64, i64* %13, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %242
  %248 = load i32, i32* @INFO, align 4
  %249 = load i64, i64* %13, align 8
  %250 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 %249)
  %251 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %252 = xor i32 %251, -1
  %253 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %254 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 8
  br label %264

257:                                              ; preds = %242
  %258 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %259 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %258, i32 0, i32 2
  %260 = load %struct.brcmf_pub*, %struct.brcmf_pub** %259, align 8
  %261 = load i32, i32* @BRCMF_E_TDLS_PEER_EVENT, align 4
  %262 = load i32, i32* @brcmf_notify_tdls_peer_event, align 4
  %263 = call i32 @brcmf_fweh_register(%struct.brcmf_pub* %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %257, %247
  br label %265

265:                                              ; preds = %264, %237
  %266 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %267 = call i64 @brcmf_fweh_activate_events(%struct.brcmf_if* %266)
  store i64 %267, i64* %13, align 8
  %268 = load i64, i64* %13, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %272 = load i64, i64* %13, align 8
  %273 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %271, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %272)
  br label %287

274:                                              ; preds = %265
  %275 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %276 = load i32, i32* @BRCMF_FEAT_SCAN_RANDOM_MAC, align 4
  %277 = call i64 @brcmf_feat_is_enabled(%struct.brcmf_if* %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = load i32, i32* @NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, align 4
  %281 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %282 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %285

285:                                              ; preds = %279, %274
  %286 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  store %struct.brcmf_cfg80211_info* %286, %struct.brcmf_cfg80211_info** %4, align 8
  br label %312

287:                                              ; preds = %270
  %288 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %289 = call i32 @brcmf_pno_detach(%struct.brcmf_cfg80211_info* %288)
  %290 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %291 = call i32 @brcmf_btcoex_detach(%struct.brcmf_cfg80211_info* %290)
  %292 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %293 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %292, i32 0, i32 1
  %294 = call i32 @brcmf_p2p_detach(i32* %293)
  br label %295

295:                                              ; preds = %287, %228, %216, %207, %197, %163
  %296 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %297 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %296, i32 0, i32 0
  %298 = load %struct.wiphy*, %struct.wiphy** %297, align 8
  %299 = call i32 @wiphy_unregister(%struct.wiphy* %298)
  br label %300

300:                                              ; preds = %295, %154, %115, %95
  %301 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %302 = call i32 @wl_deinit_priv(%struct.brcmf_cfg80211_info* %301)
  %303 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %304 = call i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif* %303)
  %305 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %306 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %305, i32 0, i32 0
  store %struct.brcmf_cfg80211_vif* null, %struct.brcmf_cfg80211_vif** %306, align 8
  br label %307

307:                                              ; preds = %300, %80, %55
  %308 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %309 = call i32 @brcmf_free_wiphy(%struct.wiphy* %308)
  %310 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %311 = call i32 @kfree(%struct.brcmf_cfg80211_info* %310)
  store %struct.brcmf_cfg80211_info* null, %struct.brcmf_cfg80211_info** %4, align 8
  br label %312

312:                                              ; preds = %307, %285, %33, %25
  %313 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  ret %struct.brcmf_cfg80211_info* %313
}

declare dso_local %struct.TYPE_12__* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local %struct.brcmf_cfg80211_info* @kzalloc(i32, i32) #1

declare dso_local i32 @init_vif_event(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.brcmf_cfg80211_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_cfg80211_vif*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_dev(%struct.wiphy*) #1

declare dso_local i64 @wl_init_priv(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif*) #1

declare dso_local i64 @brcmf_fil_cmd_int_get(%struct.brcmf_if*, i32, i64*) #1

declare dso_local i32 @brcmu_d11_attach(%struct.TYPE_11__*) #1

declare dso_local i64 @brcmf_setup_wiphy(%struct.wiphy*, %struct.brcmf_if*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @wiphy_apply_custom_regulatory(%struct.wiphy*, i32*) #1

declare dso_local i64 @wiphy_register(%struct.wiphy*) #1

declare dso_local i64 @brcmf_setup_wiphybands(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_enable_bw40_2g(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i64 @brcmf_fweh_activate_events(%struct.brcmf_if*) #1

declare dso_local i64 @brcmf_p2p_attach(%struct.brcmf_cfg80211_info*, i32) #1

declare dso_local i64 @brcmf_btcoex_attach(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_p2p_detach(i32*) #1

declare dso_local i64 @brcmf_pno_attach(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_btcoex_detach(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_feat_is_enabled(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_fweh_register(%struct.brcmf_pub*, i32, i32) #1

declare dso_local i32 @brcmf_pno_detach(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @wiphy_unregister(%struct.wiphy*) #1

declare dso_local i32 @wl_deinit_priv(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_free_wiphy(%struct.wiphy*) #1

declare dso_local i32 @kfree(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
