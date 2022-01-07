; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_17__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_19__, i32, i64 }
%struct.TYPE_19__ = type { i32*, i32, i32 }
%struct.ieee80211_bss_conf = type { i32, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.ath10k_vif = type { i32, i64, i64, i64, i32, %struct.ieee80211_vif*, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mac vdev %d beacon_interval %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to set beacon interval for vdev %d: %i\0A\00", align 1
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"vdev %d set beacon tx mode to staggered\0A\00", align 1
@WMI_BEACON_STAGGERED_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to set beacon mode for vdev %d: %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to update beacon template: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@BSS_CHANGED_AP_PROBE_RESP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"failed to setup probe resp template on vdev %i: %d\0A\00", align 1
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"mac vdev %d dtim_period %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"failed to set dtim period for vdev %d: %i\0A\00", align 1
@BSS_CHANGED_SSID = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_FTM_RESPONDER = common dso_local global i32 0, align 4
@WMI_SERVICE_RTT_RESPONDER_ROLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"mac vdev %d ftm_responder %d:ret %d\0A\00", align 1
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"failed to recalculate rts/cts prot for vdev %d: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"failed to set cts protection for vdev %d: %d\0A\00", align 1
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@WMI_VDEV_SLOT_TIME_SHORT = common dso_local global i32 0, align 4
@WMI_VDEV_SLOT_TIME_LONG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"mac vdev %d slot_time %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"failed to set erp slot for vdev %d: %i\0A\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@WMI_VDEV_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@WMI_VDEV_PREAMBLE_LONG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"mac vdev %d preamble %dn\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"failed to set preamble for vdev %d: %i\0A\00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"mac vdev_id %i txpower %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to recalc tx power: %d\0A\00", align 1
@BSS_CHANGED_PS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"failed to setup ps on vdev %i: %d\0A\00", align 1
@BSS_CHANGED_MCAST_RATE = common dso_local global i32 0, align 4
@WHAL_WLAN_11A_CAPABILITY = common dso_local global i32 0, align 4
@ATH10K_MAC_FIRST_OFDM_RATE_IDX = common dso_local global i64 0, align 8
@ath10k_wmi_legacy_rates = common dso_local global %struct.TYPE_13__* null, align 8
@WMI_RATE_PREAMBLE_CCK = common dso_local global i32 0, align 4
@WMI_RATE_PREAMBLE_OFDM = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"mac vdev %d mcast_rate %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"failed to set mcast rate on vdev %i: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"failed to set bcast rate on vdev %i: %d\0A\00", align 1
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"bitrate not supported %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"failed to set mgmt tx rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath10k_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca %struct.ath10k_vif*, align 8
  %11 = alloca %struct.cfg80211_chan_def, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  %28 = load %struct.ath10k*, %struct.ath10k** %27, align 8
  store %struct.ath10k* %28, %struct.ath10k** %9, align 8
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %33, %struct.ath10k_vif** %10, align 8
  store i32 0, i32* %21, align 4
  %34 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %43 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ath10k_control_ibss(%struct.ath10k_vif* %42, %struct.ieee80211_bss_conf* %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %48
  %54 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %58 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %60 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %66 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %67 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %71 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %65, i32 %68, i32 %69, i32 %72)
  store i32 %73, i32* %21, align 4
  %74 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %75 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %76 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %77 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %80 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %74, i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load i32, i32* %21, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %53
  %86 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %87 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %88 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %21, align 4
  %91 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %53
  br label %93

93:                                               ; preds = %92, %48
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %149

98:                                               ; preds = %93
  %99 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %100 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %101 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %102 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %99, i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %106 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %13, align 4
  %111 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @WMI_BEACON_STAGGERED_MODE, align 4
  %114 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %111, i32 %112, i32 %113)
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %98
  %118 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %119 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %120 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %21, align 4
  %123 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %98
  %125 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %126 = call i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif* %125)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %131 = load i32, i32* %21, align 4
  %132 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %135 = call i64 @ieee80211_vif_is_mesh(%struct.ieee80211_vif* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %139 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @strncpy(i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %144 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %145 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i32 4, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %133
  br label %149

149:                                              ; preds = %148, %93
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @BSS_CHANGED_AP_PROBE_RESP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %156 = call i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif* %155)
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %161 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %162 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %21, align 4
  %165 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %160, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %159, %154
  br label %167

167:                                              ; preds = %166, %149
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %170 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %215

174:                                              ; preds = %167
  %175 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %179 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %181 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %182 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %183 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %186 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %180, i32 %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %184, i64 %187)
  %189 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %190 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %12, align 4
  %195 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %196 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %197 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %201 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %195, i32 %198, i32 %199, i32 %203)
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %174
  %208 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %209 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %210 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %21, align 4
  %213 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %208, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %207, %174
  br label %215

215:                                              ; preds = %214, %167
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @BSS_CHANGED_SSID, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %259

220:                                              ; preds = %215
  %221 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %222 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %259

226:                                              ; preds = %220
  %227 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %228 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %231 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  store i32 %229, i32* %233, align 4
  %234 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %235 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %226
  %239 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %240 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %239, i32 0, i32 9
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %245 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %244, i32 0, i32 11
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %248 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @memcpy(i32 %243, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %238, %226
  %252 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %253 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %256 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %255, i32 0, i32 9
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  store i32 %254, i32* %258, align 4
  br label %259

259:                                              ; preds = %251, %220, %215
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %259
  %265 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %266 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @is_zero_ether_addr(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %264
  %271 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %272 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %275 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ether_addr_copy(i32 %273, i32 %276)
  br label %278

278:                                              ; preds = %270, %264, %259
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @BSS_CHANGED_FTM_RESPONDER, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %331

283:                                              ; preds = %278
  %284 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %285 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %288 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %286, %289
  br i1 %290, label %291, label %331

291:                                              ; preds = %283
  %292 = load i32, i32* @WMI_SERVICE_RTT_RESPONDER_ROLE, align 4
  %293 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %294 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = call i64 @test_bit(i32 %292, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %331

299:                                              ; preds = %291
  %300 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %301 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %304 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %303, i32 0, i32 2
  store i64 %302, i64* %304, align 8
  %305 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %306 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %12, align 4
  %311 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %312 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %313 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %12, align 4
  %316 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %317 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %311, i32 %314, i32 %315, i32 %319)
  store i32 %320, i32* %21, align 4
  %321 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %322 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %323 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %324 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %327 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* %21, align 4
  %330 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %321, i32 %322, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %325, i64 %328, i32 %329)
  br label %331

331:                                              ; preds = %299, %291, %283, %278
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %331
  %337 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %338 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %339 = call i32 @ath10k_control_beaconing(%struct.ath10k_vif* %337, %struct.ieee80211_bss_conf* %338)
  br label %340

340:                                              ; preds = %336, %331
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %380

345:                                              ; preds = %340
  %346 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %347 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %350 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %349, i32 0, i32 7
  store i32 %348, i32* %350, align 4
  %351 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %352 = call i32 @ath10k_recalc_rtscts_prot(%struct.ath10k_vif* %351)
  store i32 %352, i32* %21, align 4
  %353 = load i32, i32* %21, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %345
  %356 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %357 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %358 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* %21, align 4
  %361 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %356, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %355, %345
  %363 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %364 = call i64 @ath10k_mac_can_set_cts_prot(%struct.ath10k_vif* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %379

366:                                              ; preds = %362
  %367 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %368 = call i32 @ath10k_mac_set_cts_prot(%struct.ath10k_vif* %367)
  store i32 %368, i32* %21, align 4
  %369 = load i32, i32* %21, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %366
  %372 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %373 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %374 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %21, align 4
  %377 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %372, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %371, %366
  br label %379

379:                                              ; preds = %378, %362
  br label %380

380:                                              ; preds = %379, %340
  %381 = load i32, i32* %8, align 4
  %382 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %425

385:                                              ; preds = %380
  %386 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %387 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %386, i32 0, i32 7
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = load i32, i32* @WMI_VDEV_SLOT_TIME_SHORT, align 4
  store i32 %391, i32* %14, align 4
  br label %394

392:                                              ; preds = %385
  %393 = load i32, i32* @WMI_VDEV_SLOT_TIME_LONG, align 4
  store i32 %393, i32* %14, align 4
  br label %394

394:                                              ; preds = %392, %390
  %395 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %396 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %397 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %398 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %14, align 4
  %401 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %395, i32 %396, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %399, i32 %400)
  %402 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %403 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %12, align 4
  %408 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %409 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %410 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %12, align 4
  %413 = load i32, i32* %14, align 4
  %414 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %408, i32 %411, i32 %412, i32 %413)
  store i32 %414, i32* %21, align 4
  %415 = load i32, i32* %21, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %394
  %418 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %419 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %420 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* %21, align 4
  %423 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %418, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %421, i32 %422)
  br label %424

424:                                              ; preds = %417, %394
  br label %425

425:                                              ; preds = %424, %380
  %426 = load i32, i32* %8, align 4
  %427 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %470

430:                                              ; preds = %425
  %431 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %432 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %431, i32 0, i32 6
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %430
  %436 = load i32, i32* @WMI_VDEV_PREAMBLE_SHORT, align 4
  store i32 %436, i32* %15, align 4
  br label %439

437:                                              ; preds = %430
  %438 = load i32, i32* @WMI_VDEV_PREAMBLE_LONG, align 4
  store i32 %438, i32* %15, align 4
  br label %439

439:                                              ; preds = %437, %435
  %440 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %441 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %442 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %443 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* %15, align 4
  %446 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %440, i32 %441, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %444, i32 %445)
  %447 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %448 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 4
  store i32 %452, i32* %12, align 4
  %453 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %454 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %455 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %12, align 4
  %458 = load i32, i32* %15, align 4
  %459 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %453, i32 %456, i32 %457, i32 %458)
  store i32 %459, i32* %21, align 4
  %460 = load i32, i32* %21, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %439
  %463 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %464 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %465 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %464, i32 0, i32 4
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %21, align 4
  %468 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %463, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %466, i32 %467)
  br label %469

469:                                              ; preds = %462, %439
  br label %470

470:                                              ; preds = %469, %425
  %471 = load i32, i32* %8, align 4
  %472 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %500

475:                                              ; preds = %470
  %476 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %477 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %476, i32 0, i32 5
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %495

480:                                              ; preds = %475
  %481 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %482 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %481, i32 0, i32 4
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %480
  %486 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %487 = call i32 @ath10k_monitor_stop(%struct.ath10k* %486)
  br label %488

488:                                              ; preds = %485, %480
  %489 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %490 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %491 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %492 = call i32 @ath10k_bss_assoc(%struct.ieee80211_hw* %489, %struct.ieee80211_vif* %490, %struct.ieee80211_bss_conf* %491)
  %493 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %494 = call i32 @ath10k_monitor_recalc(%struct.ath10k* %493)
  br label %499

495:                                              ; preds = %475
  %496 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %497 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %498 = call i32 @ath10k_bss_disassoc(%struct.ieee80211_hw* %496, %struct.ieee80211_vif* %497)
  br label %499

499:                                              ; preds = %495, %488
  br label %500

500:                                              ; preds = %499, %470
  %501 = load i32, i32* %8, align 4
  %502 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %529

505:                                              ; preds = %500
  %506 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %507 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %508 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %509 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %512 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %511, i32 0, i32 4
  %513 = load i64, i64* %512, align 8
  %514 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %506, i32 %507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %510, i64 %513)
  %515 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %516 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %515, i32 0, i32 4
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %519 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %518, i32 0, i32 3
  store i64 %517, i64* %519, align 8
  %520 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %521 = call i32 @ath10k_mac_txpower_recalc(%struct.ath10k* %520)
  store i32 %521, i32* %21, align 4
  %522 = load i32, i32* %21, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %505
  %525 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %526 = load i32, i32* %21, align 4
  %527 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %525, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %526)
  br label %528

528:                                              ; preds = %524, %505
  br label %529

529:                                              ; preds = %528, %500
  %530 = load i32, i32* %8, align 4
  %531 = load i32, i32* @BSS_CHANGED_PS, align 4
  %532 = and i32 %530, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %553

534:                                              ; preds = %529
  %535 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %536 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %540 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %539, i32 0, i32 6
  store i32 %538, i32* %540, align 8
  %541 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %542 = call i32 @ath10k_config_ps(%struct.ath10k* %541)
  store i32 %542, i32* %21, align 4
  %543 = load i32, i32* %21, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %552

545:                                              ; preds = %534
  %546 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %547 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %548 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* %21, align 4
  %551 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %546, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %549, i32 %550)
  br label %552

552:                                              ; preds = %545, %534
  br label %553

553:                                              ; preds = %552, %529
  %554 = load i32, i32* %8, align 4
  %555 = load i32, i32* @BSS_CHANGED_MCAST_RATE, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %679

558:                                              ; preds = %553
  %559 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %560 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %559, i32 0, i32 5
  %561 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %560, align 8
  %562 = call i64 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %561, %struct.cfg80211_chan_def* %11)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %679, label %564

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  store i32 %568, i32* %24, align 4
  %569 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %570 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %570, i32 0, i32 0
  %572 = load i32*, i32** %571, align 8
  %573 = load i32, i32* %24, align 4
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  store i32 %576, i32* %23, align 4
  %577 = load i32, i32* %23, align 4
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %579, label %583

579:                                              ; preds = %564
  %580 = load i32, i32* %23, align 4
  %581 = sub nsw i32 %580, 1
  %582 = sext i32 %581 to i64
  store i64 %582, i64* %20, align 8
  br label %591

583:                                              ; preds = %564
  %584 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %585 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 8
  %588 = call i32 @ffs(i32 %587)
  %589 = sub nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  store i64 %590, i64* %20, align 8
  br label %591

591:                                              ; preds = %583, %579
  %592 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %593 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* @WHAL_WLAN_11A_CAPABILITY, align 4
  %596 = and i32 %594, %595
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %602

598:                                              ; preds = %591
  %599 = load i64, i64* @ATH10K_MAC_FIRST_OFDM_RATE_IDX, align 8
  %600 = load i64, i64* %20, align 8
  %601 = add i64 %600, %599
  store i64 %601, i64* %20, align 8
  br label %602

602:                                              ; preds = %598, %591
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ath10k_wmi_legacy_rates, align 8
  %604 = load i64, i64* %20, align 8
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i64 %604
  %606 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  store i32 %607, i32* %16, align 4
  %608 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ath10k_wmi_legacy_rates, align 8
  %609 = load i64, i64* %20, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %608, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %610, i32 0, i32 1
  %612 = load i32, i32* %611, align 4
  store i32 %612, i32* %17, align 4
  %613 = load i32, i32* %16, align 4
  %614 = call i64 @ath10k_mac_bitrate_is_cck(i32 %613)
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %618

616:                                              ; preds = %602
  %617 = load i32, i32* @WMI_RATE_PREAMBLE_CCK, align 4
  store i32 %617, i32* %15, align 4
  br label %620

618:                                              ; preds = %602
  %619 = load i32, i32* @WMI_RATE_PREAMBLE_OFDM, align 4
  store i32 %619, i32* %15, align 4
  br label %620

620:                                              ; preds = %618, %616
  %621 = load i32, i32* %17, align 4
  %622 = load i32, i32* %15, align 4
  %623 = call i64 @ATH10K_HW_RATECODE(i32 %621, i32 0, i32 %622)
  store i64 %623, i64* %18, align 8
  %624 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %625 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %626 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %627 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %626, i32 0, i32 4
  %628 = load i32, i32* %627, align 8
  %629 = load i64, i64* %18, align 8
  %630 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %624, i32 %625, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %628, i64 %629)
  %631 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %632 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %631, i32 0, i32 2
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 0
  %634 = load %struct.TYPE_21__*, %struct.TYPE_21__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  store i32 %636, i32* %12, align 4
  %637 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %638 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %639 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %638, i32 0, i32 4
  %640 = load i32, i32* %639, align 8
  %641 = load i32, i32* %12, align 4
  %642 = load i64, i64* %18, align 8
  %643 = trunc i64 %642 to i32
  %644 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %637, i32 %640, i32 %641, i32 %643)
  store i32 %644, i32* %21, align 4
  %645 = load i32, i32* %21, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %654

647:                                              ; preds = %620
  %648 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %649 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %650 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %649, i32 0, i32 4
  %651 = load i32, i32* %650, align 8
  %652 = load i32, i32* %21, align 4
  %653 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %648, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %651, i32 %652)
  br label %654

654:                                              ; preds = %647, %620
  %655 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %656 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %655, i32 0, i32 2
  %657 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %656, i32 0, i32 0
  %658 = load %struct.TYPE_21__*, %struct.TYPE_21__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %658, i32 0, i32 6
  %660 = load i32, i32* %659, align 4
  store i32 %660, i32* %12, align 4
  %661 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %662 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %663 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %662, i32 0, i32 4
  %664 = load i32, i32* %663, align 8
  %665 = load i32, i32* %12, align 4
  %666 = load i64, i64* %18, align 8
  %667 = trunc i64 %666 to i32
  %668 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %661, i32 %664, i32 %665, i32 %667)
  store i32 %668, i32* %21, align 4
  %669 = load i32, i32* %21, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %678

671:                                              ; preds = %654
  %672 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %673 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %674 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %673, i32 0, i32 4
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* %21, align 4
  %677 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %672, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %675, i32 %676)
  br label %678

678:                                              ; preds = %671, %654
  br label %679

679:                                              ; preds = %678, %558, %553
  %680 = load i32, i32* %8, align 4
  %681 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %682 = and i32 %680, %681
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %753

684:                                              ; preds = %679
  %685 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %686 = call i64 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %685, %struct.cfg80211_chan_def* %11)
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %692

688:                                              ; preds = %684
  %689 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %690 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %689, i32 0, i32 1
  %691 = call i32 @mutex_unlock(i32* %690)
  br label %757

692:                                              ; preds = %684
  %693 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %694 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %693, i32 0, i32 3
  %695 = load %struct.TYPE_17__*, %struct.TYPE_17__** %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %695, i32 0, i32 0
  %697 = load %struct.TYPE_16__*, %struct.TYPE_16__** %696, align 8
  %698 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %697, i32 0, i32 0
  %699 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %698, align 8
  %700 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %701 = load %struct.TYPE_18__*, %struct.TYPE_18__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %699, i64 %704
  %706 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %705, align 8
  store %struct.ieee80211_supported_band* %706, %struct.ieee80211_supported_band** %25, align 8
  %707 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %708 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %707, i32 0, i32 1
  %709 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 8
  %711 = call i32 @ffs(i32 %710)
  %712 = sub nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  store i64 %713, i64* %19, align 8
  %714 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %25, align 8
  %715 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %714, i32 0, i32 0
  %716 = load %struct.TYPE_20__*, %struct.TYPE_20__** %715, align 8
  %717 = load i64, i64* %19, align 8
  %718 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %716, i64 %717
  %719 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 4
  store i32 %720, i32* %16, align 4
  %721 = load i32, i32* %16, align 4
  %722 = call i32 @ath10k_mac_get_rate_hw_value(i32 %721)
  store i32 %722, i32* %22, align 4
  %723 = load i32, i32* %22, align 4
  %724 = icmp slt i32 %723, 0
  br i1 %724, label %725, label %732

725:                                              ; preds = %692
  %726 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %727 = load i32, i32* %16, align 4
  %728 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %726, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %727)
  %729 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %730 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %729, i32 0, i32 1
  %731 = call i32 @mutex_unlock(i32* %730)
  br label %757

732:                                              ; preds = %692
  %733 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %734 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %733, i32 0, i32 2
  %735 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %734, i32 0, i32 0
  %736 = load %struct.TYPE_21__*, %struct.TYPE_21__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %736, i32 0, i32 7
  %738 = load i32, i32* %737, align 4
  store i32 %738, i32* %12, align 4
  %739 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %740 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %741 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %740, i32 0, i32 4
  %742 = load i32, i32* %741, align 8
  %743 = load i32, i32* %12, align 4
  %744 = load i32, i32* %22, align 4
  %745 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %739, i32 %742, i32 %743, i32 %744)
  store i32 %745, i32* %21, align 4
  %746 = load i32, i32* %21, align 4
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %748, label %752

748:                                              ; preds = %732
  %749 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %750 = load i32, i32* %21, align 4
  %751 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %749, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i32 %750)
  br label %752

752:                                              ; preds = %748, %732
  br label %753

753:                                              ; preds = %752, %679
  %754 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %755 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %754, i32 0, i32 1
  %756 = call i32 @mutex_unlock(i32* %755)
  br label %757

757:                                              ; preds = %753, %725, %688
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_control_ibss(%struct.ath10k_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_wmi_pdev_set_param(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.ieee80211_vif*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_control_beaconing(%struct.ath10k_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ath10k_recalc_rtscts_prot(%struct.ath10k_vif*) #1

declare dso_local i64 @ath10k_mac_can_set_cts_prot(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_mac_set_cts_prot(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_monitor_stop(%struct.ath10k*) #1

declare dso_local i32 @ath10k_bss_assoc(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ath10k_monitor_recalc(%struct.ath10k*) #1

declare dso_local i32 @ath10k_bss_disassoc(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath10k_mac_txpower_recalc(%struct.ath10k*) #1

declare dso_local i32 @ath10k_config_ps(%struct.ath10k*) #1

declare dso_local i64 @ath10k_mac_vif_chan(%struct.ieee80211_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @ath10k_mac_bitrate_is_cck(i32) #1

declare dso_local i64 @ATH10K_HW_RATECODE(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath10k_mac_get_rate_hw_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
