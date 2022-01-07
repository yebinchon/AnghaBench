; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_tdls_oper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_tdls_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.station_parameters* }
%struct.station_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.host_cmd_ds_tdls_oper }
%struct.host_cmd_ds_tdls_oper = type { i8*, i32*, i64 }
%struct.mwifiex_ds_tdls_oper = type { i32, i32 }
%struct.host_cmd_tlv_rates = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.mwifiex_ie_types_htcap = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.mwifiex_ie_types_qos_info = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.mwifiex_ie_types_extcap = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.mwifiex_ie_types_vhtcap = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.mwifiex_ie_types_aid = type { i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.mwifiex_ie_types_tdls_idle_timeout = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8* }

@HostCmd_CMD_TDLS_OPER = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ACT_TDLS_DELETE = common dso_local global i32 0, align 4
@ACT_TDLS_CREATE = common dso_local global i32 0, align 4
@ACT_TDLS_CONFIG = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TDLS config params not available for %pM\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@WLAN_EID_QOS_CAPA = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_VHT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_AID = common dso_local global i32 0, align 4
@TLV_TYPE_TDLS_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@MWIFIEX_TDLS_IDLE_TIMEOUT_IN_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown TDLS operation\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*)* @mwifiex_cmd_tdls_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_tdls_oper(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.host_cmd_ds_tdls_oper*, align 8
  %9 = alloca %struct.mwifiex_ds_tdls_oper*, align 8
  %10 = alloca %struct.host_cmd_tlv_rates*, align 8
  %11 = alloca %struct.mwifiex_ie_types_htcap*, align 8
  %12 = alloca %struct.mwifiex_ie_types_qos_info*, align 8
  %13 = alloca %struct.mwifiex_ie_types_extcap*, align 8
  %14 = alloca %struct.mwifiex_ie_types_vhtcap*, align 8
  %15 = alloca %struct.mwifiex_ie_types_aid*, align 8
  %16 = alloca %struct.mwifiex_ie_types_tdls_idle_timeout*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.station_parameters*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.host_cmd_ds_tdls_oper* %22, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.mwifiex_ds_tdls_oper*
  store %struct.mwifiex_ds_tdls_oper* %24, %struct.mwifiex_ds_tdls_oper** %9, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 1
  %27 = load %struct.station_parameters*, %struct.station_parameters** %26, align 8
  store %struct.station_parameters* %27, %struct.station_parameters** %19, align 8
  %28 = load i32, i32* @HostCmd_CMD_TDLS_OPER, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @S_DS_GEN, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %35 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %37 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %36, i32 0, i32 0
  %38 = call i32 @le16_unaligned_add_cpu(i8** %37, i32 24)
  %39 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %40 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %42 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mwifiex_ds_tdls_oper*, %struct.mwifiex_ds_tdls_oper** %9, align 8
  %45 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32* %43, i32 %46, i32 %47)
  %49 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %50 = bitcast %struct.host_cmd_ds_tdls_oper* %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 24
  store i32* %51, i32** %17, align 8
  %52 = load %struct.mwifiex_ds_tdls_oper*, %struct.mwifiex_ds_tdls_oper** %9, align 8
  %53 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %321 [
    i32 128, label %55
    i32 129, label %60
    i32 130, label %65
  ]

55:                                               ; preds = %3
  %56 = load i32, i32* @ACT_TDLS_DELETE, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %59 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %329

60:                                               ; preds = %3
  %61 = load i32, i32* @ACT_TDLS_CREATE, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %64 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %329

65:                                               ; preds = %3
  %66 = load i32, i32* @ACT_TDLS_CONFIG, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %8, align 8
  %69 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %71 = icmp ne %struct.station_parameters* %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %65
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ERROR, align 4
  %77 = load %struct.mwifiex_ds_tdls_oper*, %struct.mwifiex_ds_tdls_oper** %9, align 8
  %78 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %75, i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ENODATA, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %334

83:                                               ; preds = %65
  %84 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %85 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @put_unaligned_le16(i32 %86, i32* %87)
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = bitcast i32* %96 to i8*
  %98 = bitcast i8* %97 to %struct.mwifiex_ie_types_qos_info*
  store %struct.mwifiex_ie_types_qos_info* %98, %struct.mwifiex_ie_types_qos_info** %12, align 8
  %99 = load i32, i32* @WLAN_EID_QOS_CAPA, align 4
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load %struct.mwifiex_ie_types_qos_info*, %struct.mwifiex_ie_types_qos_info** %12, align 8
  %102 = getelementptr inbounds %struct.mwifiex_ie_types_qos_info, %struct.mwifiex_ie_types_qos_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  %104 = call i8* @cpu_to_le16(i32 4)
  %105 = load %struct.mwifiex_ie_types_qos_info*, %struct.mwifiex_ie_types_qos_info** %12, align 8
  %106 = getelementptr inbounds %struct.mwifiex_ie_types_qos_info, %struct.mwifiex_ie_types_qos_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.mwifiex_ie_types_qos_info*, %struct.mwifiex_ie_types_qos_info** %12, align 8
  %109 = getelementptr inbounds %struct.mwifiex_ie_types_qos_info, %struct.mwifiex_ie_types_qos_info* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 24
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %115 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %83
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = bitcast i32* %122 to %struct.mwifiex_ie_types_htcap*
  store %struct.mwifiex_ie_types_htcap* %123, %struct.mwifiex_ie_types_htcap** %11, align 8
  %124 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %11, align 8
  %127 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i8* %125, i8** %128, align 8
  %129 = call i8* @cpu_to_le16(i32 4)
  %130 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %11, align 8
  %131 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %11, align 8
  %134 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %133, i32 0, i32 0
  %135 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %136 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memcpy(i32* %134, i32 %137, i32 4)
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 24
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %118, %83
  %144 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %145 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %143
  %149 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %150 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %148
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = bitcast i32* %157 to %struct.host_cmd_tlv_rates*
  store %struct.host_cmd_tlv_rates* %158, %struct.host_cmd_tlv_rates** %10, align 8
  %159 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %160 = call i8* @cpu_to_le16(i32 %159)
  %161 = load %struct.host_cmd_tlv_rates*, %struct.host_cmd_tlv_rates** %10, align 8
  %162 = getelementptr inbounds %struct.host_cmd_tlv_rates, %struct.host_cmd_tlv_rates* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %165 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_le16(i32 %166)
  %168 = load %struct.host_cmd_tlv_rates*, %struct.host_cmd_tlv_rates** %10, align 8
  %169 = getelementptr inbounds %struct.host_cmd_tlv_rates, %struct.host_cmd_tlv_rates* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  %171 = load %struct.host_cmd_tlv_rates*, %struct.host_cmd_tlv_rates** %10, align 8
  %172 = getelementptr inbounds %struct.host_cmd_tlv_rates, %struct.host_cmd_tlv_rates* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %175 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %178 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @memcpy(i32* %173, i32 %176, i32 %179)
  %181 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %182 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 24, %184
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = add i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %18, align 4
  br label %190

190:                                              ; preds = %153, %148, %143
  %191 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %192 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %237

195:                                              ; preds = %190
  %196 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %197 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %237

200:                                              ; preds = %195
  %201 = load i32*, i32** %17, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = bitcast i32* %204 to %struct.mwifiex_ie_types_extcap*
  store %struct.mwifiex_ie_types_extcap* %205, %struct.mwifiex_ie_types_extcap** %13, align 8
  %206 = load i32, i32* @WLAN_EID_EXT_CAPABILITY, align 4
  %207 = call i8* @cpu_to_le16(i32 %206)
  %208 = load %struct.mwifiex_ie_types_extcap*, %struct.mwifiex_ie_types_extcap** %13, align 8
  %209 = getelementptr inbounds %struct.mwifiex_ie_types_extcap, %struct.mwifiex_ie_types_extcap* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  store i8* %207, i8** %210, align 8
  %211 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %212 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @cpu_to_le16(i32 %213)
  %215 = load %struct.mwifiex_ie_types_extcap*, %struct.mwifiex_ie_types_extcap** %13, align 8
  %216 = getelementptr inbounds %struct.mwifiex_ie_types_extcap, %struct.mwifiex_ie_types_extcap* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  store i8* %214, i8** %217, align 8
  %218 = load %struct.mwifiex_ie_types_extcap*, %struct.mwifiex_ie_types_extcap** %13, align 8
  %219 = getelementptr inbounds %struct.mwifiex_ie_types_extcap, %struct.mwifiex_ie_types_extcap* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %222 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %225 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @memcpy(i32* %220, i32 %223, i32 %226)
  %228 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %229 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = add i64 24, %231
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = add i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %200, %195, %190
  %238 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %239 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %267

242:                                              ; preds = %237
  %243 = load i32*, i32** %17, align 8
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = bitcast i32* %246 to %struct.mwifiex_ie_types_vhtcap*
  store %struct.mwifiex_ie_types_vhtcap* %247, %struct.mwifiex_ie_types_vhtcap** %14, align 8
  %248 = load i32, i32* @WLAN_EID_VHT_CAPABILITY, align 4
  %249 = call i8* @cpu_to_le16(i32 %248)
  %250 = load %struct.mwifiex_ie_types_vhtcap*, %struct.mwifiex_ie_types_vhtcap** %14, align 8
  %251 = getelementptr inbounds %struct.mwifiex_ie_types_vhtcap, %struct.mwifiex_ie_types_vhtcap* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 1
  store i8* %249, i8** %252, align 8
  %253 = call i8* @cpu_to_le16(i32 4)
  %254 = load %struct.mwifiex_ie_types_vhtcap*, %struct.mwifiex_ie_types_vhtcap** %14, align 8
  %255 = getelementptr inbounds %struct.mwifiex_ie_types_vhtcap, %struct.mwifiex_ie_types_vhtcap* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  store i8* %253, i8** %256, align 8
  %257 = load %struct.mwifiex_ie_types_vhtcap*, %struct.mwifiex_ie_types_vhtcap** %14, align 8
  %258 = getelementptr inbounds %struct.mwifiex_ie_types_vhtcap, %struct.mwifiex_ie_types_vhtcap* %257, i32 0, i32 0
  %259 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %260 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @memcpy(i32* %258, i32 %261, i32 4)
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = add i64 %264, 24
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %18, align 4
  br label %267

267:                                              ; preds = %242, %237
  %268 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %269 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %297

272:                                              ; preds = %267
  %273 = load i32*, i32** %17, align 8
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = bitcast i32* %276 to %struct.mwifiex_ie_types_aid*
  store %struct.mwifiex_ie_types_aid* %277, %struct.mwifiex_ie_types_aid** %15, align 8
  %278 = load i32, i32* @WLAN_EID_AID, align 4
  %279 = call i8* @cpu_to_le16(i32 %278)
  %280 = load %struct.mwifiex_ie_types_aid*, %struct.mwifiex_ie_types_aid** %15, align 8
  %281 = getelementptr inbounds %struct.mwifiex_ie_types_aid, %struct.mwifiex_ie_types_aid* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  store i8* %279, i8** %282, align 8
  %283 = call i8* @cpu_to_le16(i32 4)
  %284 = load %struct.mwifiex_ie_types_aid*, %struct.mwifiex_ie_types_aid** %15, align 8
  %285 = getelementptr inbounds %struct.mwifiex_ie_types_aid, %struct.mwifiex_ie_types_aid* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  store i8* %283, i8** %286, align 8
  %287 = load %struct.station_parameters*, %struct.station_parameters** %19, align 8
  %288 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @cpu_to_le16(i32 %289)
  %291 = load %struct.mwifiex_ie_types_aid*, %struct.mwifiex_ie_types_aid** %15, align 8
  %292 = getelementptr inbounds %struct.mwifiex_ie_types_aid, %struct.mwifiex_ie_types_aid* %291, i32 0, i32 0
  store i8* %290, i8** %292, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = add i64 %294, 24
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %18, align 4
  br label %297

297:                                              ; preds = %272, %267
  %298 = load i32*, i32** %17, align 8
  %299 = load i32, i32* %18, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = bitcast i32* %301 to i8*
  %303 = bitcast i8* %302 to %struct.mwifiex_ie_types_tdls_idle_timeout*
  store %struct.mwifiex_ie_types_tdls_idle_timeout* %303, %struct.mwifiex_ie_types_tdls_idle_timeout** %16, align 8
  %304 = load i32, i32* @TLV_TYPE_TDLS_IDLE_TIMEOUT, align 4
  %305 = call i8* @cpu_to_le16(i32 %304)
  %306 = load %struct.mwifiex_ie_types_tdls_idle_timeout*, %struct.mwifiex_ie_types_tdls_idle_timeout** %16, align 8
  %307 = getelementptr inbounds %struct.mwifiex_ie_types_tdls_idle_timeout, %struct.mwifiex_ie_types_tdls_idle_timeout* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  store i8* %305, i8** %308, align 8
  %309 = call i8* @cpu_to_le16(i32 8)
  %310 = load %struct.mwifiex_ie_types_tdls_idle_timeout*, %struct.mwifiex_ie_types_tdls_idle_timeout** %16, align 8
  %311 = getelementptr inbounds %struct.mwifiex_ie_types_tdls_idle_timeout, %struct.mwifiex_ie_types_tdls_idle_timeout* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  store i8* %309, i8** %312, align 8
  %313 = load i32, i32* @MWIFIEX_TDLS_IDLE_TIMEOUT_IN_SEC, align 4
  %314 = call i8* @cpu_to_le16(i32 %313)
  %315 = load %struct.mwifiex_ie_types_tdls_idle_timeout*, %struct.mwifiex_ie_types_tdls_idle_timeout** %16, align 8
  %316 = getelementptr inbounds %struct.mwifiex_ie_types_tdls_idle_timeout, %struct.mwifiex_ie_types_tdls_idle_timeout* %315, i32 0, i32 0
  store i8* %314, i8** %316, align 8
  %317 = load i32, i32* %18, align 4
  %318 = sext i32 %317 to i64
  %319 = add i64 %318, 24
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %18, align 4
  br label %329

321:                                              ; preds = %3
  %322 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %323 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @ERROR, align 4
  %326 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %324, i32 %325, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %327 = load i32, i32* @ENOTSUPP, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %4, align 4
  br label %334

329:                                              ; preds = %297, %60, %55
  %330 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %331 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %330, i32 0, i32 0
  %332 = load i32, i32* %18, align 4
  %333 = call i32 @le16_unaligned_add_cpu(i8** %331, i32 %332)
  store i32 0, i32* %4, align 4
  br label %334

334:                                              ; preds = %329, %321, %72
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_unaligned_add_cpu(i8**, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
