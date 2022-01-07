; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_dump_station_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_dump_station_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.mwifiex_sta_node = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.station_info = type { i32, %struct.TYPE_9__, %struct.TYPE_12__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@NL80211_STA_INFO_RX_BYTES = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BYTES = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL_AVG = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NL80211_STA_INFO_INACTIVE_TIME = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_FAILED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HostCmd_CMD_RSSI_INFO = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get signal information\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"getting data rate error\0A\00", align 1
@HostCmd_CMD_802_11_SNMP_MIB = common dso_local global i32 0, align 4
@DTIM_PERIOD_I = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_BITRATE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_STA_INFO_BSS_PARAM = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_sta_node*, %struct.station_info*)* @mwifiex_dump_station_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_dump_station_info(%struct.mwifiex_private* %0, %struct.mwifiex_sta_node* %1, %struct.station_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  %7 = alloca %struct.station_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_sta_node* %1, %struct.mwifiex_sta_node** %6, align 8
  store %struct.station_info* %2, %struct.station_info** %7, align 8
  %9 = load i32, i32* @NL80211_STA_INFO_RX_BYTES, align 4
  %10 = call i32 @BIT_ULL(i32 %9)
  %11 = load i32, i32* @NL80211_STA_INFO_TX_BYTES, align 4
  %12 = call i32 @BIT_ULL(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @NL80211_STA_INFO_RX_PACKETS, align 4
  %15 = call i32 @BIT_ULL(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @NL80211_STA_INFO_TX_PACKETS, align 4
  %18 = call i32 @BIT_ULL(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %21 = call i32 @BIT_ULL(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %24 = call i32 @BIT_ULL(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @NL80211_STA_INFO_SIGNAL_AVG, align 4
  %27 = call i32 @BIT_ULL(i32 %26)
  %28 = or i32 %25, %27
  %29 = load %struct.station_info*, %struct.station_info** %7, align 8
  %30 = getelementptr inbounds %struct.station_info, %struct.station_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %32 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %31)
  %33 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %121

35:                                               ; preds = %3
  %36 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %37 = icmp ne %struct.mwifiex_sta_node* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %282

41:                                               ; preds = %35
  %42 = load i32, i32* @NL80211_STA_INFO_INACTIVE_TIME, align 4
  %43 = call i32 @BIT_ULL(i32 %42)
  %44 = load i32, i32* @NL80211_STA_INFO_TX_FAILED, align 4
  %45 = call i32 @BIT_ULL(i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.station_info*, %struct.station_info** %7, align 8
  %48 = getelementptr inbounds %struct.station_info, %struct.station_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* @jiffies, align 8
  %52 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %53 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %51, %55
  %57 = call i32 @jiffies_to_msecs(i64 %56)
  %58 = load %struct.station_info*, %struct.station_info** %7, align 8
  %59 = getelementptr inbounds %struct.station_info, %struct.station_info* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %61 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.station_info*, %struct.station_info** %7, align 8
  %65 = getelementptr inbounds %struct.station_info, %struct.station_info* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %67 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.station_info*, %struct.station_info** %7, align 8
  %71 = getelementptr inbounds %struct.station_info, %struct.station_info* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %73 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.station_info*, %struct.station_info** %7, align 8
  %77 = getelementptr inbounds %struct.station_info, %struct.station_info* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %79 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.station_info*, %struct.station_info** %7, align 8
  %83 = getelementptr inbounds %struct.station_info, %struct.station_info* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %85 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.station_info*, %struct.station_info** %7, align 8
  %89 = getelementptr inbounds %struct.station_info, %struct.station_info* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %91 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.station_info*, %struct.station_info** %7, align 8
  %95 = getelementptr inbounds %struct.station_info, %struct.station_info* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %97 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.station_info*, %struct.station_info** %7, align 8
  %101 = getelementptr inbounds %struct.station_info, %struct.station_info* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %104 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %107 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.station_info*, %struct.station_info** %7, align 8
  %111 = getelementptr inbounds %struct.station_info, %struct.station_info* %110, i32 0, i32 3
  %112 = call i32 @mwifiex_parse_htinfo(%struct.mwifiex_private* %102, i32 %105, i32 %109, %struct.TYPE_12__* %111)
  %113 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %114 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 5
  %118 = load %struct.station_info*, %struct.station_info** %7, align 8
  %119 = getelementptr inbounds %struct.station_info, %struct.station_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %282

121:                                              ; preds = %3
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %123 = load i32, i32* @HostCmd_CMD_RSSI_INFO, align 4
  %124 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %125 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %122, i32 %123, i32 %124, i32 0, i32* null, i32 1)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ERROR, align 4
  %132 = call i32 @mwifiex_dbg(i32 %130, i32 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* @EFAULT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %282

135:                                              ; preds = %121
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %137 = call i64 @mwifiex_drv_get_data_rate(%struct.mwifiex_private* %136, i32* %8)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %141 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ERROR, align 4
  %144 = call i32 @mwifiex_dbg(i32 %142, i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* @EFAULT, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %282

147:                                              ; preds = %135
  %148 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %149 = load i32, i32* @HostCmd_CMD_802_11_SNMP_MIB, align 4
  %150 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %151 = load i32, i32* @DTIM_PERIOD_I, align 4
  %152 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %153 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %152, i32 0, i32 2
  %154 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %148, i32 %149, i32 %150, i32 %151, i32* %153, i32 1)
  %155 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %156 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %157 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %160 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.station_info*, %struct.station_info** %7, align 8
  %163 = getelementptr inbounds %struct.station_info, %struct.station_info* %162, i32 0, i32 3
  %164 = call i32 @mwifiex_parse_htinfo(%struct.mwifiex_private* %155, i32 %158, i32 %161, %struct.TYPE_12__* %163)
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %166 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.station_info*, %struct.station_info** %7, align 8
  %169 = getelementptr inbounds %struct.station_info, %struct.station_info* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 4
  %170 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %171 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.station_info*, %struct.station_info** %7, align 8
  %175 = getelementptr inbounds %struct.station_info, %struct.station_info* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 4
  %176 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %177 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.station_info*, %struct.station_info** %7, align 8
  %181 = getelementptr inbounds %struct.station_info, %struct.station_info* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  %182 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %183 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.station_info*, %struct.station_info** %7, align 8
  %187 = getelementptr inbounds %struct.station_info, %struct.station_info* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %189 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.station_info*, %struct.station_info** %7, align 8
  %193 = getelementptr inbounds %struct.station_info, %struct.station_info* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %195 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.station_info*, %struct.station_info** %7, align 8
  %198 = getelementptr inbounds %struct.station_info, %struct.station_info* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %8, align 4
  %200 = mul nsw i32 %199, 5
  %201 = load %struct.station_info*, %struct.station_info** %7, align 8
  %202 = getelementptr inbounds %struct.station_info, %struct.station_info* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 4
  %204 = load i32, i32* @NL80211_STA_INFO_RX_BITRATE, align 4
  %205 = call i32 @BIT(i32 %204)
  %206 = load %struct.station_info*, %struct.station_info** %7, align 8
  %207 = getelementptr inbounds %struct.station_info, %struct.station_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %211 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %212 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %215 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.station_info*, %struct.station_info** %7, align 8
  %218 = getelementptr inbounds %struct.station_info, %struct.station_info* %217, i32 0, i32 2
  %219 = call i32 @mwifiex_parse_htinfo(%struct.mwifiex_private* %210, i32 %213, i32 %216, %struct.TYPE_12__* %218)
  %220 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %221 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %281

225:                                              ; preds = %147
  %226 = load i32, i32* @NL80211_STA_INFO_BSS_PARAM, align 4
  %227 = call i32 @BIT_ULL(i32 %226)
  %228 = load %struct.station_info*, %struct.station_info** %7, align 8
  %229 = getelementptr inbounds %struct.station_info, %struct.station_info* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load %struct.station_info*, %struct.station_info** %7, align 8
  %233 = getelementptr inbounds %struct.station_info, %struct.station_info* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 2
  store i32 0, i32* %234, align 4
  %235 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %236 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %225
  %244 = load i32, i32* @BSS_PARAM_FLAGS_SHORT_PREAMBLE, align 4
  %245 = load %struct.station_info*, %struct.station_info** %7, align 8
  %246 = getelementptr inbounds %struct.station_info, %struct.station_info* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %243, %225
  %251 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %252 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %250
  %260 = load i32, i32* @BSS_PARAM_FLAGS_SHORT_SLOT_TIME, align 4
  %261 = load %struct.station_info*, %struct.station_info** %7, align 8
  %262 = getelementptr inbounds %struct.station_info, %struct.station_info* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %260
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %259, %250
  %267 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %268 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.station_info*, %struct.station_info** %7, align 8
  %271 = getelementptr inbounds %struct.station_info, %struct.station_info* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 4
  %273 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %274 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.station_info*, %struct.station_info** %7, align 8
  %279 = getelementptr inbounds %struct.station_info, %struct.station_info* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  store i32 %277, i32* %280, align 4
  br label %281

281:                                              ; preds = %266, %147
  store i32 0, i32* %4, align 4
  br label %282

282:                                              ; preds = %281, %139, %127, %41, %38
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mwifiex_parse_htinfo(%struct.mwifiex_private*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i64 @mwifiex_drv_get_data_rate(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
