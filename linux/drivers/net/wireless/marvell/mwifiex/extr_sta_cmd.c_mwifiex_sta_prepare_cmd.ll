; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_sta_prepare_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_sta_prepare_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.mwifiex_hs_config_param = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"0x%x command not supported by firmware\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@MWIFIEX_HW_STATUS_RESET = common dso_local global i32 0, align 4
@MWIFIEX_HW_STATUS_READY = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cmd: WMM: WMM_GET_STATUS cmd sent\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@CONNECTION_TYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@CONNECTION_TYPE_INFRA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@CONNECTION_TYPE_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"PREP_CMD: unknown cmd- %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_sta_prepare_cmd(%struct.mwifiex_private* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.host_cmd_ds_command*, align 8
  %15 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.host_cmd_ds_command*
  store %struct.host_cmd_ds_command* %17, %struct.host_cmd_ds_command** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @mwifiex_is_cmd_supported(%struct.mwifiex_private* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %6
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_13__* %25, i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %549

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %540 [
    i32 157, label %33
    i32 164, label %37
    i32 154, label %42
    i32 174, label %48
    i32 153, label %53
    i32 130, label %58
    i32 131, label %64
    i32 139, label %69
    i32 141, label %75
    i32 173, label %81
    i32 177, label %88
    i32 172, label %95
    i32 182, label %99
    i32 181, label %104
    i32 183, label %107
    i32 180, label %112
    i32 185, label %117
    i32 178, label %122
    i32 186, label %125
    i32 184, label %130
    i32 137, label %133
    i32 170, label %138
    i32 168, label %145
    i32 129, label %158
    i32 148, label %181
    i32 142, label %207
    i32 192, label %223
    i32 146, label %229
    i32 147, label %255
    i32 160, label %281
    i32 159, label %304
    i32 191, label %318
    i32 188, label %322
    i32 190, label %326
    i32 175, label %331
    i32 187, label %338
    i32 143, label %343
    i32 167, label %349
    i32 189, label %354
    i32 128, label %360
    i32 176, label %376
    i32 171, label %381
    i32 149, label %386
    i32 152, label %391
    i32 166, label %391
    i32 140, label %391
    i32 144, label %391
    i32 165, label %391
    i32 179, label %391
    i32 135, label %396
    i32 145, label %458
    i32 169, label %463
    i32 150, label %468
    i32 161, label %473
    i32 132, label %479
    i32 133, label %484
    i32 162, label %490
    i32 136, label %495
    i32 155, label %500
    i32 151, label %504
    i32 138, label %510
    i32 156, label %516
    i32 163, label %522
    i32 158, label %527
    i32 134, label %536
  ]

33:                                               ; preds = %31
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %35 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %36 = call i32 @mwifiex_cmd_get_hw_spec(%struct.mwifiex_private* %34, %struct.host_cmd_ds_command* %35)
  store i32 %36, i32* %15, align 4
  br label %547

37:                                               ; preds = %31
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %39 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @mwifiex_cmd_cfg_data(%struct.mwifiex_private* %38, %struct.host_cmd_ds_command* %39, i8* %40)
  store i32 %41, i32* %15, align 4
  br label %547

42:                                               ; preds = %31
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %44 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @mwifiex_cmd_mac_control(%struct.mwifiex_private* %43, %struct.host_cmd_ds_command* %44, i32 %45, i8* %46)
  store i32 %47, i32* %15, align 4
  br label %547

48:                                               ; preds = %31
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %50 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @mwifiex_cmd_802_11_mac_address(%struct.mwifiex_private* %49, %struct.host_cmd_ds_command* %50, i32 %51)
  store i32 %52, i32* %15, align 4
  br label %547

53:                                               ; preds = %31
  %54 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @mwifiex_cmd_mac_multicast_adr(%struct.host_cmd_ds_command* %54, i32 %55, i8* %56)
  store i32 %57, i32* %15, align 4
  br label %547

58:                                               ; preds = %31
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %60 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @mwifiex_cmd_tx_rate_cfg(%struct.mwifiex_private* %59, %struct.host_cmd_ds_command* %60, i32 %61, i8* %62)
  store i32 %63, i32* %15, align 4
  br label %547

64:                                               ; preds = %31
  %65 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @mwifiex_cmd_tx_power_cfg(%struct.host_cmd_ds_command* %65, i32 %66, i8* %67)
  store i32 %68, i32* %15, align 4
  br label %547

69:                                               ; preds = %31
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %71 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @mwifiex_cmd_rf_tx_power(%struct.mwifiex_private* %70, %struct.host_cmd_ds_command* %71, i32 %72, i8* %73)
  store i32 %74, i32* %15, align 4
  br label %547

75:                                               ; preds = %31
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %77 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @mwifiex_cmd_rf_antenna(%struct.mwifiex_private* %76, %struct.host_cmd_ds_command* %77, i32 %78, i8* %79)
  store i32 %80, i32* %15, align 4
  br label %547

81:                                               ; preds = %31
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %83 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @mwifiex_cmd_enh_power_mode(%struct.mwifiex_private* %82, %struct.host_cmd_ds_command* %83, i32 %84, i32 %85, i8* %86)
  store i32 %87, i32* %15, align 4
  br label %547

88:                                               ; preds = %31
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %90 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = bitcast i8* %92 to %struct.mwifiex_hs_config_param*
  %94 = call i32 @mwifiex_cmd_802_11_hs_cfg(%struct.mwifiex_private* %89, %struct.host_cmd_ds_command* %90, i32 %91, %struct.mwifiex_hs_config_param* %93)
  store i32 %94, i32* %15, align 4
  br label %547

95:                                               ; preds = %31
  %96 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @mwifiex_cmd_802_11_scan(%struct.host_cmd_ds_command* %96, i8* %97)
  store i32 %98, i32* %15, align 4
  br label %547

99:                                               ; preds = %31
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %101 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @mwifiex_cmd_802_11_bg_scan_config(%struct.mwifiex_private* %100, %struct.host_cmd_ds_command* %101, i8* %102)
  store i32 %103, i32* %15, align 4
  br label %547

104:                                              ; preds = %31
  %105 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %106 = call i32 @mwifiex_cmd_802_11_bg_scan_query(%struct.host_cmd_ds_command* %105)
  store i32 %106, i32* %15, align 4
  br label %547

107:                                              ; preds = %31
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %109 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @mwifiex_cmd_802_11_associate(%struct.mwifiex_private* %108, %struct.host_cmd_ds_command* %109, i8* %110)
  store i32 %111, i32* %15, align 4
  br label %547

112:                                              ; preds = %31
  %113 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %114 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @mwifiex_cmd_802_11_deauthenticate(%struct.mwifiex_private* %113, %struct.host_cmd_ds_command* %114, i8* %115)
  store i32 %116, i32* %15, align 4
  br label %547

117:                                              ; preds = %31
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %119 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @mwifiex_cmd_802_11_ad_hoc_start(%struct.mwifiex_private* %118, %struct.host_cmd_ds_command* %119, i8* %120)
  store i32 %121, i32* %15, align 4
  br label %547

122:                                              ; preds = %31
  %123 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %124 = call i32 @mwifiex_cmd_802_11_get_log(%struct.host_cmd_ds_command* %123)
  store i32 %124, i32* %15, align 4
  br label %547

125:                                              ; preds = %31
  %126 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %127 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @mwifiex_cmd_802_11_ad_hoc_join(%struct.mwifiex_private* %126, %struct.host_cmd_ds_command* %127, i8* %128)
  store i32 %129, i32* %15, align 4
  br label %547

130:                                              ; preds = %31
  %131 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %132 = call i32 @mwifiex_cmd_802_11_ad_hoc_stop(%struct.host_cmd_ds_command* %131)
  store i32 %132, i32* %15, align 4
  br label %547

133:                                              ; preds = %31
  %134 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %135 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @mwifiex_cmd_802_11_rssi_info(%struct.mwifiex_private* %134, %struct.host_cmd_ds_command* %135, i32 %136)
  store i32 %137, i32* %15, align 4
  br label %547

138:                                              ; preds = %31
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %140 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @mwifiex_cmd_802_11_snmp_mib(%struct.mwifiex_private* %139, %struct.host_cmd_ds_command* %140, i32 %141, i32 %142, i8* %143)
  store i32 %144, i32* %15, align 4
  br label %547

145:                                              ; preds = %31
  %146 = call i8* @cpu_to_le16(i32 168)
  %147 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %148 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @S_DS_GEN, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 4, %150
  %152 = trunc i64 %151 to i32
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %155 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %157 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  store i32 0, i32* %15, align 4
  br label %547

158:                                              ; preds = %31
  %159 = load i32, i32* %9, align 4
  %160 = call i8* @cpu_to_le16(i32 %159)
  %161 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %162 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = call i32 @get_unaligned(i32* %164)
  %166 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %167 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  %170 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %171 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %170, i32 0, i32 2
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 @memcpy(%struct.TYPE_14__* %171, i8* %172, i32 4)
  %174 = load i32, i32* @S_DS_GEN, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 4, %175
  %177 = trunc i64 %176 to i32
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %180 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  store i32 0, i32* %15, align 4
  br label %547

181:                                              ; preds = %31
  %182 = load i32, i32* %9, align 4
  %183 = call i8* @cpu_to_le16(i32 %182)
  %184 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %185 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i8* @cpu_to_le16(i32 %186)
  %188 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %189 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  store i8* %187, i8** %191, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = bitcast i8* %192 to i32*
  %194 = call i32 @get_unaligned(i32* %193)
  %195 = call i32 @cpu_to_le32(i32 %194)
  %196 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %197 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 %195, i32* %199, align 8
  %200 = load i32, i32* @S_DS_GEN, align 4
  %201 = sext i32 %200 to i64
  %202 = add i64 4, %201
  %203 = trunc i64 %202 to i32
  %204 = call i8* @cpu_to_le16(i32 %203)
  %205 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %206 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  store i32 0, i32* %15, align 4
  br label %547

207:                                              ; preds = %31
  %208 = load i32, i32* %9, align 4
  %209 = call i8* @cpu_to_le16(i32 %208)
  %210 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %211 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %213 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %212, i32 0, i32 2
  %214 = load i8*, i8** %12, align 8
  %215 = call i32 @memcpy(%struct.TYPE_14__* %213, i8* %214, i32 4)
  %216 = load i32, i32* @S_DS_GEN, align 4
  %217 = sext i32 %216 to i64
  %218 = add i64 4, %217
  %219 = trunc i64 %218 to i32
  %220 = call i8* @cpu_to_le16(i32 %219)
  %221 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %222 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  br label %547

223:                                              ; preds = %31
  %224 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %225 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load i8*, i8** %12, align 8
  %228 = call i32 @mwifiex_cmd_11ac_cfg(%struct.mwifiex_private* %224, %struct.host_cmd_ds_command* %225, i32 %226, i8* %227)
  store i32 %228, i32* %15, align 4
  br label %547

229:                                              ; preds = %31
  %230 = load i32, i32* %9, align 4
  %231 = call i8* @cpu_to_le16(i32 %230)
  %232 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %233 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %232, i32 0, i32 1
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %10, align 4
  %235 = call i8* @cpu_to_le16(i32 %234)
  %236 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %237 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i8* %235, i8** %239, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = bitcast i8* %240 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @cpu_to_le16(i32 %242)
  %244 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %245 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  store i8* %243, i8** %247, align 8
  %248 = load i32, i32* @S_DS_GEN, align 4
  %249 = sext i32 %248 to i64
  %250 = add i64 4, %249
  %251 = trunc i64 %250 to i32
  %252 = call i8* @cpu_to_le16(i32 %251)
  %253 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %254 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %253, i32 0, i32 0
  store i8* %252, i8** %254, align 8
  br label %547

255:                                              ; preds = %31
  %256 = load i32, i32* %9, align 4
  %257 = call i8* @cpu_to_le16(i32 %256)
  %258 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %259 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %258, i32 0, i32 1
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* %10, align 4
  %261 = call i8* @cpu_to_le16(i32 %260)
  %262 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %263 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  store i8* %261, i8** %265, align 8
  %266 = load i8*, i8** %12, align 8
  %267 = bitcast i8* %266 to i32*
  %268 = call i32 @get_unaligned(i32* %267)
  %269 = call i8* @cpu_to_le16(i32 %268)
  %270 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %271 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  store i8* %269, i8** %273, align 8
  %274 = load i32, i32* @S_DS_GEN, align 4
  %275 = sext i32 %274 to i64
  %276 = add i64 4, %275
  %277 = trunc i64 %276 to i32
  %278 = call i8* @cpu_to_le16(i32 %277)
  %279 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %280 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  br label %547

281:                                              ; preds = %31
  %282 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %283 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %282, i32 0, i32 0
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @MWIFIEX_HW_STATUS_RESET, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %281
  %290 = load i32, i32* @MWIFIEX_HW_STATUS_READY, align 4
  %291 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %292 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %291, i32 0, i32 0
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  store i32 %290, i32* %294, align 4
  br label %295

295:                                              ; preds = %289, %281
  %296 = load i32, i32* %9, align 4
  %297 = call i8* @cpu_to_le16(i32 %296)
  %298 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %299 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %298, i32 0, i32 1
  store i8* %297, i8** %299, align 8
  %300 = load i32, i32* @S_DS_GEN, align 4
  %301 = call i8* @cpu_to_le16(i32 %300)
  %302 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %303 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %302, i32 0, i32 0
  store i8* %301, i8** %303, align 8
  br label %547

304:                                              ; preds = %31
  %305 = load i32, i32* @MWIFIEX_HW_STATUS_RESET, align 4
  %306 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %307 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %306, i32 0, i32 0
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  store i32 %305, i32* %309, align 4
  %310 = load i32, i32* %9, align 4
  %311 = call i8* @cpu_to_le16(i32 %310)
  %312 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %313 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %312, i32 0, i32 1
  store i8* %311, i8** %313, align 8
  %314 = load i32, i32* @S_DS_GEN, align 4
  %315 = call i8* @cpu_to_le16(i32 %314)
  %316 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %317 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  br label %547

318:                                              ; preds = %31
  %319 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %320 = load i8*, i8** %12, align 8
  %321 = call i32 @mwifiex_cmd_11n_addba_req(%struct.host_cmd_ds_command* %319, i8* %320)
  store i32 %321, i32* %15, align 4
  br label %547

322:                                              ; preds = %31
  %323 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %324 = load i8*, i8** %12, align 8
  %325 = call i32 @mwifiex_cmd_11n_delba(%struct.host_cmd_ds_command* %323, i8* %324)
  store i32 %325, i32* %15, align 4
  br label %547

326:                                              ; preds = %31
  %327 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %328 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %329 = load i8*, i8** %12, align 8
  %330 = call i32 @mwifiex_cmd_11n_addba_rsp_gen(%struct.mwifiex_private* %327, %struct.host_cmd_ds_command* %328, i8* %329)
  store i32 %330, i32* %15, align 4
  br label %547

331:                                              ; preds = %31
  %332 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %333 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %334 = load i32, i32* %10, align 4
  %335 = load i32, i32* %11, align 4
  %336 = load i8*, i8** %12, align 8
  %337 = call i32 @mwifiex_cmd_802_11_key_material(%struct.mwifiex_private* %332, %struct.host_cmd_ds_command* %333, i32 %334, i32 %335, i8* %336)
  store i32 %337, i32* %15, align 4
  br label %547

338:                                              ; preds = %31
  %339 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %340 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %341 = load i32, i32* %10, align 4
  %342 = call i32 @mwifiex_cmd_802_11d_domain_info(%struct.mwifiex_private* %339, %struct.host_cmd_ds_command* %340, i32 %341)
  store i32 %342, i32* %15, align 4
  br label %547

343:                                              ; preds = %31
  %344 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %345 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %346 = load i32, i32* %10, align 4
  %347 = load i8*, i8** %12, align 8
  %348 = call i32 @mwifiex_cmd_recfg_tx_buf(%struct.mwifiex_private* %344, %struct.host_cmd_ds_command* %345, i32 %346, i8* %347)
  store i32 %348, i32* %15, align 4
  br label %547

349:                                              ; preds = %31
  %350 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %351 = load i32, i32* %10, align 4
  %352 = load i8*, i8** %12, align 8
  %353 = call i32 @mwifiex_cmd_amsdu_aggr_ctrl(%struct.host_cmd_ds_command* %350, i32 %351, i8* %352)
  store i32 %353, i32* %15, align 4
  br label %547

354:                                              ; preds = %31
  %355 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %356 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %357 = load i32, i32* %10, align 4
  %358 = load i8*, i8** %12, align 8
  %359 = call i32 @mwifiex_cmd_11n_cfg(%struct.mwifiex_private* %355, %struct.host_cmd_ds_command* %356, i32 %357, i8* %358)
  store i32 %359, i32* %15, align 4
  br label %547

360:                                              ; preds = %31
  %361 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %362 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %361, i32 0, i32 0
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %362, align 8
  %364 = load i32, i32* @CMD, align 4
  %365 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_13__* %363, i32 %364, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %366 = call i8* @cpu_to_le16(i32 128)
  %367 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %368 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %367, i32 0, i32 1
  store i8* %366, i8** %368, align 8
  %369 = load i32, i32* @S_DS_GEN, align 4
  %370 = sext i32 %369 to i64
  %371 = add i64 4, %370
  %372 = trunc i64 %371 to i32
  %373 = call i8* @cpu_to_le16(i32 %372)
  %374 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %375 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %374, i32 0, i32 0
  store i8* %373, i8** %375, align 8
  store i32 0, i32* %15, align 4
  br label %547

376:                                              ; preds = %31
  %377 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %378 = load i32, i32* %10, align 4
  %379 = load i8*, i8** %12, align 8
  %380 = call i32 @mwifiex_cmd_ibss_coalescing_status(%struct.host_cmd_ds_command* %377, i32 %378, i8* %379)
  store i32 %380, i32* %15, align 4
  br label %547

381:                                              ; preds = %31
  %382 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %383 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %384 = load i8*, i8** %12, align 8
  %385 = call i32 @mwifiex_cmd_802_11_scan_ext(%struct.mwifiex_private* %382, %struct.host_cmd_ds_command* %383, i8* %384)
  store i32 %385, i32* %15, align 4
  br label %547

386:                                              ; preds = %31
  %387 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %388 = load i32, i32* %10, align 4
  %389 = load i8*, i8** %12, align 8
  %390 = call i32 @mwifiex_cmd_mem_access(%struct.host_cmd_ds_command* %387, i32 %388, i8* %389)
  store i32 %390, i32* %15, align 4
  br label %547

391:                                              ; preds = %31, %31, %31, %31, %31, %31
  %392 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %393 = load i32, i32* %10, align 4
  %394 = load i8*, i8** %12, align 8
  %395 = call i32 @mwifiex_cmd_reg_access(%struct.host_cmd_ds_command* %392, i32 %393, i8* %394)
  store i32 %395, i32* %15, align 4
  br label %547

396:                                              ; preds = %31
  %397 = load i32, i32* %9, align 4
  %398 = call i8* @cpu_to_le16(i32 %397)
  %399 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %400 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %399, i32 0, i32 1
  store i8* %398, i8** %400, align 8
  %401 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %402 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %396
  %407 = load i32, i32* @CONNECTION_TYPE_ADHOC, align 4
  %408 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %409 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  store i32 %407, i32* %411, align 8
  br label %450

412:                                              ; preds = %396
  %413 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %414 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %424, label %418

418:                                              ; preds = %412
  %419 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %420 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %423 = icmp eq i32 %421, %422
  br i1 %423, label %424, label %430

424:                                              ; preds = %418, %412
  %425 = load i32, i32* @CONNECTION_TYPE_INFRA, align 4
  %426 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %427 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 0
  store i32 %425, i32* %429, align 8
  br label %449

430:                                              ; preds = %418
  %431 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %432 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %442, label %436

436:                                              ; preds = %430
  %437 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %438 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %448

442:                                              ; preds = %436, %430
  %443 = load i32, i32* @CONNECTION_TYPE_AP, align 4
  %444 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %445 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 0
  store i32 %443, i32* %447, align 8
  br label %448

448:                                              ; preds = %442, %436
  br label %449

449:                                              ; preds = %448, %424
  br label %450

450:                                              ; preds = %449, %406
  %451 = load i32, i32* @S_DS_GEN, align 4
  %452 = sext i32 %451 to i64
  %453 = add i64 4, %452
  %454 = trunc i64 %453 to i32
  %455 = call i8* @cpu_to_le16(i32 %454)
  %456 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %457 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %456, i32 0, i32 0
  store i8* %455, i8** %457, align 8
  store i32 0, i32* %15, align 4
  br label %547

458:                                              ; preds = %31
  %459 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %460 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %461 = load i32, i32* %10, align 4
  %462 = call i32 @mwifiex_cmd_pcie_host_spec(%struct.mwifiex_private* %459, %struct.host_cmd_ds_command* %460, i32 %461)
  store i32 %462, i32* %15, align 4
  br label %547

463:                                              ; preds = %31
  %464 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %465 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %466 = load i8*, i8** %12, align 8
  %467 = call i32 @mwifiex_cmd_802_11_subsc_evt(%struct.mwifiex_private* %464, %struct.host_cmd_ds_command* %465, i8* %466)
  store i32 %467, i32* %15, align 4
  br label %547

468:                                              ; preds = %31
  %469 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %470 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %471 = load i8*, i8** %12, align 8
  %472 = call i32 @mwifiex_cmd_mef_cfg(%struct.mwifiex_private* %469, %struct.host_cmd_ds_command* %470, i8* %471)
  store i32 %472, i32* %15, align 4
  br label %547

473:                                              ; preds = %31
  %474 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %475 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %476 = load i32, i32* %10, align 4
  %477 = load i8*, i8** %12, align 8
  %478 = call i32 @mwifiex_cmd_coalesce_cfg(%struct.mwifiex_private* %474, %struct.host_cmd_ds_command* %475, i32 %476, i8* %477)
  store i32 %478, i32* %15, align 4
  br label %547

479:                                              ; preds = %31
  %480 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %481 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %482 = load i8*, i8** %12, align 8
  %483 = call i32 @mwifiex_cmd_tdls_oper(%struct.mwifiex_private* %480, %struct.host_cmd_ds_command* %481, i8* %482)
  store i32 %483, i32* %15, align 4
  br label %547

484:                                              ; preds = %31
  %485 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %486 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %487 = load i32, i32* %10, align 4
  %488 = load i8*, i8** %12, align 8
  %489 = call i32 @mwifiex_cmd_tdls_config(%struct.mwifiex_private* %485, %struct.host_cmd_ds_command* %486, i32 %487, i8* %488)
  store i32 %489, i32* %15, align 4
  br label %547

490:                                              ; preds = %31
  %491 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %492 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %493 = load i8*, i8** %12, align 8
  %494 = call i32 @mwifiex_cmd_issue_chan_report_request(%struct.mwifiex_private* %491, %struct.host_cmd_ds_command* %492, i8* %493)
  store i32 %494, i32* %15, align 4
  br label %547

495:                                              ; preds = %31
  %496 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %497 = load i32, i32* %10, align 4
  %498 = load i8*, i8** %12, align 8
  %499 = call i32 @mwifiex_cmd_sdio_rx_aggr_cfg(%struct.host_cmd_ds_command* %496, i32 %497, i8* %498)
  store i32 %499, i32* %15, align 4
  br label %547

500:                                              ; preds = %31
  %501 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %502 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %503 = call i32 @mwifiex_cmd_get_wakeup_reason(%struct.mwifiex_private* %501, %struct.host_cmd_ds_command* %502)
  store i32 %503, i32* %15, align 4
  br label %547

504:                                              ; preds = %31
  %505 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %506 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %507 = load i32, i32* %10, align 4
  %508 = load i8*, i8** %12, align 8
  %509 = call i32 @mwifiex_cmd_set_mc_policy(%struct.mwifiex_private* %505, %struct.host_cmd_ds_command* %506, i32 %507, i8* %508)
  store i32 %509, i32* %15, align 4
  br label %547

510:                                              ; preds = %31
  %511 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %512 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %513 = load i32, i32* %10, align 4
  %514 = load i8*, i8** %12, align 8
  %515 = call i32 @mwifiex_cmd_robust_coex(%struct.mwifiex_private* %511, %struct.host_cmd_ds_command* %512, i32 %513, i8* %514)
  store i32 %515, i32* %15, align 4
  br label %547

516:                                              ; preds = %31
  %517 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %518 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %519 = load i32, i32* %10, align 4
  %520 = load i8*, i8** %12, align 8
  %521 = call i32 @mwifiex_cmd_gtk_rekey_offload(%struct.mwifiex_private* %517, %struct.host_cmd_ds_command* %518, i32 %519, i8* %520)
  store i32 %521, i32* %15, align 4
  br label %547

522:                                              ; preds = %31
  %523 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %524 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %525 = load i32, i32* %10, align 4
  %526 = call i32 @mwifiex_cmd_chan_region_cfg(%struct.mwifiex_private* %523, %struct.host_cmd_ds_command* %524, i32 %525)
  store i32 %526, i32* %15, align 4
  br label %547

527:                                              ; preds = %31
  %528 = load i32, i32* %9, align 4
  %529 = call i8* @cpu_to_le16(i32 %528)
  %530 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %531 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %530, i32 0, i32 1
  store i8* %529, i8** %531, align 8
  %532 = load i32, i32* @S_DS_GEN, align 4
  %533 = call i8* @cpu_to_le16(i32 %532)
  %534 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %535 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %534, i32 0, i32 0
  store i8* %533, i8** %535, align 8
  br label %547

536:                                              ; preds = %31
  %537 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %538 = load i32, i32* %10, align 4
  %539 = call i32 @mwifiex_cmd_get_chan_info(%struct.host_cmd_ds_command* %537, i32 %538)
  store i32 %539, i32* %15, align 4
  br label %547

540:                                              ; preds = %31
  %541 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %542 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %541, i32 0, i32 0
  %543 = load %struct.TYPE_13__*, %struct.TYPE_13__** %542, align 8
  %544 = load i32, i32* @ERROR, align 4
  %545 = load i32, i32* %9, align 4
  %546 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_13__* %543, i32 %544, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %545)
  store i32 -1, i32* %15, align 4
  br label %547

547:                                              ; preds = %540, %536, %527, %522, %516, %510, %504, %500, %495, %490, %484, %479, %473, %468, %463, %458, %450, %391, %386, %381, %376, %360, %354, %349, %343, %338, %331, %326, %322, %318, %304, %295, %255, %229, %223, %207, %181, %158, %145, %138, %133, %130, %125, %122, %117, %112, %107, %104, %99, %95, %88, %81, %75, %69, %64, %58, %53, %48, %42, %37, %33
  %548 = load i32, i32* %15, align 4
  store i32 %548, i32* %7, align 4
  br label %549

549:                                              ; preds = %547, %22
  %550 = load i32, i32* %7, align 4
  ret i32 %550
}

declare dso_local i64 @mwifiex_is_cmd_supported(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_cmd_get_hw_spec(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_cmd_cfg_data(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_mac_control(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_mac_address(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32) #1

declare dso_local i32 @mwifiex_cmd_mac_multicast_adr(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_tx_rate_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_tx_power_cfg(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_rf_tx_power(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_rf_antenna(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_enh_power_mode(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_hs_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, %struct.mwifiex_hs_config_param*) #1

declare dso_local i32 @mwifiex_cmd_802_11_scan(%struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_bg_scan_config(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_bg_scan_query(%struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_cmd_802_11_associate(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_deauthenticate(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_start(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_get_log(%struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_join(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_stop(%struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_cmd_802_11_rssi_info(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32) #1

declare dso_local i32 @mwifiex_cmd_802_11_snmp_mib(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwifiex_cmd_11ac_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_11n_addba_req(%struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_11n_delba(%struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_11n_addba_rsp_gen(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_key_material(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11d_domain_info(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32) #1

declare dso_local i32 @mwifiex_cmd_recfg_tx_buf(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_amsdu_aggr_ctrl(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_11n_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_ibss_coalescing_status(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_802_11_scan_ext(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_mem_access(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_reg_access(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_pcie_host_spec(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32) #1

declare dso_local i32 @mwifiex_cmd_802_11_subsc_evt(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_mef_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_coalesce_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_tdls_oper(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_tdls_config(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_issue_chan_report_request(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_sdio_rx_aggr_cfg(%struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_get_wakeup_reason(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_cmd_set_mc_policy(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_robust_coex(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_gtk_rekey_offload(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i8*) #1

declare dso_local i32 @mwifiex_cmd_chan_region_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32) #1

declare dso_local i32 @mwifiex_cmd_get_chan_info(%struct.host_cmd_ds_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
