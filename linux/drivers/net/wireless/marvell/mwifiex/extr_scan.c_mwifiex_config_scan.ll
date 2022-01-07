; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_config_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_config_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_12__, %struct.mwifiex_adapter*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.mwifiex_adapter = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.mwifiex_user_scan_cfg = type { i32*, i32, i32, %struct.TYPE_21__*, i32, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.mwifiex_scan_cmd_config = type { i32*, i32, i32*, i64 }
%struct.mwifiex_ie_types_chan_list_param_set = type { i32 }
%struct.mwifiex_chan_scan_param_set = type { i32, i32, i32, i8*, i8* }
%struct.mwifiex_ie_types_num_probes = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.mwifiex_ie_types_scan_chan_gap = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.mwifiex_ie_types_random_mac = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.mwifiex_ie_types_wildcard_ssid_params = type { i32, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.mwifiex_ie_types_bssid_list = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.mwifiex_ie_types_htcap = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.mwifiex_ie_types_bss_mode = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@TLV_TYPE_BSSID = common dso_local global i32 0, align 4
@TLV_TYPE_WILDCARDSSID = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DIRECT-\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"info: scan: ssid[%d]: %s, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"info: scan: channel gap = %d\0A\00", align 1
@MWIFIEX_MAX_CHANNELS_PER_SPECIFIC_SCAN = common dso_local global i32 0, align 4
@TLV_TYPE_SCAN_CHANNEL_GAP = common dso_local global i32 0, align 4
@TLV_TYPE_RANDOM_MAC = common dso_local global i32 0, align 4
@MWIFIEX_DEF_CHANNELS_PER_SCAN_CMD = common dso_local global i32 0, align 4
@TLV_TYPE_BSS_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"info: scan: num_probes = %d\0A\00", align 1
@TLV_TYPE_NUMPROBES = common dso_local global i32 0, align 4
@BAND_GN = common dso_local global i32 0, align 4
@BAND_AN = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@MWIFIEX_VSIE_MASK_SCAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"info: Scan: Using supplied channel list\0A\00", align 1
@MWIFIEX_USER_SCAN_CHAN_MAX = common dso_local global i32 0, align 4
@MWIFIEX_SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@MWIFIEX_PASSIVE_SCAN = common dso_local global i32 0, align 4
@MWIFIEX_HIDDEN_SSID_REPORT = common dso_local global i32 0, align 4
@MWIFIEX_DISABLE_CHAN_FILT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"info: Scan: Scanning current channel only\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"info: Scan: Creating full region channel list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_ie_types_chan_list_param_set**, %struct.mwifiex_chan_scan_param_set*, i32*, i32*, i32*)* @mwifiex_config_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_config_scan(%struct.mwifiex_private* %0, %struct.mwifiex_user_scan_cfg* %1, %struct.mwifiex_scan_cmd_config* %2, %struct.mwifiex_ie_types_chan_list_param_set** %3, %struct.mwifiex_chan_scan_param_set* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca %struct.mwifiex_user_scan_cfg*, align 8
  %11 = alloca %struct.mwifiex_scan_cmd_config*, align 8
  %12 = alloca %struct.mwifiex_ie_types_chan_list_param_set**, align 8
  %13 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.mwifiex_adapter*, align 8
  %18 = alloca %struct.mwifiex_ie_types_num_probes*, align 8
  %19 = alloca %struct.mwifiex_ie_types_scan_chan_gap*, align 8
  %20 = alloca %struct.mwifiex_ie_types_random_mac*, align 8
  %21 = alloca %struct.mwifiex_ie_types_wildcard_ssid_params*, align 8
  %22 = alloca %struct.mwifiex_ie_types_bssid_list*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.mwifiex_ie_types_htcap*, align 8
  %34 = alloca %struct.mwifiex_ie_types_bss_mode*, align 8
  %35 = alloca [6 x i32], align 16
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %9, align 8
  store %struct.mwifiex_user_scan_cfg* %1, %struct.mwifiex_user_scan_cfg** %10, align 8
  store %struct.mwifiex_scan_cmd_config* %2, %struct.mwifiex_scan_cmd_config** %11, align 8
  store %struct.mwifiex_ie_types_chan_list_param_set** %3, %struct.mwifiex_ie_types_chan_list_param_set*** %12, align 8
  store %struct.mwifiex_chan_scan_param_set* %4, %struct.mwifiex_chan_scan_param_set** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 1
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %39, align 8
  store %struct.mwifiex_adapter* %40, %struct.mwifiex_adapter** %17, align 8
  %41 = bitcast [6 x i32]* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 24, i1 false)
  %42 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %43 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %45 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %23, align 8
  %47 = load i32*, i32** %15, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %16, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %50 = icmp ne %struct.mwifiex_user_scan_cfg* %49, null
  br i1 %50, label %51, label %304

51:                                               ; preds = %8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %36, align 8
  %55 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %37, align 8
  store i32 1, i32* %32, align 4
  %56 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %57 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i64 [ %58, %60 ], [ %64, %61 ]
  %67 = trunc i64 %66 to i32
  %68 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %69 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %71 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %77 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  br label %80

80:                                               ; preds = %75, %74
  %81 = phi i64 [ %72, %74 ], [ %79, %75 ]
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %24, align 4
  %83 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %84 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %87 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @memcpy(i32* %85, i32* %88, i32 8)
  %90 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %91 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i32* %55, i32* %92, i32 %93)
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %80
  %100 = call i32 @is_zero_ether_addr(i32* %55)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %125, label %102

102:                                              ; preds = %99
  %103 = load i32*, i32** %23, align 8
  %104 = bitcast i32* %103 to %struct.mwifiex_ie_types_bssid_list*
  store %struct.mwifiex_ie_types_bssid_list* %104, %struct.mwifiex_ie_types_bssid_list** %22, align 8
  %105 = load i32, i32* @TLV_TYPE_BSSID, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.mwifiex_ie_types_bssid_list*, %struct.mwifiex_ie_types_bssid_list** %22, align 8
  %108 = getelementptr inbounds %struct.mwifiex_ie_types_bssid_list, %struct.mwifiex_ie_types_bssid_list* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = call i8* @cpu_to_le16(i32 %110)
  %112 = load %struct.mwifiex_ie_types_bssid_list*, %struct.mwifiex_ie_types_bssid_list** %22, align 8
  %113 = getelementptr inbounds %struct.mwifiex_ie_types_bssid_list, %struct.mwifiex_ie_types_bssid_list* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load %struct.mwifiex_ie_types_bssid_list*, %struct.mwifiex_ie_types_bssid_list** %22, align 8
  %116 = getelementptr inbounds %struct.mwifiex_ie_types_bssid_list, %struct.mwifiex_ie_types_bssid_list* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %119 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @ETH_ALEN, align 4
  %122 = call i32 @memcpy(i32* %117, i32* %120, i32 %121)
  %123 = load i32*, i32** %23, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 24
  store i32* %124, i32** %23, align 8
  br label %125

125:                                              ; preds = %102, %99, %80
  store i32 0, i32* %31, align 4
  br label %126

126:                                              ; preds = %220, %125
  %127 = load i32, i32* %31, align 4
  %128 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %129 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %223

132:                                              ; preds = %126
  %133 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %134 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %133, i32 0, i32 5
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load i32, i32* %31, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %25, align 4
  %141 = load i32*, i32** %23, align 8
  %142 = bitcast i32* %141 to %struct.mwifiex_ie_types_wildcard_ssid_params*
  store %struct.mwifiex_ie_types_wildcard_ssid_params* %142, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %143 = load i32, i32* @TLV_TYPE_WILDCARDSSID, align 4
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %146 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  %148 = load i32, i32* %25, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i8* @cpu_to_le16(i32 %151)
  %153 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %154 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* %25, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %132
  %159 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %160 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %165

161:                                              ; preds = %132
  %162 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %163 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %164 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %158
  %166 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %167 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %166, i32 0, i32 5
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = load i32, i32* %31, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @memcmp(i32* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %165
  %177 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %178 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %177, i32 0, i32 0
  store i32 254, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %165
  %180 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %181 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %184 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %183, i32 0, i32 5
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = load i32, i32* %31, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %25, align 4
  %192 = call i32 @memcpy(i32* %182, i32* %190, i32 %191)
  %193 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %194 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @le16_to_cpu(i8* %196)
  %198 = add i64 16, %197
  %199 = load i32*, i32** %23, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 %198
  store i32* %200, i32** %23, align 8
  %201 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %202 = load i32, i32* @INFO, align 4
  %203 = load i32, i32* %31, align 4
  %204 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %205 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %208 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %201, i32 %202, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32* %206, i32 %209)
  %211 = load i32, i32* %25, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %179
  %214 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %21, align 8
  %215 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 0, i32* %32, align 4
  br label %219

219:                                              ; preds = %218, %213, %179
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %31, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %31, align 4
  br label %126

223:                                              ; preds = %126
  %224 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %225 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* @ETH_ALEN, align 4
  %228 = call i32 @memcpy(i32* %55, i32* %226, i32 %227)
  %229 = load i32, i32* %31, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load i32, i32* %32, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231, %223
  %235 = call i32 @is_zero_ether_addr(i32* %55)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %234, %231
  %238 = load i32*, i32** %15, align 8
  store i32 1, i32* %238, align 4
  br label %239

239:                                              ; preds = %237, %234
  %240 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %241 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %273

244:                                              ; preds = %239
  %245 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %246 = load i32, i32* @INFO, align 4
  %247 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %248 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %245, i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @MWIFIEX_MAX_CHANNELS_PER_SPECIFIC_SCAN, align 4
  %252 = load i32*, i32** %14, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32*, i32** %23, align 8
  %254 = bitcast i32* %253 to i8*
  %255 = bitcast i8* %254 to %struct.mwifiex_ie_types_scan_chan_gap*
  store %struct.mwifiex_ie_types_scan_chan_gap* %255, %struct.mwifiex_ie_types_scan_chan_gap** %19, align 8
  %256 = load i32, i32* @TLV_TYPE_SCAN_CHANNEL_GAP, align 4
  %257 = call i8* @cpu_to_le16(i32 %256)
  %258 = load %struct.mwifiex_ie_types_scan_chan_gap*, %struct.mwifiex_ie_types_scan_chan_gap** %19, align 8
  %259 = getelementptr inbounds %struct.mwifiex_ie_types_scan_chan_gap, %struct.mwifiex_ie_types_scan_chan_gap* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  store i8* %257, i8** %260, align 8
  %261 = call i8* @cpu_to_le16(i32 8)
  %262 = load %struct.mwifiex_ie_types_scan_chan_gap*, %struct.mwifiex_ie_types_scan_chan_gap** %19, align 8
  %263 = getelementptr inbounds %struct.mwifiex_ie_types_scan_chan_gap, %struct.mwifiex_ie_types_scan_chan_gap* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  store i8* %261, i8** %264, align 8
  %265 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %266 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @cpu_to_le16(i32 %267)
  %269 = load %struct.mwifiex_ie_types_scan_chan_gap*, %struct.mwifiex_ie_types_scan_chan_gap** %19, align 8
  %270 = getelementptr inbounds %struct.mwifiex_ie_types_scan_chan_gap, %struct.mwifiex_ie_types_scan_chan_gap* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  %271 = load i32*, i32** %23, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 24
  store i32* %272, i32** %23, align 8
  br label %273

273:                                              ; preds = %244, %239
  %274 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %275 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = getelementptr inbounds [6 x i32], [6 x i32]* %35, i64 0, i64 0
  %278 = call i32 @ether_addr_equal(i32 %276, i32* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %302, label %280

280:                                              ; preds = %273
  %281 = load i32*, i32** %23, align 8
  %282 = bitcast i32* %281 to i8*
  %283 = bitcast i8* %282 to %struct.mwifiex_ie_types_random_mac*
  store %struct.mwifiex_ie_types_random_mac* %283, %struct.mwifiex_ie_types_random_mac** %20, align 8
  %284 = load i32, i32* @TLV_TYPE_RANDOM_MAC, align 4
  %285 = call i8* @cpu_to_le16(i32 %284)
  %286 = load %struct.mwifiex_ie_types_random_mac*, %struct.mwifiex_ie_types_random_mac** %20, align 8
  %287 = getelementptr inbounds %struct.mwifiex_ie_types_random_mac, %struct.mwifiex_ie_types_random_mac* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  store i8* %285, i8** %288, align 8
  %289 = call i8* @cpu_to_le16(i32 4)
  %290 = load %struct.mwifiex_ie_types_random_mac*, %struct.mwifiex_ie_types_random_mac** %20, align 8
  %291 = getelementptr inbounds %struct.mwifiex_ie_types_random_mac, %struct.mwifiex_ie_types_random_mac* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  store i8* %289, i8** %292, align 8
  %293 = load %struct.mwifiex_ie_types_random_mac*, %struct.mwifiex_ie_types_random_mac** %20, align 8
  %294 = getelementptr inbounds %struct.mwifiex_ie_types_random_mac, %struct.mwifiex_ie_types_random_mac* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %297 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @ether_addr_copy(i32 %295, i32 %298)
  %300 = load i32*, i32** %23, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 24
  store i32* %301, i32** %23, align 8
  br label %302

302:                                              ; preds = %280, %273
  %303 = load i8*, i8** %36, align 8
  call void @llvm.stackrestore(i8* %303)
  br label %314

304:                                              ; preds = %8
  %305 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %306 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %305, i32 0, i32 7
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %310 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 8
  %311 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %312 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  store i32 %313, i32* %24, align 4
  br label %314

314:                                              ; preds = %304, %302
  %315 = load i32*, i32** %15, align 8
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* @MWIFIEX_MAX_CHANNELS_PER_SPECIFIC_SCAN, align 4
  %320 = load i32*, i32** %14, align 8
  store i32 %319, i32* %320, align 4
  br label %334

321:                                              ; preds = %314
  %322 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %323 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %321
  %327 = load i32, i32* @MWIFIEX_DEF_CHANNELS_PER_SCAN_CMD, align 4
  %328 = load i32*, i32** %14, align 8
  store i32 %327, i32* %328, align 4
  br label %333

329:                                              ; preds = %321
  %330 = load i32, i32* @MWIFIEX_DEF_CHANNELS_PER_SCAN_CMD, align 4
  %331 = sdiv i32 %330, 2
  %332 = load i32*, i32** %14, align 8
  store i32 %331, i32* %332, align 4
  br label %333

333:                                              ; preds = %329, %326
  br label %334

334:                                              ; preds = %333, %318
  %335 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %336 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %335, i32 0, i32 6
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %364

339:                                              ; preds = %334
  %340 = load i32*, i32** %23, align 8
  %341 = bitcast i32* %340 to %struct.mwifiex_ie_types_bss_mode*
  store %struct.mwifiex_ie_types_bss_mode* %341, %struct.mwifiex_ie_types_bss_mode** %34, align 8
  %342 = load i32, i32* @TLV_TYPE_BSS_MODE, align 4
  %343 = call i8* @cpu_to_le16(i32 %342)
  %344 = load %struct.mwifiex_ie_types_bss_mode*, %struct.mwifiex_ie_types_bss_mode** %34, align 8
  %345 = getelementptr inbounds %struct.mwifiex_ie_types_bss_mode, %struct.mwifiex_ie_types_bss_mode* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 1
  store i8* %343, i8** %346, align 8
  %347 = call i8* @cpu_to_le16(i32 4)
  %348 = load %struct.mwifiex_ie_types_bss_mode*, %struct.mwifiex_ie_types_bss_mode** %34, align 8
  %349 = getelementptr inbounds %struct.mwifiex_ie_types_bss_mode, %struct.mwifiex_ie_types_bss_mode* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 0
  store i8* %347, i8** %350, align 8
  %351 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %11, align 8
  %352 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.mwifiex_ie_types_bss_mode*, %struct.mwifiex_ie_types_bss_mode** %34, align 8
  %355 = getelementptr inbounds %struct.mwifiex_ie_types_bss_mode, %struct.mwifiex_ie_types_bss_mode* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 8
  %356 = load %struct.mwifiex_ie_types_bss_mode*, %struct.mwifiex_ie_types_bss_mode** %34, align 8
  %357 = getelementptr inbounds %struct.mwifiex_ie_types_bss_mode, %struct.mwifiex_ie_types_bss_mode* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = call i64 @le16_to_cpu(i8* %359)
  %361 = add i64 16, %360
  %362 = load i32*, i32** %23, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 %361
  store i32* %363, i32** %23, align 8
  br label %364

364:                                              ; preds = %339, %334
  %365 = load i32, i32* %24, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %395

367:                                              ; preds = %364
  %368 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %369 = load i32, i32* @INFO, align 4
  %370 = load i32, i32* %24, align 4
  %371 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %368, i32 %369, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %370)
  %372 = load i32*, i32** %23, align 8
  %373 = bitcast i32* %372 to %struct.mwifiex_ie_types_num_probes*
  store %struct.mwifiex_ie_types_num_probes* %373, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %374 = load i32, i32* @TLV_TYPE_NUMPROBES, align 4
  %375 = call i8* @cpu_to_le16(i32 %374)
  %376 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %377 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 1
  store i8* %375, i8** %378, align 8
  %379 = call i8* @cpu_to_le16(i32 8)
  %380 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %381 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  store i8* %379, i8** %382, align 8
  %383 = load i32, i32* %24, align 4
  %384 = call i8* @cpu_to_le16(i32 %383)
  %385 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %386 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %385, i32 0, i32 1
  store i8* %384, i8** %386, align 8
  %387 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %388 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = call i64 @le16_to_cpu(i8* %390)
  %392 = add i64 16, %391
  %393 = load i32*, i32** %23, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 %392
  store i32* %394, i32** %23, align 8
  br label %395

395:                                              ; preds = %367, %364
  %396 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %397 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %396, i32 0, i32 1
  %398 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %397, align 8
  %399 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @ISSUPP_11NENABLED(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %448

403:                                              ; preds = %395
  %404 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %405 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %404, i32 0, i32 1
  %406 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %405, align 8
  %407 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @BAND_GN, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %421, label %412

412:                                              ; preds = %403
  %413 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %414 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %413, i32 0, i32 1
  %415 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %414, align 8
  %416 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @BAND_AN, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %448

421:                                              ; preds = %412, %403
  %422 = load i32*, i32** %23, align 8
  %423 = bitcast i32* %422 to %struct.mwifiex_ie_types_htcap*
  store %struct.mwifiex_ie_types_htcap* %423, %struct.mwifiex_ie_types_htcap** %33, align 8
  %424 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %33, align 8
  %425 = call i32 @memset(%struct.mwifiex_ie_types_htcap* %424, i32 0, i32 24)
  %426 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %427 = call i8* @cpu_to_le16(i32 %426)
  %428 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %33, align 8
  %429 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 1
  store i8* %427, i8** %430, align 8
  %431 = call i8* @cpu_to_le16(i32 4)
  %432 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %33, align 8
  %433 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 0
  store i8* %431, i8** %434, align 8
  %435 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %436 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %435, i32 0, i32 1
  %437 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %436, align 8
  %438 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @mwifiex_band_to_radio_type(i32 %439)
  store i32 %440, i32* %30, align 4
  %441 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %442 = load i32, i32* %30, align 4
  %443 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %33, align 8
  %444 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %443, i32 0, i32 0
  %445 = call i32 @mwifiex_fill_cap_info(%struct.mwifiex_private* %441, i32 %442, i32* %444)
  %446 = load i32*, i32** %23, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 24
  store i32* %447, i32** %23, align 8
  br label %448

448:                                              ; preds = %421, %412, %395
  %449 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %450 = load i32, i32* @MWIFIEX_VSIE_MASK_SCAN, align 4
  %451 = call i32 @mwifiex_cmd_append_vsie_tlv(%struct.mwifiex_private* %449, i32 %450, i32** %23)
  %452 = load i32*, i32** %23, align 8
  %453 = bitcast i32* %452 to %struct.mwifiex_ie_types_chan_list_param_set*
  %454 = load %struct.mwifiex_ie_types_chan_list_param_set**, %struct.mwifiex_ie_types_chan_list_param_set*** %12, align 8
  store %struct.mwifiex_ie_types_chan_list_param_set* %453, %struct.mwifiex_ie_types_chan_list_param_set** %454, align 8
  %455 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %456 = icmp ne %struct.mwifiex_user_scan_cfg* %455, null
  br i1 %456, label %457, label %637

457:                                              ; preds = %448
  %458 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %459 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %458, i32 0, i32 3
  %460 = load %struct.TYPE_21__*, %struct.TYPE_21__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %637

465:                                              ; preds = %457
  %466 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %467 = load i32, i32* @INFO, align 4
  %468 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %466, i32 %467, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %26, align 4
  br label %469

469:                                              ; preds = %611, %465
  %470 = load i32, i32* %26, align 4
  %471 = load i32, i32* @MWIFIEX_USER_SCAN_CHAN_MAX, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %483

473:                                              ; preds = %469
  %474 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %475 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %474, i32 0, i32 3
  %476 = load %struct.TYPE_21__*, %struct.TYPE_21__** %475, align 8
  %477 = load i32, i32* %26, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br label %483

483:                                              ; preds = %473, %469
  %484 = phi i1 [ false, %469 ], [ %482, %473 ]
  br i1 %484, label %485, label %614

485:                                              ; preds = %483
  %486 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %487 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %486, i32 0, i32 3
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %487, align 8
  %489 = load i32, i32* %26, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  store i32 %493, i32* %29, align 4
  %494 = load i32, i32* %29, align 4
  %495 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %496 = load i32, i32* %26, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %495, i64 %497
  %499 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %498, i32 0, i32 0
  store i32 %494, i32* %499, align 8
  %500 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %501 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %500, i32 0, i32 3
  %502 = load %struct.TYPE_21__*, %struct.TYPE_21__** %501, align 8
  %503 = load i32, i32* %26, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %30, align 4
  %508 = load i32, i32* %30, align 4
  %509 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %510 = load i32, i32* %26, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %509, i64 %511
  %513 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %512, i32 0, i32 1
  store i32 %508, i32* %513, align 4
  %514 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %515 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %514, i32 0, i32 3
  %516 = load %struct.TYPE_21__*, %struct.TYPE_21__** %515, align 8
  %517 = load i32, i32* %26, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  store i32 %521, i32* %27, align 4
  %522 = load i32, i32* %27, align 4
  %523 = load i32, i32* @MWIFIEX_SCAN_TYPE_PASSIVE, align 4
  %524 = icmp eq i32 %522, %523
  br i1 %524, label %525, label %536

525:                                              ; preds = %485
  %526 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %527 = load i32, i32* @MWIFIEX_HIDDEN_SSID_REPORT, align 4
  %528 = or i32 %526, %527
  %529 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %530 = load i32, i32* %26, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %529, i64 %531
  %533 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 8
  %535 = or i32 %534, %528
  store i32 %535, i32* %533, align 8
  br label %546

536:                                              ; preds = %485
  %537 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %538 = xor i32 %537, -1
  %539 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %540 = load i32, i32* %26, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %539, i64 %541
  %543 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %542, i32 0, i32 2
  %544 = load i32, i32* %543, align 8
  %545 = and i32 %544, %538
  store i32 %545, i32* %543, align 8
  br label %546

546:                                              ; preds = %536, %525
  %547 = load i32, i32* @MWIFIEX_DISABLE_CHAN_FILT, align 4
  %548 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %549 = load i32, i32* %26, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %548, i64 %550
  %552 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = or i32 %553, %547
  store i32 %554, i32* %552, align 8
  %555 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %556 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %555, i32 0, i32 3
  %557 = load %struct.TYPE_21__*, %struct.TYPE_21__** %556, align 8
  %558 = load i32, i32* %26, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %557, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %560, i32 0, i32 3
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %574

564:                                              ; preds = %546
  %565 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %566 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %565, i32 0, i32 3
  %567 = load %struct.TYPE_21__*, %struct.TYPE_21__** %566, align 8
  %568 = load i32, i32* %26, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %570, i32 0, i32 3
  %572 = load i64, i64* %571, align 8
  %573 = trunc i64 %572 to i32
  store i32 %573, i32* %28, align 4
  br label %596

574:                                              ; preds = %546
  %575 = load i32, i32* %27, align 4
  %576 = load i32, i32* @MWIFIEX_SCAN_TYPE_PASSIVE, align 4
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %582

578:                                              ; preds = %574
  %579 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %580 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  store i32 %581, i32* %28, align 4
  br label %595

582:                                              ; preds = %574
  %583 = load i32*, i32** %15, align 8
  %584 = load i32, i32* %583, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %590

586:                                              ; preds = %582
  %587 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %588 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %587, i32 0, i32 3
  %589 = load i32, i32* %588, align 4
  store i32 %589, i32* %28, align 4
  br label %594

590:                                              ; preds = %582
  %591 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %592 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %591, i32 0, i32 4
  %593 = load i32, i32* %592, align 8
  store i32 %593, i32* %28, align 4
  br label %594

594:                                              ; preds = %590, %586
  br label %595

595:                                              ; preds = %594, %578
  br label %596

596:                                              ; preds = %595, %564
  %597 = load i32, i32* %28, align 4
  %598 = call i8* @cpu_to_le16(i32 %597)
  %599 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %600 = load i32, i32* %26, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %599, i64 %601
  %603 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %602, i32 0, i32 4
  store i8* %598, i8** %603, align 8
  %604 = load i32, i32* %28, align 4
  %605 = call i8* @cpu_to_le16(i32 %604)
  %606 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %607 = load i32, i32* %26, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %606, i64 %608
  %610 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %609, i32 0, i32 3
  store i8* %605, i8** %610, align 8
  br label %611

611:                                              ; preds = %596
  %612 = load i32, i32* %26, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %26, align 4
  br label %469

614:                                              ; preds = %483
  %615 = load i32, i32* %26, align 4
  %616 = icmp eq i32 %615, 1
  br i1 %616, label %617, label %636

617:                                              ; preds = %614
  %618 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %619 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %618, i32 0, i32 3
  %620 = load %struct.TYPE_21__*, %struct.TYPE_21__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %620, i64 0
  %622 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = sext i32 %623 to i64
  %625 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %626 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %627, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = icmp eq i64 %624, %629
  br i1 %630, label %631, label %636

631:                                              ; preds = %617
  %632 = load i32*, i32** %16, align 8
  store i32 1, i32* %632, align 4
  %633 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %634 = load i32, i32* @INFO, align 4
  %635 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %633, i32 %634, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %636

636:                                              ; preds = %631, %617, %614
  br label %647

637:                                              ; preds = %457, %448
  %638 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %17, align 8
  %639 = load i32, i32* @INFO, align 4
  %640 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %638, i32 %639, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %641 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %642 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %10, align 8
  %643 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %13, align 8
  %644 = load i32*, i32** %15, align 8
  %645 = load i32, i32* %644, align 4
  %646 = call i32 @mwifiex_scan_create_channel_list(%struct.mwifiex_private* %641, %struct.mwifiex_user_scan_cfg* %642, %struct.mwifiex_chan_scan_param_set* %643, i32 %645)
  br label %647

647:                                              ; preds = %637, %636
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #3

declare dso_local i32 @is_zero_ether_addr(i32*) #3

declare dso_local i8* @cpu_to_le16(i32) #3

declare dso_local i32 @memcmp(i32*, i8*, i32) #3

declare dso_local i64 @le16_to_cpu(i8*) #3

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #3

declare dso_local i32 @ether_addr_equal(i32, i32*) #3

declare dso_local i32 @ether_addr_copy(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ISSUPP_11NENABLED(i32) #3

declare dso_local i32 @memset(%struct.mwifiex_ie_types_htcap*, i32, i32) #3

declare dso_local i32 @mwifiex_band_to_radio_type(i32) #3

declare dso_local i32 @mwifiex_fill_cap_info(%struct.mwifiex_private*, i32, i32*) #3

declare dso_local i32 @mwifiex_cmd_append_vsie_tlv(%struct.mwifiex_private*, i32, i32**) #3

declare dso_local i32 @mwifiex_scan_create_channel_list(%struct.mwifiex_private*, %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_chan_scan_param_set*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
