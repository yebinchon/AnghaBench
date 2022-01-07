; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cmd_802_11_bg_scan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cmd_802_11_bg_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32, i64 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.host_cmd_ds_802_11_bg_scan_config }
%struct.host_cmd_ds_802_11_bg_scan_config = type { i64*, i32, i32, i8*, i8*, i32, i8* }
%struct.mwifiex_bg_scan_cfg = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32 }
%struct.mwifiex_ie_types_num_probes = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.mwifiex_ie_types_repeat_count = type { %struct.TYPE_20__, i8* }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.mwifiex_ie_types_min_rssi_threshold = type { %struct.TYPE_21__, i8* }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.mwifiex_ie_types_bgscan_start_later = type { %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.mwifiex_ie_types_wildcard_ssid_params = type { %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.mwifiex_ie_types_chan_list_param_set = type { %struct.TYPE_15__, %struct.mwifiex_chan_scan_param_set* }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.mwifiex_chan_scan_param_set = type { i8*, i8*, i32, i32, i64 }

@HostCmd_CMD_802_11_BG_SCAN_CONFIG = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@TLV_TYPE_NUMPROBES = common dso_local global i32 0, align 4
@TLV_TYPE_REPEAT_COUNT = common dso_local global i32 0, align 4
@TLV_TYPE_RSSI_LOW = common dso_local global i32 0, align 4
@TLV_TYPE_WILDCARDSSID = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"info: bgscan: Using supplied channel list\0A\00", align 1
@TLV_TYPE_CHANLIST = common dso_local global i32 0, align 4
@MWIFIEX_BG_SCAN_CHAN_MAX = common dso_local global i64 0, align 8
@MWIFIEX_SCAN_TYPE_PASSIVE = common dso_local global i64 0, align 8
@MWIFIEX_PASSIVE_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"info: bgscan: Creating full region channel list\0A\00", align 1
@TLV_TYPE_BGSCAN_START_LATER = common dso_local global i32 0, align 4
@MWIFIEX_VSIE_MASK_BGSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_cmd_802_11_bg_scan_config(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.host_cmd_ds_802_11_bg_scan_config*, align 8
  %9 = alloca %struct.mwifiex_bg_scan_cfg*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mwifiex_ie_types_num_probes*, align 8
  %19 = alloca %struct.mwifiex_ie_types_repeat_count*, align 8
  %20 = alloca %struct.mwifiex_ie_types_min_rssi_threshold*, align 8
  %21 = alloca %struct.mwifiex_ie_types_bgscan_start_later*, align 8
  %22 = alloca %struct.mwifiex_ie_types_wildcard_ssid_params*, align 8
  %23 = alloca %struct.mwifiex_ie_types_chan_list_param_set*, align 8
  %24 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i8* %2, i8** %7, align 8
  %25 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_bg_scan_config* %27, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.mwifiex_bg_scan_cfg*
  store %struct.mwifiex_bg_scan_cfg* %29, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %30 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %10, align 8
  %33 = load i32, i32* @HostCmd_CMD_802_11_BG_SCAN_CONFIG, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %36 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @S_DS_GEN, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 48, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %43 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %45 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %49 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %51 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %54 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %56 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %59 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %61 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %65 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %67 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %71 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %73 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %469

77:                                               ; preds = %3
  %78 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %79 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %82 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %84 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %89 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  br label %97

91:                                               ; preds = %77
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  br label %97

97:                                               ; preds = %91, %87
  %98 = phi i64 [ %90, %87 ], [ %96, %91 ]
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load i64*, i64** %10, align 8
  %103 = bitcast i64* %102 to %struct.mwifiex_ie_types_num_probes*
  store %struct.mwifiex_ie_types_num_probes* %103, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %104 = load i32, i32* @TLV_TYPE_NUMPROBES, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %107 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = call i8* @cpu_to_le16(i32 8)
  %110 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %111 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  %113 = load i64, i64* %11, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %117 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.mwifiex_ie_types_num_probes*, %struct.mwifiex_ie_types_num_probes** %18, align 8
  %119 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, %struct.mwifiex_ie_types_num_probes* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @le16_to_cpu(i8* %121)
  %123 = add i64 16, %122
  %124 = load i64*, i64** %10, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 %123
  store i64* %125, i64** %10, align 8
  br label %126

126:                                              ; preds = %101, %97
  %127 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %128 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %126
  %132 = load i64*, i64** %10, align 8
  %133 = bitcast i64* %132 to %struct.mwifiex_ie_types_repeat_count*
  store %struct.mwifiex_ie_types_repeat_count* %133, %struct.mwifiex_ie_types_repeat_count** %19, align 8
  %134 = load i32, i32* @TLV_TYPE_REPEAT_COUNT, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.mwifiex_ie_types_repeat_count*, %struct.mwifiex_ie_types_repeat_count** %19, align 8
  %137 = getelementptr inbounds %struct.mwifiex_ie_types_repeat_count, %struct.mwifiex_ie_types_repeat_count* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = call i8* @cpu_to_le16(i32 8)
  %140 = load %struct.mwifiex_ie_types_repeat_count*, %struct.mwifiex_ie_types_repeat_count** %19, align 8
  %141 = getelementptr inbounds %struct.mwifiex_ie_types_repeat_count, %struct.mwifiex_ie_types_repeat_count* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %144 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = load %struct.mwifiex_ie_types_repeat_count*, %struct.mwifiex_ie_types_repeat_count** %19, align 8
  %148 = getelementptr inbounds %struct.mwifiex_ie_types_repeat_count, %struct.mwifiex_ie_types_repeat_count* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.mwifiex_ie_types_repeat_count*, %struct.mwifiex_ie_types_repeat_count** %19, align 8
  %150 = getelementptr inbounds %struct.mwifiex_ie_types_repeat_count, %struct.mwifiex_ie_types_repeat_count* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @le16_to_cpu(i8* %152)
  %154 = add i64 16, %153
  %155 = load i64*, i64** %10, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 %154
  store i64* %156, i64** %10, align 8
  br label %157

157:                                              ; preds = %131, %126
  %158 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %159 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %157
  %163 = load i64*, i64** %10, align 8
  %164 = bitcast i64* %163 to %struct.mwifiex_ie_types_min_rssi_threshold*
  store %struct.mwifiex_ie_types_min_rssi_threshold* %164, %struct.mwifiex_ie_types_min_rssi_threshold** %20, align 8
  %165 = load i32, i32* @TLV_TYPE_RSSI_LOW, align 4
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.mwifiex_ie_types_min_rssi_threshold*, %struct.mwifiex_ie_types_min_rssi_threshold** %20, align 8
  %168 = getelementptr inbounds %struct.mwifiex_ie_types_min_rssi_threshold, %struct.mwifiex_ie_types_min_rssi_threshold* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store i8* %166, i8** %169, align 8
  %170 = call i8* @cpu_to_le16(i32 8)
  %171 = load %struct.mwifiex_ie_types_min_rssi_threshold*, %struct.mwifiex_ie_types_min_rssi_threshold** %20, align 8
  %172 = getelementptr inbounds %struct.mwifiex_ie_types_min_rssi_threshold, %struct.mwifiex_ie_types_min_rssi_threshold* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  %174 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %175 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @cpu_to_le16(i32 %176)
  %178 = load %struct.mwifiex_ie_types_min_rssi_threshold*, %struct.mwifiex_ie_types_min_rssi_threshold** %20, align 8
  %179 = getelementptr inbounds %struct.mwifiex_ie_types_min_rssi_threshold, %struct.mwifiex_ie_types_min_rssi_threshold* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.mwifiex_ie_types_min_rssi_threshold*, %struct.mwifiex_ie_types_min_rssi_threshold** %20, align 8
  %181 = getelementptr inbounds %struct.mwifiex_ie_types_min_rssi_threshold, %struct.mwifiex_ie_types_min_rssi_threshold* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @le16_to_cpu(i8* %183)
  %185 = add i64 16, %184
  %186 = load i64*, i64** %10, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 %185
  store i64* %187, i64** %10, align 8
  br label %188

188:                                              ; preds = %162, %157
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %251, %188
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %192 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %254

195:                                              ; preds = %189
  %196 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %197 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %196, i32 0, i32 6
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %12, align 8
  %205 = load i64*, i64** %10, align 8
  %206 = bitcast i64* %205 to %struct.mwifiex_ie_types_wildcard_ssid_params*
  store %struct.mwifiex_ie_types_wildcard_ssid_params* %206, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %207 = load i32, i32* @TLV_TYPE_WILDCARDSSID, align 4
  %208 = call i8* @cpu_to_le16(i32 %207)
  %209 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %210 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  store i8* %208, i8** %211, align 8
  %212 = load i64, i64* %12, align 8
  %213 = add i64 %212, 8
  %214 = trunc i64 %213 to i32
  %215 = call i8* @cpu_to_le16(i32 %214)
  %216 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %217 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  store i8* %215, i8** %218, align 8
  %219 = load i64, i64* %12, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %195
  %222 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %223 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %222, i32 0, i32 2
  store i64 0, i64* %223, align 8
  br label %228

224:                                              ; preds = %195
  %225 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %226 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %227 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %226, i32 0, i32 2
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %224, %221
  %229 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %230 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %233 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %232, i32 0, i32 6
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i64, i64* %12, align 8
  %242 = call i32 @memcpy(i32 %231, i32 %240, i64 %241)
  %243 = load %struct.mwifiex_ie_types_wildcard_ssid_params*, %struct.mwifiex_ie_types_wildcard_ssid_params** %22, align 8
  %244 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, %struct.mwifiex_ie_types_wildcard_ssid_params* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i64 @le16_to_cpu(i8* %246)
  %248 = add i64 16, %247
  %249 = load i64*, i64** %10, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 %248
  store i64* %250, i64** %10, align 8
  br label %251

251:                                              ; preds = %228
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %17, align 4
  br label %189

254:                                              ; preds = %189
  %255 = load i64*, i64** %10, align 8
  %256 = bitcast i64* %255 to %struct.mwifiex_ie_types_chan_list_param_set*
  store %struct.mwifiex_ie_types_chan_list_param_set* %256, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %257 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %258 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %257, i32 0, i32 5
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %394

264:                                              ; preds = %254
  %265 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %266 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %265, i32 0, i32 0
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @dev_dbg(i32 %269, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %271 = load i32, i32* @TLV_TYPE_CHANLIST, align 4
  %272 = call i8* @cpu_to_le16(i32 %271)
  %273 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %274 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  store i8* %272, i8** %275, align 8
  store i64 0, i64* %13, align 8
  br label %276

276:                                              ; preds = %390, %264
  %277 = load i64, i64* %13, align 8
  %278 = load i64, i64* @MWIFIEX_BG_SCAN_CHAN_MAX, align 8
  %279 = icmp ult i64 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %282 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %281, i32 0, i32 5
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  %284 = load i64, i64* %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br label %289

289:                                              ; preds = %280, %276
  %290 = phi i1 [ false, %276 ], [ %288, %280 ]
  br i1 %290, label %291, label %393

291:                                              ; preds = %289
  %292 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %293 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %292, i32 0, i32 1
  %294 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %293, align 8
  %295 = load i64, i64* %13, align 8
  %296 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %294, i64 %295
  store %struct.mwifiex_chan_scan_param_set* %296, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %297 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %298 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = call i32 @le16_unaligned_add_cpu(i8** %299, i32 8)
  %301 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %302 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %301, i32 0, i32 5
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %302, align 8
  %304 = load i64, i64* %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %309 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %308, i32 0, i32 4
  store i64 %307, i64* %309, align 8
  %310 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %311 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %310, i32 0, i32 5
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load i64, i64* %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %318 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 4
  %319 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %320 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %319, i32 0, i32 5
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = load i64, i64* %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %14, align 8
  %326 = load i64, i64* %14, align 8
  %327 = load i64, i64* @MWIFIEX_SCAN_TYPE_PASSIVE, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %291
  %330 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %331 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %332 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 8
  br label %342

335:                                              ; preds = %291
  %336 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %337 = xor i32 %336, -1
  %338 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %339 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = and i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %335, %329
  %343 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %344 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %343, i32 0, i32 5
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = load i64, i64* %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %342
  %352 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %353 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %352, i32 0, i32 5
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %353, align 8
  %355 = load i64, i64* %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %15, align 8
  br label %379

361:                                              ; preds = %342
  %362 = load i64, i64* %14, align 8
  %363 = load i64, i64* @MWIFIEX_SCAN_TYPE_PASSIVE, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %367 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %366, i32 0, i32 0
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  br label %377

371:                                              ; preds = %361
  %372 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %373 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %372, i32 0, i32 0
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  br label %377

377:                                              ; preds = %371, %365
  %378 = phi i64 [ %370, %365 ], [ %376, %371 ]
  store i64 %378, i64* %15, align 8
  br label %379

379:                                              ; preds = %377, %351
  %380 = load i64, i64* %15, align 8
  %381 = trunc i64 %380 to i32
  %382 = call i8* @cpu_to_le16(i32 %381)
  %383 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %384 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %383, i32 0, i32 1
  store i8* %382, i8** %384, align 8
  %385 = load i64, i64* %15, align 8
  %386 = trunc i64 %385 to i32
  %387 = call i8* @cpu_to_le16(i32 %386)
  %388 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %24, align 8
  %389 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %388, i32 0, i32 0
  store i8* %387, i8** %389, align 8
  br label %390

390:                                              ; preds = %379
  %391 = load i64, i64* %13, align 8
  %392 = add i64 %391, 1
  store i64 %392, i64* %13, align 8
  br label %276

393:                                              ; preds = %289
  br label %414

394:                                              ; preds = %254
  %395 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %396 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %395, i32 0, i32 0
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @dev_dbg(i32 %399, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %401 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %402 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %403 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %404 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %403, i32 0, i32 1
  %405 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %404, align 8
  %406 = call i64 @mwifiex_bgscan_create_channel_list(%struct.mwifiex_private* %401, %struct.mwifiex_bg_scan_cfg* %402, %struct.mwifiex_chan_scan_param_set* %405)
  store i64 %406, i64* %16, align 8
  %407 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %408 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 0
  %410 = load i64, i64* %16, align 8
  %411 = mul i64 %410, 32
  %412 = trunc i64 %411 to i32
  %413 = call i32 @le16_unaligned_add_cpu(i8** %409, i32 %412)
  br label %414

414:                                              ; preds = %394, %393
  %415 = load %struct.mwifiex_ie_types_chan_list_param_set*, %struct.mwifiex_ie_types_chan_list_param_set** %23, align 8
  %416 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, %struct.mwifiex_ie_types_chan_list_param_set* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  %419 = call i64 @le16_to_cpu(i8* %418)
  %420 = add i64 16, %419
  %421 = load i64*, i64** %10, align 8
  %422 = getelementptr inbounds i64, i64* %421, i64 %420
  store i64* %422, i64** %10, align 8
  %423 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %424 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %453

427:                                              ; preds = %414
  %428 = load i64*, i64** %10, align 8
  %429 = bitcast i64* %428 to %struct.mwifiex_ie_types_bgscan_start_later*
  store %struct.mwifiex_ie_types_bgscan_start_later* %429, %struct.mwifiex_ie_types_bgscan_start_later** %21, align 8
  %430 = load i32, i32* @TLV_TYPE_BGSCAN_START_LATER, align 4
  %431 = call i8* @cpu_to_le16(i32 %430)
  %432 = load %struct.mwifiex_ie_types_bgscan_start_later*, %struct.mwifiex_ie_types_bgscan_start_later** %21, align 8
  %433 = getelementptr inbounds %struct.mwifiex_ie_types_bgscan_start_later, %struct.mwifiex_ie_types_bgscan_start_later* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 1
  store i8* %431, i8** %434, align 8
  %435 = call i8* @cpu_to_le16(i32 8)
  %436 = load %struct.mwifiex_ie_types_bgscan_start_later*, %struct.mwifiex_ie_types_bgscan_start_later** %21, align 8
  %437 = getelementptr inbounds %struct.mwifiex_ie_types_bgscan_start_later, %struct.mwifiex_ie_types_bgscan_start_later* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 0
  store i8* %435, i8** %438, align 8
  %439 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %9, align 8
  %440 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = call i8* @cpu_to_le16(i32 %441)
  %443 = load %struct.mwifiex_ie_types_bgscan_start_later*, %struct.mwifiex_ie_types_bgscan_start_later** %21, align 8
  %444 = getelementptr inbounds %struct.mwifiex_ie_types_bgscan_start_later, %struct.mwifiex_ie_types_bgscan_start_later* %443, i32 0, i32 1
  store i8* %442, i8** %444, align 8
  %445 = load %struct.mwifiex_ie_types_bgscan_start_later*, %struct.mwifiex_ie_types_bgscan_start_later** %21, align 8
  %446 = getelementptr inbounds %struct.mwifiex_ie_types_bgscan_start_later, %struct.mwifiex_ie_types_bgscan_start_later* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8
  %449 = call i64 @le16_to_cpu(i8* %448)
  %450 = add i64 16, %449
  %451 = load i64*, i64** %10, align 8
  %452 = getelementptr inbounds i64, i64* %451, i64 %450
  store i64* %452, i64** %10, align 8
  br label %453

453:                                              ; preds = %427, %414
  %454 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %455 = load i32, i32* @MWIFIEX_VSIE_MASK_BGSCAN, align 4
  %456 = call i32 @mwifiex_cmd_append_vsie_tlv(%struct.mwifiex_private* %454, i32 %455, i64** %10)
  %457 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %458 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %457, i32 0, i32 0
  %459 = load i64*, i64** %10, align 8
  %460 = load %struct.host_cmd_ds_802_11_bg_scan_config*, %struct.host_cmd_ds_802_11_bg_scan_config** %8, align 8
  %461 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, %struct.host_cmd_ds_802_11_bg_scan_config* %460, i32 0, i32 0
  %462 = load i64*, i64** %461, align 8
  %463 = ptrtoint i64* %459 to i64
  %464 = ptrtoint i64* %462 to i64
  %465 = sub i64 %463, %464
  %466 = sdiv exact i64 %465, 8
  %467 = trunc i64 %466 to i32
  %468 = call i32 @le16_unaligned_add_cpu(i8** %458, i32 %467)
  store i32 0, i32* %4, align 4
  br label %469

469:                                              ; preds = %453, %76
  %470 = load i32, i32* %4, align 4
  ret i32 %470
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @le16_unaligned_add_cpu(i8**, i32) #1

declare dso_local i64 @mwifiex_bgscan_create_channel_list(%struct.mwifiex_private*, %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_chan_scan_param_set*) #1

declare dso_local i32 @mwifiex_cmd_append_vsie_tlv(%struct.mwifiex_private*, i32, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
