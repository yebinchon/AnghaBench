; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_ret_802_11_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_ret_802_11_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_11__, %struct.mwifiex_adapter* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.cfg80211_sched_scan_request* }
%struct.cfg80211_sched_scan_request = type { i32 }
%struct.mwifiex_adapter = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.cfg80211_wowlan_nd_match** }
%struct.cfg80211_wowlan_nd_match = type { i32, i32* }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.host_cmd_ds_802_11_scan_rsp, %struct.TYPE_7__ }
%struct.host_cmd_ds_802_11_scan_rsp = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { %struct.host_cmd_ds_802_11_scan_rsp }
%struct.mwifiex_ie_types_data = type { i32 }
%struct.mwifiex_ie_types_tsf_timestamp = type { i32* }
%struct.mwifiex_ie_types_chan_band_list_param_set = type { %struct.chan_band_param_set* }
%struct.chan_band_param_set = type { i32, i32 }

@HostCmd_CMD_802_11_BG_SCAN_QUERY = common dso_local global i32 0, align 4
@MWIFIEX_MAX_AP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SCAN_RESP: too many AP returned (%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"info: SCAN_RESP: bss_descript_size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"info: SCAN_RESP: returned %d APs before parsing\0A\00", align 1
@S_DS_GEN = common dso_local global i32 0, align 4
@TLV_TYPE_TSFTIMESTAMP = common dso_local global i32 0, align 4
@TLV_TYPE_CHANNELBANDLIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TSF_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_802_11_scan(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_scan_rsp*, align 8
  %8 = alloca %struct.mwifiex_ie_types_data*, align 8
  %9 = alloca %struct.mwifiex_ie_types_tsf_timestamp*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mwifiex_ie_types_chan_band_list_param_set*, align 8
  %16 = alloca %struct.chan_band_param_set*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.cfg80211_wowlan_nd_match*, align 8
  %21 = alloca %struct.cfg80211_sched_scan_request*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  store i32 0, i32* %5, align 4
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 1
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %23, align 8
  store %struct.mwifiex_adapter* %24, %struct.mwifiex_adapter** %6, align 8
  store i32 0, i32* %18, align 4
  store %struct.cfg80211_sched_scan_request* null, %struct.cfg80211_sched_scan_request** %21, align 8
  %25 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load i32, i32* @HostCmd_CMD_802_11_BG_SCAN_QUERY, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %36 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_scan_rsp* %38, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  br label %43

39:                                               ; preds = %2
  %40 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_scan_rsp* %42, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %45 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MWIFIEX_MAX_AP, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %51 = load i32, i32* @ERROR, align 4
  %52 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %53 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %50, i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %5, align 4
  br label %232

56:                                               ; preds = %43
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %58 = call i32 @mwifiex_11h_get_csa_closed_channel(%struct.mwifiex_private* %57)
  %59 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %60 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16_to_cpu(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %64 = load i32, i32* @INFO, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %63, i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %68 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @le16_to_cpu(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %72 = load i32, i32* @INFO, align 4
  %73 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %74 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %71, i32 %72, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %78 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 4
  %85 = add i64 %84, 4
  %86 = load i32, i32* @S_DS_GEN, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %85, %87
  %89 = sub i64 %81, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %92 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = bitcast i32* %96 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %97, %struct.mwifiex_ie_types_data** %8, align 8
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %99 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @TLV_TYPE_TSFTIMESTAMP, align 4
  %102 = bitcast %struct.mwifiex_ie_types_tsf_timestamp** %9 to %struct.mwifiex_ie_types_data**
  %103 = call i32 @mwifiex_ret_802_11_scan_get_tlv_ptrs(%struct.mwifiex_adapter* %98, %struct.mwifiex_ie_types_data* %99, i32 %100, i32 %101, %struct.mwifiex_ie_types_data** %102)
  %104 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %105 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %8, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @TLV_TYPE_CHANNELBANDLIST, align 4
  %108 = bitcast %struct.mwifiex_ie_types_chan_band_list_param_set** %15 to %struct.mwifiex_ie_types_data**
  %109 = call i32 @mwifiex_ret_802_11_scan_get_tlv_ptrs(%struct.mwifiex_adapter* %104, %struct.mwifiex_ie_types_data* %105, i32 %106, i32 %107, %struct.mwifiex_ie_types_data** %108)
  %110 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %21, align 8
  %111 = icmp ne %struct.cfg80211_sched_scan_request* %110, null
  br i1 %111, label %112, label %138

112:                                              ; preds = %56
  %113 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %114 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 8, %116
  %118 = add i64 16, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @GFP_ATOMIC, align 4
  %121 = call i8* @kzalloc(i32 %119, i32 %120)
  %122 = bitcast i8* %121 to %struct.TYPE_12__*
  %123 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %124 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %123, i32 0, i32 0
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %124, align 8
  %125 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = icmp ne %struct.TYPE_12__* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %112
  %130 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %131 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %134 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  br label %137

137:                                              ; preds = %129, %112
  br label %138

138:                                              ; preds = %137, %56
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %228, %138
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.host_cmd_ds_802_11_scan_rsp*, %struct.host_cmd_ds_802_11_scan_rsp** %7, align 8
  %142 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, %struct.host_cmd_ds_802_11_scan_rsp* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %145, %139
  %149 = phi i1 [ false, %139 ], [ %147, %145 ]
  br i1 %149, label %150, label %231

150:                                              ; preds = %148
  %151 = load %struct.mwifiex_ie_types_tsf_timestamp*, %struct.mwifiex_ie_types_tsf_timestamp** %9, align 8
  %152 = icmp ne %struct.mwifiex_ie_types_tsf_timestamp* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.mwifiex_ie_types_tsf_timestamp*, %struct.mwifiex_ie_types_tsf_timestamp** %9, align 8
  %155 = getelementptr inbounds %struct.mwifiex_ie_types_tsf_timestamp, %struct.mwifiex_ie_types_tsf_timestamp* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @TSF_DATA_SIZE, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = call i32 @memcpy(i32* %18, i32* %161, i32 4)
  br label %163

163:                                              ; preds = %153, %150
  %164 = load %struct.mwifiex_ie_types_chan_band_list_param_set*, %struct.mwifiex_ie_types_chan_band_list_param_set** %15, align 8
  %165 = icmp ne %struct.mwifiex_ie_types_chan_band_list_param_set* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load %struct.mwifiex_ie_types_chan_band_list_param_set*, %struct.mwifiex_ie_types_chan_band_list_param_set** %15, align 8
  %168 = getelementptr inbounds %struct.mwifiex_ie_types_chan_band_list_param_set, %struct.mwifiex_ie_types_chan_band_list_param_set* %167, i32 0, i32 0
  %169 = load %struct.chan_band_param_set*, %struct.chan_band_param_set** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.chan_band_param_set, %struct.chan_band_param_set* %169, i64 %171
  store %struct.chan_band_param_set* %172, %struct.chan_band_param_set** %16, align 8
  %173 = load %struct.chan_band_param_set*, %struct.chan_band_param_set** %16, align 8
  %174 = getelementptr inbounds %struct.chan_band_param_set, %struct.chan_band_param_set* %173, i32 0, i32 0
  store i32* %174, i32** %19, align 8
  br label %176

175:                                              ; preds = %163
  store i32* null, i32** %19, align 8
  br label %176

176:                                              ; preds = %175, %166
  %177 = load %struct.mwifiex_ie_types_chan_band_list_param_set*, %struct.mwifiex_ie_types_chan_band_list_param_set** %15, align 8
  %178 = icmp ne %struct.mwifiex_ie_types_chan_band_list_param_set* %177, null
  br i1 %178, label %179, label %218

179:                                              ; preds = %176
  %180 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %181 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %180, i32 0, i32 0
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = icmp ne %struct.TYPE_12__* %182, null
  br i1 %183, label %184, label %218

184:                                              ; preds = %179
  %185 = load i32, i32* @GFP_ATOMIC, align 4
  %186 = call i8* @kzalloc(i32 20, i32 %185)
  %187 = bitcast i8* %186 to %struct.cfg80211_wowlan_nd_match*
  %188 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %189 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load %struct.cfg80211_wowlan_nd_match**, %struct.cfg80211_wowlan_nd_match*** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %192, i64 %194
  store %struct.cfg80211_wowlan_nd_match* %187, %struct.cfg80211_wowlan_nd_match** %195, align 8
  %196 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %197 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %196, i32 0, i32 0
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load %struct.cfg80211_wowlan_nd_match**, %struct.cfg80211_wowlan_nd_match*** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %200, i64 %202
  %204 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %203, align 8
  store %struct.cfg80211_wowlan_nd_match* %204, %struct.cfg80211_wowlan_nd_match** %20, align 8
  %205 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %20, align 8
  %206 = icmp ne %struct.cfg80211_wowlan_nd_match* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %184
  %208 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %20, align 8
  %209 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, %struct.cfg80211_wowlan_nd_match* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.chan_band_param_set*, %struct.chan_band_param_set** %16, align 8
  %211 = getelementptr inbounds %struct.chan_band_param_set, %struct.chan_band_param_set* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %20, align 8
  %214 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, %struct.cfg80211_wowlan_nd_match* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %207, %184
  br label %218

218:                                              ; preds = %217, %179, %176
  %219 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @le64_to_cpu(i32 %220)
  %222 = load i32*, i32** %19, align 8
  %223 = call i32 @mwifiex_parse_single_response_buf(%struct.mwifiex_private* %219, i32** %10, i32* %12, i32 %221, i32* %222, i32 0, i32 0)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %232

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %139

231:                                              ; preds = %148
  br label %232

232:                                              ; preds = %231, %226, %49
  %233 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %234 = call i32 @mwifiex_check_next_scan_command(%struct.mwifiex_private* %233)
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i32 @mwifiex_11h_get_csa_closed_channel(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_ret_802_11_scan_get_tlv_ptrs(%struct.mwifiex_adapter*, %struct.mwifiex_ie_types_data*, i32, i32, %struct.mwifiex_ie_types_data**) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mwifiex_parse_single_response_buf(%struct.mwifiex_private*, i32**, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mwifiex_check_next_scan_command(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
