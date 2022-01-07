; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwlagn_request_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwlagn_request_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_21__*, i64, %struct.TYPE_18__*, %struct.TYPE_16__, %struct.TYPE_30__*, i32*, i64, %struct.iwl_rxon_context*, %struct.iwl_scan_cmd*, i32, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, i32, i32*, i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.iwl_scan_cmd = type { i32, i32, i32, i8*, %struct.TYPE_20__, i32*, i8*, i8*, %struct.TYPE_25__*, i8*, i8*, i8*, i32 }
%struct.TYPE_20__ = type { i8*, i32, i32, %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.iwl_host_cmd = type { i32*, i32*, %struct.iwl_scan_cmd**, i32 }
%struct.ieee80211_mgmt = type { i32 }

@REPLY_SCAN_CMD = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@MAX_SCAN_CHANNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fail to allocate memory for scan\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IWL_PLCP_QUIET_THRESH = common dso_local global i32 0, align 4
@IWL_ACTIVE_QUIET_TIME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Scanning while associated...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"suspend_time 0x%X beacon interval %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Start internal passive scan.\0A\00", align 1
@IWL_RADIO_RESET_DWELL_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Kicking off active scan\0A\00", align 1
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Start passive scan.\0A\00", align 1
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_POS = common dso_local global i32 0, align 4
@CHANNEL_MODE_PURE_40 = common dso_local global i32 0, align 4
@IWL_RATE_6M_PLCP = common dso_local global i32 0, align 4
@IWL_RATE_1M_PLCP = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_IGNORE_BT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Invalid scan band\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_GOOD_CRC_TH_DEFAULT = common dso_local global i8* null, align 8
@IWL_GOOD_CRC_TH_DISABLED = common dso_local global i8* null, align 8
@IWL_GOOD_CRC_TH_NEVER = common dso_local global i8* null, align 8
@STATUS_POWER_PMI = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"chain_noise_data.active_chains: %u\0A\00", align 1
@RXON_RX_CHAIN_VALID_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_FORCE_MIMO_SEL_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_FORCE_SEL_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_DRIVER_FORCE_POS = common dso_local global i32 0, align 4
@iwl_bcast_addr = common dso_local global i32 0, align 4
@RXON_FILTER_ACCEPT_GRP_MSK = common dso_local global i32 0, align 4
@RXON_FILTER_BCON_AWARE_MSK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"channel count %d\0A\00", align 1
@IWL_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_vif*)* @iwlagn_request_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_request_scan(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_host_cmd, align 8
  %7 = alloca %struct.iwl_scan_cmd*, align 8
  %8 = alloca %struct.iwl_rxon_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  store i32* inttoptr (i64 112 to i32*), i32** %30, align 8
  %31 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store %struct.iwl_scan_cmd** null, %struct.iwl_scan_cmd*** %32, align 8
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %34 = load i32, i32* @REPLY_SCAN_CMD, align 4
  store i32 %34, i32* %33, align 8
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 11
  %37 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %36, align 8
  %38 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %39 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %37, i64 %38
  store %struct.iwl_rxon_context* %39, %struct.iwl_rxon_context** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* @MAX_SCAN_CHANNEL, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = add i64 112, %52
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 14
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %53, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %21, align 4
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 131
  br i1 %66, label %67, label %82

67:                                               ; preds = %2
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 3
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = icmp ne %struct.TYPE_19__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 3
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MAX_SCAN_CHANNEL, align 4
  %79 = icmp sgt i32 %77, %78
  br label %80

80:                                               ; preds = %72, %67
  %81 = phi i1 [ true, %67 ], [ %79, %72 ]
  br label %82

82:                                               ; preds = %80, %2
  %83 = phi i1 [ false, %2 ], [ %81, %80 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN_ON(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %713

90:                                               ; preds = %82
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %91, i32 0, i32 13
  %93 = call i32 @lockdep_assert_held(i32* %92)
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %95 = icmp ne %struct.ieee80211_vif* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %98 = call %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %97)
  store %struct.iwl_rxon_context* %98, %struct.iwl_rxon_context** %8, align 8
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %100, i32 0, i32 12
  %102 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %101, align 8
  %103 = icmp ne %struct.iwl_scan_cmd* %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.iwl_scan_cmd* @kmalloc(i32 %105, i32 %106)
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 12
  store %struct.iwl_scan_cmd* %107, %struct.iwl_scan_cmd** %109, align 8
  %110 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %111 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %110, i32 0, i32 12
  %112 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %111, align 8
  %113 = icmp ne %struct.iwl_scan_cmd* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %104
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %116 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %713

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %99
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %122 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %121, i32 0, i32 12
  %123 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %122, align 8
  store %struct.iwl_scan_cmd* %123, %struct.iwl_scan_cmd** %7, align 8
  %124 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %125 = load i32, i32* %21, align 4
  %126 = call i32 @memset(%struct.iwl_scan_cmd* %124, i32 0, i32 %125)
  %127 = load i32, i32* @IWL_PLCP_QUIET_THRESH, align 4
  %128 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 8
  %130 = load i8*, i8** @IWL_ACTIVE_QUIET_TIME, align 8
  %131 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %134 = call i64 @iwl_is_any_associated(%struct.iwl_priv* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %177

136:                                              ; preds = %120
  store i32 0, i32* %24, align 4
  store i32 100, i32* %26, align 4
  store i32 100, i32* %27, align 4
  %137 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %138 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %140 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %148 [
    i32 130, label %142
    i32 131, label %143
  ]

142:                                              ; preds = %136
  store i32 0, i32* %24, align 4
  br label %148

143:                                              ; preds = %136
  %144 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %145 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %24, align 4
  br label %148

148:                                              ; preds = %136, %143, %142
  %149 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %149, i32 0, i32 10
  store i8* null, i8** %150, align 8
  %151 = call i8* @cpu_to_le32(i32 204800)
  %152 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %152, i32 0, i32 11
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* %24, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %26, align 4
  store i32 %157, i32* %24, align 4
  br label %158

158:                                              ; preds = %156, %148
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* %24, align 4
  %161 = sdiv i32 %159, %160
  %162 = shl i32 %161, 22
  store i32 %162, i32* %25, align 4
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %26, align 4
  %165 = load i32, i32* %24, align 4
  %166 = srem i32 %164, %165
  %167 = mul nsw i32 %166, 1024
  %168 = or i32 %163, %167
  store i32 %168, i32* %27, align 4
  %169 = load i32, i32* %27, align 4
  %170 = call i8* @cpu_to_le32(i32 %169)
  %171 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %171, i32 0, i32 10
  store i8* %170, i8** %172, align 8
  %173 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %174 = load i32, i32* %27, align 4
  %175 = load i32, i32* %24, align 4
  %176 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %158, %120
  %178 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %179 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %290 [
    i32 130, label %181
    i32 131, label %188
  ]

181:                                              ; preds = %177
  %182 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %183 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %184 = load i32, i32* @IWL_RADIO_RESET_DWELL_TIME, align 4
  %185 = call i8* @cpu_to_le16(i32 %184)
  %186 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %187 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %186, i32 0, i32 9
  store i8* %185, i8** %187, align 8
  br label %290

188:                                              ; preds = %177
  %189 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %190 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %189, i32 0, i32 3
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %286

195:                                              ; preds = %188
  store i32 0, i32* %29, align 4
  %196 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %197 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %198 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %199 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %198, i32 0, i32 3
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %23, align 4
  %206 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %207 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %206, i32 0, i32 3
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %22, align 8
  %214 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %215 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %214, i32 0, i32 3
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* %28, align 4
  br label %220

220:                                              ; preds = %282, %195
  %221 = load i32, i32* %28, align 4
  %222 = icmp sge i32 %221, 1
  br i1 %222, label %223, label %285

223:                                              ; preds = %220
  %224 = load i32, i32* @WLAN_EID_SSID, align 4
  %225 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %226 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %225, i32 0, i32 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = load i32, i32* %29, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 2
  store i32 %224, i32* %231, align 4
  %232 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %233 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %232, i32 0, i32 3
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = load i32, i32* %28, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %242, i32 0, i32 8
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %243, align 8
  %245 = load i32, i32* %29, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  store i32 %241, i32* %248, align 4
  %249 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %250 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %249, i32 0, i32 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = load i32, i32* %29, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %258 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %257, i32 0, i32 3
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %260, align 8
  %262 = load i32, i32* %28, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %268 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %267, i32 0, i32 3
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 4
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %270, align 8
  %272 = load i32, i32* %28, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @memcpy(i32 %256, i32* %266, i32 %276)
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %29, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %29, align 4
  br label %282

282:                                              ; preds = %223
  %283 = load i32, i32* %28, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %28, align 4
  br label %220

285:                                              ; preds = %220
  store i32 1, i32* %16, align 4
  br label %289

286:                                              ; preds = %188
  %287 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %288 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %287, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %285
  br label %290

290:                                              ; preds = %177, %289, %181
  %291 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %292 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %293 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 2
  store i32 %291, i32* %294, align 4
  %295 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %296 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %299 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 4
  store i32 %297, i32* %300, align 4
  %301 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %302 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %303 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 0
  store i32 %301, i32* %305, align 8
  %306 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %307 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  switch i32 %308, label %374 [
    i32 129, label %309
    i32 128, label %372
  ]

309:                                              ; preds = %290
  %310 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %311 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %312 = or i32 %310, %311
  %313 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %314 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %316 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %315, i32 0, i32 11
  %317 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %316, align 8
  %318 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %319 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %317, i64 %318
  %320 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %324 = and i32 %322, %323
  %325 = call i32 @le32_to_cpu(i32 %324)
  %326 = load i32, i32* @RXON_FLG_CHANNEL_MODE_POS, align 4
  %327 = ashr i32 %325, %326
  store i32 %327, i32* %17, align 4
  %328 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %329 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %328, i32 0, i32 3
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %329, align 8
  %331 = icmp ne %struct.TYPE_19__* %330, null
  br i1 %331, label %332, label %339

332:                                              ; preds = %309
  %333 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %334 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %333, i32 0, i32 3
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %332, %309
  %340 = load i32, i32* %17, align 4
  %341 = load i32, i32* @CHANNEL_MODE_PURE_40, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %339, %332
  %344 = load i32, i32* @IWL_RATE_6M_PLCP, align 4
  store i32 %344, i32* %15, align 4
  br label %348

345:                                              ; preds = %339
  %346 = load i32, i32* @IWL_RATE_1M_PLCP, align 4
  store i32 %346, i32* %15, align 4
  %347 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  store i32 %347, i32* %9, align 4
  br label %348

348:                                              ; preds = %345, %343
  %349 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %350 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %349, i32 0, i32 6
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %352, align 8
  %354 = icmp ne %struct.TYPE_17__* %353, null
  br i1 %354, label %355, label %371

355:                                              ; preds = %348
  %356 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %357 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %356, i32 0, i32 6
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %355
  %365 = load i32, i32* @TX_CMD_FLG_IGNORE_BT, align 4
  %366 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %367 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %366, i32 0, i32 4
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %365
  store i32 %370, i32* %368, align 4
  br label %371

371:                                              ; preds = %364, %355, %348
  br label %379

372:                                              ; preds = %290
  %373 = load i32, i32* @IWL_RATE_6M_PLCP, align 4
  store i32 %373, i32* %15, align 4
  br label %379

374:                                              ; preds = %290
  %375 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %376 = call i32 @IWL_WARN(%struct.iwl_priv* %375, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %377 = load i32, i32* @EIO, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %3, align 4
  br label %713

379:                                              ; preds = %372, %371
  %380 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %381 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %380, i32 0, i32 10
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %379
  %385 = load i32, i32* %16, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = load i8*, i8** @IWL_GOOD_CRC_TH_DEFAULT, align 8
  br label %391

389:                                              ; preds = %384
  %390 = load i8*, i8** @IWL_GOOD_CRC_TH_DISABLED, align 8
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i8* [ %388, %387 ], [ %390, %389 ]
  %393 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %394 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %393, i32 0, i32 7
  store i8* %392, i8** %394, align 8
  br label %406

395:                                              ; preds = %379
  %396 = load i32, i32* %16, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = load i8*, i8** @IWL_GOOD_CRC_TH_DEFAULT, align 8
  br label %402

400:                                              ; preds = %395
  %401 = load i8*, i8** @IWL_GOOD_CRC_TH_NEVER, align 8
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i8* [ %399, %398 ], [ %401, %400 ]
  %404 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %405 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %404, i32 0, i32 7
  store i8* %403, i8** %405, align 8
  br label %406

406:                                              ; preds = %402, %391
  %407 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %408 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %12, align 4
  %410 = load i32, i32* %12, align 4
  %411 = icmp eq i32 %410, 129
  br i1 %411, label %412, label %431

412:                                              ; preds = %406
  %413 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %414 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %413, i32 0, i32 6
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %416, align 8
  %418 = icmp ne %struct.TYPE_17__* %417, null
  br i1 %418, label %419, label %431

419:                                              ; preds = %412
  %420 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %421 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %420, i32 0, i32 6
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %419
  %429 = load i32, i32* %19, align 4
  %430 = call i32 @first_antenna(i32 %429)
  store i32 %430, i32* %19, align 4
  br label %431

431:                                              ; preds = %428, %419, %412, %406
  %432 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %433 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %434 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %433, i32 0, i32 9
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %12, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %19, align 4
  %441 = call i32 @iwl_toggle_tx_ant(%struct.iwl_priv* %432, i32 %439, i32 %440)
  %442 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %443 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %442, i32 0, i32 9
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %12, align 4
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %441, i32* %447, align 4
  %448 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %449 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %448, i32 0, i32 9
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %12, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @iwl_ant_idx_to_flags(i32 %454)
  %456 = load i32, i32* %9, align 4
  %457 = or i32 %456, %455
  store i32 %457, i32* %9, align 4
  %458 = load i32, i32* %15, align 4
  %459 = load i32, i32* %9, align 4
  %460 = call i32 @iwl_hw_set_rate_n_flags(i32 %458, i32 %459)
  %461 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %462 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %461, i32 0, i32 4
  %463 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %462, i32 0, i32 1
  store i32 %460, i32* %463, align 8
  %464 = load i32, i32* @STATUS_POWER_PMI, align 4
  %465 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %466 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %465, i32 0, i32 2
  %467 = call i64 @test_bit(i32 %464, i32* %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %499

469:                                              ; preds = %431
  %470 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %471 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %470, i32 0, i32 8
  %472 = load %struct.TYPE_30__*, %struct.TYPE_30__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %499, label %479

479:                                              ; preds = %469
  %480 = load i32, i32* %14, align 4
  %481 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %482 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %481, i32 0, i32 7
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = and i32 %480, %484
  store i32 %485, i32* %18, align 4
  %486 = load i32, i32* %18, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %490, label %488

488:                                              ; preds = %479
  %489 = load i32, i32* %14, align 4
  store i32 %489, i32* %18, align 4
  br label %490

490:                                              ; preds = %488, %479
  %491 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %492 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %493 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %492, i32 0, i32 7
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %491, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %495)
  %497 = load i32, i32* %18, align 4
  %498 = call i32 @first_antenna(i32 %497)
  store i32 %498, i32* %14, align 4
  br label %499

499:                                              ; preds = %490, %469, %431
  %500 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %501 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %500, i32 0, i32 6
  %502 = load %struct.TYPE_18__*, %struct.TYPE_18__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %502, i32 0, i32 0
  %504 = load %struct.TYPE_17__*, %struct.TYPE_17__** %503, align 8
  %505 = icmp ne %struct.TYPE_17__* %504, null
  br i1 %505, label %506, label %523

506:                                              ; preds = %499
  %507 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %508 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %507, i32 0, i32 6
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %523

515:                                              ; preds = %506
  %516 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %517 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %516, i32 0, i32 5
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %515
  %521 = load i32, i32* %14, align 4
  %522 = call i32 @first_antenna(i32 %521)
  store i32 %522, i32* %14, align 4
  br label %523

523:                                              ; preds = %520, %515, %506, %499
  %524 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %525 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %524, i32 0, i32 4
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @RXON_RX_CHAIN_VALID_POS, align 4
  %530 = shl i32 %528, %529
  %531 = load i32, i32* %11, align 4
  %532 = or i32 %531, %530
  store i32 %532, i32* %11, align 4
  %533 = load i32, i32* %14, align 4
  %534 = load i32, i32* @RXON_RX_CHAIN_FORCE_MIMO_SEL_POS, align 4
  %535 = shl i32 %533, %534
  %536 = load i32, i32* %11, align 4
  %537 = or i32 %536, %535
  store i32 %537, i32* %11, align 4
  %538 = load i32, i32* %14, align 4
  %539 = load i32, i32* @RXON_RX_CHAIN_FORCE_SEL_POS, align 4
  %540 = shl i32 %538, %539
  %541 = load i32, i32* %11, align 4
  %542 = or i32 %541, %540
  store i32 %542, i32* %11, align 4
  %543 = load i32, i32* @RXON_RX_CHAIN_DRIVER_FORCE_POS, align 4
  %544 = shl i32 1, %543
  %545 = load i32, i32* %11, align 4
  %546 = or i32 %545, %544
  store i32 %546, i32* %11, align 4
  %547 = load i32, i32* %11, align 4
  %548 = call i8* @cpu_to_le16(i32 %547)
  %549 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %550 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %549, i32 0, i32 6
  store i8* %548, i8** %550, align 8
  %551 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %552 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  switch i32 %553, label %590 [
    i32 131, label %554
    i32 130, label %579
  ]

554:                                              ; preds = %523
  %555 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %556 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %555, i32 0, i32 5
  %557 = load i32*, i32** %556, align 8
  %558 = bitcast i32* %557 to %struct.ieee80211_mgmt*
  %559 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %560 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %563 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %562, i32 0, i32 3
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %564, i32 0, i32 2
  %566 = load i32*, i32** %565, align 8
  %567 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %568 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %567, i32 0, i32 3
  %569 = load %struct.TYPE_19__*, %struct.TYPE_19__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = load i32*, i32** %22, align 8
  %573 = load i32, i32* %23, align 4
  %574 = load i32, i32* %21, align 4
  %575 = sext i32 %574 to i64
  %576 = sub i64 %575, 112
  %577 = trunc i64 %576 to i32
  %578 = call i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt* %558, i32 %561, i32* %566, i32 %571, i32* %572, i32 %573, i32 %577)
  store i32 %578, i32* %10, align 4
  br label %592

579:                                              ; preds = %523
  %580 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %581 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %580, i32 0, i32 5
  %582 = load i32*, i32** %581, align 8
  %583 = bitcast i32* %582 to %struct.ieee80211_mgmt*
  %584 = load i32, i32* @iwl_bcast_addr, align 4
  %585 = load i32, i32* %21, align 4
  %586 = sext i32 %585 to i64
  %587 = sub i64 %586, 112
  %588 = trunc i64 %587 to i32
  %589 = call i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt* %583, i32 %584, i32* null, i32 0, i32* null, i32 0, i32 %588)
  store i32 %589, i32* %10, align 4
  br label %592

590:                                              ; preds = %523
  %591 = call i32 (...) @BUG()
  br label %592

592:                                              ; preds = %590, %579, %554
  %593 = load i32, i32* %10, align 4
  %594 = call i8* @cpu_to_le16(i32 %593)
  %595 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %596 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %595, i32 0, i32 4
  %597 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %596, i32 0, i32 0
  store i8* %594, i8** %597, align 8
  %598 = load i32, i32* @RXON_FILTER_ACCEPT_GRP_MSK, align 4
  %599 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %600 = or i32 %598, %599
  %601 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %602 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = or i32 %603, %600
  store i32 %604, i32* %602, align 4
  %605 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %606 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  switch i32 %607, label %638 [
    i32 130, label %608
    i32 131, label %622
  ]

608:                                              ; preds = %592
  %609 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %610 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %611 = load i32, i32* %12, align 4
  %612 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %613 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %612, i32 0, i32 5
  %614 = load i32*, i32** %613, align 8
  %615 = load i32, i32* %10, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32, i32* %614, i64 %616
  %618 = bitcast i32* %617 to i8*
  %619 = call i32 @iwl_get_channel_for_reset_scan(%struct.iwl_priv* %609, %struct.ieee80211_vif* %610, i32 %611, i8* %618)
  %620 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %621 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %620, i32 0, i32 2
  store i32 %619, i32* %621, align 8
  br label %638

622:                                              ; preds = %592
  %623 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %624 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %625 = load i32, i32* %12, align 4
  %626 = load i32, i32* %16, align 4
  %627 = load i32, i32* %13, align 4
  %628 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %629 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %628, i32 0, i32 5
  %630 = load i32*, i32** %629, align 8
  %631 = load i32, i32* %10, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  %634 = bitcast i32* %633 to i8*
  %635 = call i32 @iwl_get_channels_for_scan(%struct.iwl_priv* %623, %struct.ieee80211_vif* %624, i32 %625, i32 %626, i32 %627, i8* %634)
  %636 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %637 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %636, i32 0, i32 2
  store i32 %635, i32* %637, align 8
  br label %638

638:                                              ; preds = %592, %622, %608
  %639 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %640 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 8
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %651

643:                                              ; preds = %638
  %644 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %645 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %646 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %645, i32 0, i32 2
  %647 = load i32, i32* %646, align 8
  %648 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %644, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %647)
  %649 = load i32, i32* @EIO, align 4
  %650 = sub nsw i32 0, %649
  store i32 %650, i32* %3, align 4
  br label %713

651:                                              ; preds = %638
  %652 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %653 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %652, i32 0, i32 4
  %654 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %653, i32 0, i32 0
  %655 = load i8*, i8** %654, align 8
  %656 = call i64 @le16_to_cpu(i8* %655)
  %657 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %658 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %657, i32 0, i32 2
  %659 = load i32, i32* %658, align 8
  %660 = sext i32 %659 to i64
  %661 = mul i64 %660, 4
  %662 = add i64 %656, %661
  %663 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %664 = load i32*, i32** %663, align 8
  %665 = getelementptr inbounds i32, i32* %664, i64 0
  %666 = load i32, i32* %665, align 4
  %667 = sext i32 %666 to i64
  %668 = add i64 %667, %662
  %669 = trunc i64 %668 to i32
  store i32 %669, i32* %665, align 4
  %670 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %671 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  %672 = load %struct.iwl_scan_cmd**, %struct.iwl_scan_cmd*** %671, align 8
  %673 = getelementptr inbounds %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %672, i64 0
  store %struct.iwl_scan_cmd* %670, %struct.iwl_scan_cmd** %673, align 8
  %674 = load i32, i32* @IWL_HCMD_DFL_NOCOPY, align 4
  %675 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %676 = load i32*, i32** %675, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 0
  store i32 %674, i32* %677, align 4
  %678 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %679 = load i32*, i32** %678, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 0
  %681 = load i32, i32* %680, align 4
  %682 = call i8* @cpu_to_le16(i32 %681)
  %683 = load %struct.iwl_scan_cmd*, %struct.iwl_scan_cmd** %7, align 8
  %684 = getelementptr inbounds %struct.iwl_scan_cmd, %struct.iwl_scan_cmd* %683, i32 0, i32 3
  store i8* %682, i8** %684, align 8
  %685 = load i32, i32* @STATUS_SCAN_HW, align 4
  %686 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %687 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %686, i32 0, i32 2
  %688 = call i32 @set_bit(i32 %685, i32* %687)
  %689 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %690 = call i32 @iwlagn_set_pan_params(%struct.iwl_priv* %689)
  store i32 %690, i32* %20, align 4
  %691 = load i32, i32* %20, align 4
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %651
  %694 = load i32, i32* @STATUS_SCAN_HW, align 4
  %695 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %696 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %695, i32 0, i32 2
  %697 = call i32 @clear_bit(i32 %694, i32* %696)
  %698 = load i32, i32* %20, align 4
  store i32 %698, i32* %3, align 4
  br label %713

699:                                              ; preds = %651
  %700 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %701 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %700, %struct.iwl_host_cmd* %6)
  store i32 %701, i32* %20, align 4
  %702 = load i32, i32* %20, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %711

704:                                              ; preds = %699
  %705 = load i32, i32* @STATUS_SCAN_HW, align 4
  %706 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %707 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %706, i32 0, i32 2
  %708 = call i32 @clear_bit(i32 %705, i32* %707)
  %709 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %710 = call i32 @iwlagn_set_pan_params(%struct.iwl_priv* %709)
  br label %711

711:                                              ; preds = %704, %699
  %712 = load i32, i32* %20, align 4
  store i32 %712, i32* %3, align 4
  br label %713

713:                                              ; preds = %711, %693, %643, %374, %114, %87
  %714 = load i32, i32* %3, align 4
  ret i32 %714
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_scan_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @memset(%struct.iwl_scan_cmd*, i32, i32) #1

declare dso_local i64 @iwl_is_any_associated(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @iwl_toggle_tx_ant(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @iwl_ant_idx_to_flags(i32) #1

declare dso_local i32 @iwl_hw_set_rate_n_flags(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_fill_probe_req(%struct.ieee80211_mgmt*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @iwl_get_channel_for_reset_scan(%struct.iwl_priv*, %struct.ieee80211_vif*, i32, i8*) #1

declare dso_local i32 @iwl_get_channels_for_scan(%struct.iwl_priv*, %struct.ieee80211_vif*, i32, i32, i32, i8*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwlagn_set_pan_params(%struct.iwl_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
