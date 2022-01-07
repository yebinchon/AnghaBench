; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_ret_802_11_associate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_ret_802_11_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_22__, %struct.mwifiex_adapter*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, %struct.mwifiex_bssdescriptor*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.mwifiex_adapter = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.mwifiex_bssdescriptor = type { %struct.TYPE_12__, i64, i64, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.host_cmd_ds_command = type { %struct.mwifiex_bssdescriptor, i32 }
%struct.ieee_types_assoc_rsp = type { i32, i32, i32, i32 }
%struct.ieee80211_ht_operation = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ASSOC_RESP: failed, association terminated by host\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid AID value 0x%x; bits 15:14 not set\0A\00", align 1
@S_DS_GEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"ASSOC_RESP: failed,\09status code=%d err=%#x a_id=%#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"assoc failure: reason %s\0A\00", align 1
@CONNECT_ERR_ASSOC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@MWIFIEX_ASSOC_CMD_FAILURE_AUTH = common dso_local global i32 0, align 4
@WLAN_STATUS_AUTH_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"ASSOC_RESP: AUTH timeout\0A\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"ASSOC_RESP: UNSPECIFIED failure\0A\00", align 1
@PS_STATE_AWAKE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"info: ASSOC_RESP: %s\0A\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@IEEE80211_WMM_IE_AP_QOSINFO_UAPSD = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"info: ASSOC_RESP: curr_pkt_filter is %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"info: post association, re-enabling data flow\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"info: ASSOC_RESP: associated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_802_11_associate(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee_types_assoc_rsp*, align 8
  %8 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ieee80211_ht_operation*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 10
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %16, align 8
  store %struct.mwifiex_adapter* %17, %struct.mwifiex_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 24
  %20 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %19, align 8
  %21 = icmp ne %struct.mwifiex_bssdescriptor* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 10
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %24, align 8
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %25, i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %396

28:                                               ; preds = %2
  %29 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %29, i32 0, i32 0
  %31 = bitcast %struct.mwifiex_bssdescriptor* %30 to %struct.ieee_types_assoc_rsp*
  store %struct.ieee_types_assoc_rsp* %31, %struct.ieee_types_assoc_rsp** %7, align 8
  %32 = load %struct.ieee_types_assoc_rsp*, %struct.ieee_types_assoc_rsp** %7, align 8
  %33 = getelementptr inbounds %struct.ieee_types_assoc_rsp, %struct.ieee_types_assoc_rsp* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ieee_types_assoc_rsp*, %struct.ieee_types_assoc_rsp** %7, align 8
  %37 = getelementptr inbounds %struct.ieee_types_assoc_rsp, %struct.ieee_types_assoc_rsp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ieee_types_assoc_rsp*, %struct.ieee_types_assoc_rsp** %7, align 8
  %41 = getelementptr inbounds %struct.ieee_types_assoc_rsp, %struct.ieee_types_assoc_rsp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @BIT(i32 15)
  %46 = call i32 @BIT(i32 14)
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = call i32 @BIT(i32 15)
  %50 = call i32 @BIT(i32 14)
  %51 = or i32 %49, %50
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %28
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 10
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %55, align 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %28
  %62 = call i32 @BIT(i32 15)
  %63 = call i32 @BIT(i32 14)
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %69 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32, i32* @S_DS_GEN, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @min(i32 %73, i32 8)
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %76 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @cpu_to_le16(i32 %77)
  %79 = load %struct.ieee_types_assoc_rsp*, %struct.ieee_types_assoc_rsp** %7, align 8
  %80 = getelementptr inbounds %struct.ieee_types_assoc_rsp, %struct.ieee_types_assoc_rsp* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 25
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %85 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %84, i32 0, i32 0
  %86 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %87 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(%struct.TYPE_13__* %83, %struct.mwifiex_bssdescriptor* %85, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %61
  %93 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %93, i32 0, i32 10
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %94, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 10
  %102 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %101, align 8
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.ieee_types_assoc_rsp*, %struct.ieee_types_assoc_rsp** %7, align 8
  %107 = getelementptr inbounds %struct.ieee_types_assoc_rsp, %struct.ieee_types_assoc_rsp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %102, i32 %103, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i32 %109)
  %111 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %112 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %111, i32 0, i32 10
  %113 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %112, align 8
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @assoc_failure_reason_to_str(i32 %115)
  %117 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %113, i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @CONNECT_ERR_ASSOC_ERR_TIMEOUT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %92
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @MWIFIEX_ASSOC_CMD_FAILURE_AUTH, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32, i32* @WLAN_STATUS_AUTH_TIMEOUT, align 4
  store i32 %126, i32* %6, align 4
  %127 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %128 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %127, i32 0, i32 10
  %129 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %128, align 8
  %130 = load i32, i32* @ERROR, align 4
  %131 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %129, i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %139

132:                                              ; preds = %121
  %133 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %133, i32* %6, align 4
  %134 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %135 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %134, i32 0, i32 10
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %135, align 8
  %137 = load i32, i32* @ERROR, align 4
  %138 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %136, i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %132, %125
  br label %142

140:                                              ; preds = %92
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %139
  br label %396

143:                                              ; preds = %61
  %144 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %145 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* @PS_STATE_AWAKE, align 4
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %148 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %147, i32 0, i32 10
  %149 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %148, align 8
  %150 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %149, i32 0, i32 5
  store i32 %146, i32* %150, align 8
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %152 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %151, i32 0, i32 10
  %153 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %152, align 8
  %154 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %156 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %155, i32 0, i32 10
  %157 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %156, align 8
  %158 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  %159 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %160 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %159, i32 0, i32 24
  %161 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %160, align 8
  store %struct.mwifiex_bssdescriptor* %161, %struct.mwifiex_bssdescriptor** %8, align 8
  %162 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %163 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %162, i32 0, i32 10
  %164 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %163, align 8
  %165 = load i32, i32* @INFO, align 4
  %166 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %167 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %164, i32 %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %172 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 2
  %174 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %175 = call i32 @memcpy(%struct.TYPE_13__* %173, %struct.mwifiex_bssdescriptor* %174, i32 40)
  %176 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %177 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %182 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %181, i32 0, i32 9
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  store i32 %180, i32* %184, align 4
  %185 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %186 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %189 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 3
  store i64 %187, i64* %190, align 8
  %191 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %192 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %143
  %199 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %200 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  br label %206

202:                                              ; preds = %143
  %203 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %204 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %203, i32 0, i32 9
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %208 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %207, i32 0, i32 23
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %213 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %211, %206
  %217 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %218 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %217, i32 0, i32 9
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %224 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %223, i32 0, i32 2
  store i32 1, i32* %224, align 8
  br label %228

225:                                              ; preds = %216, %211
  %226 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %227 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %226, i32 0, i32 2
  store i32 0, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %222
  %229 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %230 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %229, i32 0, i32 9
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  store i32 0, i32* %231, align 4
  %232 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %233 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %228
  %237 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %238 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @IEEE80211_WMM_IE_AP_QOSINFO_UAPSD, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 1, i32 0
  %246 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %247 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %246, i32 0, i32 9
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  br label %249

249:                                              ; preds = %236, %228
  %250 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %251 = load %struct.ieee_types_assoc_rsp*, %struct.ieee_types_assoc_rsp** %7, align 8
  %252 = getelementptr inbounds %struct.ieee_types_assoc_rsp, %struct.ieee_types_assoc_rsp* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %255 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = sub i64 %257, 16
  %259 = trunc i64 %258 to i32
  %260 = call i64* @cfg80211_find_ie(i32 %250, i32 %253, i32 %259)
  store i64* %260, i64** %13, align 8
  %261 = load i64*, i64** %13, align 8
  %262 = icmp ne i64* %261, null
  br i1 %262, label %263, label %274

263:                                              ; preds = %249
  %264 = load i64*, i64** %13, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 4
  %266 = bitcast i64* %265 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %266, %struct.ieee80211_ht_operation** %14, align 8
  %267 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %14, align 8
  %268 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %271 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %270, i32 0, i32 22
  store i32 %269, i32* %271, align 4
  %272 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %273 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %272, i32 0, i32 3
  store i32 1, i32* %273, align 4
  br label %277

274:                                              ; preds = %249
  %275 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %276 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %275, i32 0, i32 3
  store i32 0, i32* %276, align 4
  br label %277

277:                                              ; preds = %274, %263
  %278 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %279 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %278, i32 0, i32 10
  %280 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %279, align 8
  %281 = load i32, i32* @INFO, align 4
  %282 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %283 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %282, i32 0, i32 21
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %280, i32 %281, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %284)
  %286 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %287 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %286, i32 0, i32 7
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %297, label %291

291:                                              ; preds = %277
  %292 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %293 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %292, i32 0, i32 7
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %291, %277
  %298 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %299 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %298, i32 0, i32 4
  store i32 0, i32* %299, align 8
  br label %300

300:                                              ; preds = %297, %291
  %301 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %302 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  store i32 0, i32* %9, align 4
  br label %311

306:                                              ; preds = %300
  %307 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %308 = call i32 @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private* %307, i32* null)
  %309 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %310 = call i32 @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private* %309)
  br label %311

311:                                              ; preds = %306, %305
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %316 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %315, i32 0, i32 10
  %317 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %316, align 8
  %318 = load i32, i32* @INFO, align 4
  %319 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %317, i32 %318, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %320

320:                                              ; preds = %314, %311
  %321 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %322 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %321, i32 0, i32 20
  store i64 0, i64* %322, align 8
  %323 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %324 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %323, i32 0, i32 19
  store i64 0, i64* %324, align 8
  %325 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %326 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %325, i32 0, i32 18
  store i64 0, i64* %326, align 8
  %327 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %328 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %327, i32 0, i32 17
  store i64 0, i64* %328, align 8
  %329 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %330 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %329, i32 0, i32 16
  store i64 0, i64* %330, align 8
  %331 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %332 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %331, i32 0, i32 15
  store i64 0, i64* %332, align 8
  %333 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %334 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %333, i32 0, i32 14
  store i64 0, i64* %334, align 8
  %335 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %336 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %335, i32 0, i32 13
  store i64 0, i64* %336, align 8
  %337 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %338 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %337, i32 0, i32 12
  store i64 0, i64* %338, align 8
  %339 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %340 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %339, i32 0, i32 11
  store i64 0, i64* %340, align 8
  %341 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %342 = call i32 @mwifiex_save_curr_bcn(%struct.mwifiex_private* %341)
  %343 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %344 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %343, i32 0, i32 10
  %345 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %344, align 8
  %346 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 8
  %350 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %351 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %350, i32 0, i32 10
  %352 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %351, align 8
  %353 = load i32, i32* @INFO, align 4
  %354 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %352, i32 %353, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %355 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %356 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %357 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @mwifiex_ralist_add(%struct.mwifiex_private* %355, i32 %360)
  %362 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %363 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %362, i32 0, i32 8
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @netif_carrier_ok(i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %320
  %368 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %369 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %368, i32 0, i32 8
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @netif_carrier_on(i32 %370)
  br label %372

372:                                              ; preds = %367, %320
  %373 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %374 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %373, i32 0, i32 8
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %377 = call i32 @mwifiex_wake_up_net_dev_queue(i32 %375, %struct.mwifiex_adapter* %376)
  %378 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %379 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %378, i32 0, i32 7
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %389, label %383

383:                                              ; preds = %372
  %384 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %385 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %384, i32 0, i32 7
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %383, %372
  %390 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %391 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %390, i32 0, i32 5
  store i32 1, i32* %391, align 4
  br label %395

392:                                              ; preds = %383
  %393 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %394 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %393, i32 0, i32 6
  store i32 1, i32* %394, align 8
  br label %395

395:                                              ; preds = %392, %389
  br label %396

396:                                              ; preds = %395, %142, %22
  %397 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %398 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %397, i32 0, i32 3
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %415

403:                                              ; preds = %396
  %404 = load i32, i32* %6, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %408 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 0
  store i32 -1, i32* %409, align 8
  br label %414

410:                                              ; preds = %403
  %411 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %412 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  store i32 0, i32* %413, align 8
  br label %414

414:                                              ; preds = %410, %406
  br label %415

415:                                              ; preds = %414, %396
  %416 = load i32, i32* %6, align 4
  ret i32 %416
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.mwifiex_bssdescriptor*, i32) #1

declare dso_local i32 @assoc_failure_reason_to_str(i32) #1

declare dso_local i64* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_save_curr_bcn(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_ralist_add(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mwifiex_wake_up_net_dev_queue(i32, %struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
