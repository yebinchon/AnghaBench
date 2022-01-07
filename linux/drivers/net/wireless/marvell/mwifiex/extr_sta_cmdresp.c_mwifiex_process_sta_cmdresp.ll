; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_process_sta_cmdresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_process_sta_cmdresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_7__, %struct.mwifiex_adapter* }
%struct.TYPE_7__ = type { i32 }
%struct.mwifiex_adapter = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.mwifiex_adapter*, i32)*, i32 (%struct.mwifiex_adapter*)* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.host_cmd_ds_command = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@HostCmd_RESULT_OK = common dso_local global i64 0, align 8
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"info: CMD_RESP: BG_SCAN result is ready!\0A\00", align 1
@MWIFIEX_USB = common dso_local global i32 0, align 4
@MWIFIEX_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cmd: curr_tx_buf_size=%d\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CMD_RESP: unknown cmd response %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_process_sta_cmdresp(%struct.mwifiex_private* %0, i32 %1, %struct.host_cmd_ds_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.host_cmd_ds_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_adapter*, align 8
  %10 = alloca i8*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.host_cmd_ds_command* %2, %struct.host_cmd_ds_command** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 2
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  store %struct.mwifiex_adapter* %13, %struct.mwifiex_adapter** %9, align 8
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %14, i32 0, i32 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HostCmd_RESULT_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %26 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %27 = call i32 @mwifiex_process_cmdresp_error(%struct.mwifiex_private* %25, %struct.host_cmd_ds_command* %26)
  store i32 -1, i32* %4, align 4
  br label %349

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %340 [
    i32 161, label %30
    i32 167, label %34
    i32 158, label %38
    i32 177, label %39
    i32 157, label %43
    i32 134, label %47
    i32 175, label %51
    i32 174, label %59
    i32 184, label %67
    i32 185, label %79
    i32 135, label %80
    i32 143, label %84
    i32 145, label %88
    i32 176, label %92
    i32 180, label %97
    i32 186, label %101
    i32 183, label %105
    i32 188, label %109
    i32 189, label %109
    i32 187, label %113
    i32 181, label %117
    i32 141, label %122
    i32 173, label %126
    i32 171, label %131
    i32 129, label %135
    i32 146, label %140
    i32 195, label %145
    i32 150, label %146
    i32 151, label %150
    i32 152, label %155
    i32 163, label %155
    i32 162, label %155
    i32 178, label %156
    i32 190, label %160
    i32 194, label %164
    i32 191, label %168
    i32 193, label %172
    i32 147, label %176
    i32 170, label %262
    i32 128, label %263
    i32 179, label %267
    i32 153, label %271
    i32 156, label %276
    i32 169, label %276
    i32 144, label %276
    i32 148, label %276
    i32 168, label %276
    i32 182, label %276
    i32 139, label %281
    i32 192, label %282
    i32 149, label %283
    i32 172, label %284
    i32 130, label %288
    i32 197, label %289
    i32 133, label %293
    i32 132, label %302
    i32 131, label %305
    i32 196, label %306
    i32 154, label %307
    i32 164, label %308
    i32 136, label %309
    i32 155, label %313
    i32 165, label %314
    i32 140, label %315
    i32 159, label %319
    i32 137, label %324
    i32 142, label %325
    i32 160, label %330
    i32 166, label %331
    i32 138, label %335
  ]

30:                                               ; preds = %28
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %32 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %33 = call i32 @mwifiex_ret_get_hw_spec(%struct.mwifiex_private* %31, %struct.host_cmd_ds_command* %32)
  store i32 %33, i32* %8, align 4
  br label %347

34:                                               ; preds = %28
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %36 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %37 = call i32 @mwifiex_ret_cfg_data(%struct.mwifiex_private* %35, %struct.host_cmd_ds_command* %36)
  store i32 %37, i32* %8, align 4
  br label %347

38:                                               ; preds = %28
  br label %347

39:                                               ; preds = %28
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %41 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %42 = call i32 @mwifiex_ret_802_11_mac_address(%struct.mwifiex_private* %40, %struct.host_cmd_ds_command* %41)
  store i32 %42, i32* %8, align 4
  br label %347

43:                                               ; preds = %28
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %45 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %46 = call i32 @mwifiex_ret_mac_multicast_adr(%struct.mwifiex_private* %44, %struct.host_cmd_ds_command* %45)
  store i32 %46, i32* %8, align 4
  br label %347

47:                                               ; preds = %28
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %49 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %50 = call i32 @mwifiex_ret_tx_rate_cfg(%struct.mwifiex_private* %48, %struct.host_cmd_ds_command* %49)
  store i32 %50, i32* %8, align 4
  br label %347

51:                                               ; preds = %28
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %53 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %54 = call i32 @mwifiex_ret_802_11_scan(%struct.mwifiex_private* %52, %struct.host_cmd_ds_command* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %347

59:                                               ; preds = %28
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %61 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %62 = call i32 @mwifiex_ret_802_11_scan_ext(%struct.mwifiex_private* %60, %struct.host_cmd_ds_command* %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %347

67:                                               ; preds = %28
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %69 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %70 = call i32 @mwifiex_ret_802_11_scan(%struct.mwifiex_private* %68, %struct.host_cmd_ds_command* %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cfg80211_sched_scan_results(i32 %74, i32 0)
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %77 = load i32, i32* @CMD, align 4
  %78 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %76, i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %347

79:                                               ; preds = %28
  br label %347

80:                                               ; preds = %28
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %82 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %83 = call i32 @mwifiex_ret_tx_power_cfg(%struct.mwifiex_private* %81, %struct.host_cmd_ds_command* %82)
  store i32 %83, i32* %8, align 4
  br label %347

84:                                               ; preds = %28
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %86 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %87 = call i32 @mwifiex_ret_rf_tx_power(%struct.mwifiex_private* %85, %struct.host_cmd_ds_command* %86)
  store i32 %87, i32* %8, align 4
  br label %347

88:                                               ; preds = %28
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %90 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %91 = call i32 @mwifiex_ret_rf_antenna(%struct.mwifiex_private* %89, %struct.host_cmd_ds_command* %90)
  store i32 %91, i32* %8, align 4
  br label %347

92:                                               ; preds = %28
  %93 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %94 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @mwifiex_ret_enh_power_mode(%struct.mwifiex_private* %93, %struct.host_cmd_ds_command* %94, i8* %95)
  store i32 %96, i32* %8, align 4
  br label %347

97:                                               ; preds = %28
  %98 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %99 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %100 = call i32 @mwifiex_ret_802_11_hs_cfg(%struct.mwifiex_private* %98, %struct.host_cmd_ds_command* %99)
  store i32 %100, i32* %8, align 4
  br label %347

101:                                              ; preds = %28
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %103 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %104 = call i32 @mwifiex_ret_802_11_associate(%struct.mwifiex_private* %102, %struct.host_cmd_ds_command* %103)
  store i32 %104, i32* %8, align 4
  br label %347

105:                                              ; preds = %28
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %107 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %108 = call i32 @mwifiex_ret_802_11_deauthenticate(%struct.mwifiex_private* %106, %struct.host_cmd_ds_command* %107)
  store i32 %108, i32* %8, align 4
  br label %347

109:                                              ; preds = %28, %28
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %111 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %112 = call i32 @mwifiex_ret_802_11_ad_hoc(%struct.mwifiex_private* %110, %struct.host_cmd_ds_command* %111)
  store i32 %112, i32* %8, align 4
  br label %347

113:                                              ; preds = %28
  %114 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %115 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %116 = call i32 @mwifiex_ret_802_11_ad_hoc_stop(%struct.mwifiex_private* %114, %struct.host_cmd_ds_command* %115)
  store i32 %116, i32* %8, align 4
  br label %347

117:                                              ; preds = %28
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %119 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @mwifiex_ret_get_log(%struct.mwifiex_private* %118, %struct.host_cmd_ds_command* %119, i8* %120)
  store i32 %121, i32* %8, align 4
  br label %347

122:                                              ; preds = %28
  %123 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %124 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %125 = call i32 @mwifiex_ret_802_11_rssi_info(%struct.mwifiex_private* %123, %struct.host_cmd_ds_command* %124)
  store i32 %125, i32* %8, align 4
  br label %347

126:                                              ; preds = %28
  %127 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %128 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @mwifiex_ret_802_11_snmp_mib(%struct.mwifiex_private* %127, %struct.host_cmd_ds_command* %128, i8* %129)
  store i32 %130, i32* %8, align 4
  br label %347

131:                                              ; preds = %28
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %133 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %134 = call i32 @mwifiex_ret_802_11_tx_rate_query(%struct.mwifiex_private* %132, %struct.host_cmd_ds_command* %133)
  store i32 %134, i32* %8, align 4
  br label %347

135:                                              ; preds = %28
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %137 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @mwifiex_ret_ver_ext(%struct.mwifiex_private* %136, %struct.host_cmd_ds_command* %137, i8* %138)
  store i32 %139, i32* %8, align 4
  br label %347

140:                                              ; preds = %28
  %141 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %142 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @mwifiex_ret_remain_on_chan(%struct.mwifiex_private* %141, %struct.host_cmd_ds_command* %142, i8* %143)
  store i32 %144, i32* %8, align 4
  br label %347

145:                                              ; preds = %28
  br label %347

146:                                              ; preds = %28
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %148 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %149 = call i32 @mwifiex_ret_pkt_aggr_ctrl(%struct.mwifiex_private* %147, %struct.host_cmd_ds_command* %148)
  store i32 %149, i32* %8, align 4
  br label %347

150:                                              ; preds = %28
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %152 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @mwifiex_ret_p2p_mode_cfg(%struct.mwifiex_private* %151, %struct.host_cmd_ds_command* %152, i8* %153)
  store i32 %154, i32* %8, align 4
  br label %347

155:                                              ; preds = %28, %28, %28
  br label %347

156:                                              ; preds = %28
  %157 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %158 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %159 = call i32 @mwifiex_ret_802_11_key_material(%struct.mwifiex_private* %157, %struct.host_cmd_ds_command* %158)
  store i32 %159, i32* %8, align 4
  br label %347

160:                                              ; preds = %28
  %161 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %162 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %163 = call i32 @mwifiex_ret_802_11d_domain_info(%struct.mwifiex_private* %161, %struct.host_cmd_ds_command* %162)
  store i32 %163, i32* %8, align 4
  br label %347

164:                                              ; preds = %28
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %166 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %167 = call i32 @mwifiex_ret_11n_addba_req(%struct.mwifiex_private* %165, %struct.host_cmd_ds_command* %166)
  store i32 %167, i32* %8, align 4
  br label %347

168:                                              ; preds = %28
  %169 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %170 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %171 = call i32 @mwifiex_ret_11n_delba(%struct.mwifiex_private* %169, %struct.host_cmd_ds_command* %170)
  store i32 %171, i32* %8, align 4
  br label %347

172:                                              ; preds = %28
  %173 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %174 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %175 = call i32 @mwifiex_ret_11n_addba_resp(%struct.mwifiex_private* %173, %struct.host_cmd_ds_command* %174)
  store i32 %175, i32* %8, align 4
  br label %347

176:                                              ; preds = %28
  %177 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %178 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = icmp eq i32 65535, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %176
  %185 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %186 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MWIFIEX_USB, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %213

190:                                              ; preds = %184
  %191 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %192 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %190
  %196 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %197 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32 (%struct.mwifiex_adapter*)*, i32 (%struct.mwifiex_adapter*)** %198, align 8
  %200 = icmp ne i32 (%struct.mwifiex_adapter*)* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %203 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32 (%struct.mwifiex_adapter*)*, i32 (%struct.mwifiex_adapter*)** %204, align 8
  %206 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %207 = call i32 %205(%struct.mwifiex_adapter* %206)
  br label %208

208:                                              ; preds = %201, %195
  %209 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %210 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %209, i32 0, i32 0
  store i32 0, i32* %210, align 8
  %211 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %212 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %211, i32 0, i32 1
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %208, %190, %184
  br label %347

214:                                              ; preds = %176
  %215 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %216 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @le16_to_cpu(i32 %219)
  %221 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %222 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %224 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @MWIFIEX_SDIO_BLOCK_SIZE, align 4
  %227 = sdiv i32 %225, %226
  %228 = load i32, i32* @MWIFIEX_SDIO_BLOCK_SIZE, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %231 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %233 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %236 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %238 = load i32, i32* @CMD, align 4
  %239 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %240 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %237, i32 %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %241)
  %243 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %244 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32 (%struct.mwifiex_adapter*, i32)*, i32 (%struct.mwifiex_adapter*, i32)** %245, align 8
  %247 = icmp ne i32 (%struct.mwifiex_adapter*, i32)* %246, null
  br i1 %247, label %248, label %261

248:                                              ; preds = %214
  %249 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %250 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32 (%struct.mwifiex_adapter*, i32)*, i32 (%struct.mwifiex_adapter*, i32)** %251, align 8
  %253 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %254 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %255 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le16_to_cpu(i32 %258)
  %260 = call i32 %252(%struct.mwifiex_adapter* %253, i32 %259)
  br label %261

261:                                              ; preds = %248, %214
  br label %347

262:                                              ; preds = %28
  br label %347

263:                                              ; preds = %28
  %264 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %265 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %266 = call i32 @mwifiex_ret_wmm_get_status(%struct.mwifiex_private* %264, %struct.host_cmd_ds_command* %265)
  store i32 %266, i32* %8, align 4
  br label %347

267:                                              ; preds = %28
  %268 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %269 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %270 = call i32 @mwifiex_ret_ibss_coalescing_status(%struct.mwifiex_private* %268, %struct.host_cmd_ds_command* %269)
  store i32 %270, i32* %8, align 4
  br label %347

271:                                              ; preds = %28
  %272 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %273 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %274 = load i8*, i8** %10, align 8
  %275 = call i32 @mwifiex_ret_mem_access(%struct.mwifiex_private* %272, %struct.host_cmd_ds_command* %273, i8* %274)
  store i32 %275, i32* %8, align 4
  br label %347

276:                                              ; preds = %28, %28, %28, %28, %28, %28
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %279 = load i8*, i8** %10, align 8
  %280 = call i32 @mwifiex_ret_reg_access(i32 %277, %struct.host_cmd_ds_command* %278, i8* %279)
  store i32 %280, i32* %8, align 4
  br label %347

281:                                              ; preds = %28
  br label %347

282:                                              ; preds = %28
  br label %347

283:                                              ; preds = %28
  br label %347

284:                                              ; preds = %28
  %285 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %286 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %287 = call i32 @mwifiex_ret_subsc_evt(%struct.mwifiex_private* %285, %struct.host_cmd_ds_command* %286)
  store i32 %287, i32* %8, align 4
  br label %347

288:                                              ; preds = %28
  br label %347

289:                                              ; preds = %28
  %290 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %291 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %292 = call i32 @mwifiex_ret_uap_sta_list(%struct.mwifiex_private* %290, %struct.host_cmd_ds_command* %291)
  store i32 %292, i32* %8, align 4
  br label %347

293:                                              ; preds = %28
  %294 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %295 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %294, i32 0, i32 1
  store i32 0, i32* %295, align 4
  %296 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %297 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %296, i32 0, i32 4
  store i32 0, i32* %297, align 8
  %298 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %299 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %298, i32 0, i32 5
  store i32 0, i32* %299, align 4
  %300 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %301 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %300, i32 0, i32 0
  store i32 1, i32* %301, align 8
  br label %347

302:                                              ; preds = %28
  %303 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %304 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %303, i32 0, i32 0
  store i32 0, i32* %304, align 8
  br label %347

305:                                              ; preds = %28
  br label %347

306:                                              ; preds = %28
  br label %347

307:                                              ; preds = %28
  br label %347

308:                                              ; preds = %28
  br label %347

309:                                              ; preds = %28
  %310 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %311 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %312 = call i32 @mwifiex_ret_tdls_oper(%struct.mwifiex_private* %310, %struct.host_cmd_ds_command* %311)
  store i32 %312, i32* %8, align 4
  br label %313

313:                                              ; preds = %28, %309
  br label %347

314:                                              ; preds = %28
  br label %347

315:                                              ; preds = %28
  %316 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %317 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %318 = call i32 @mwifiex_ret_sdio_rx_aggr_cfg(%struct.mwifiex_private* %316, %struct.host_cmd_ds_command* %317)
  store i32 %318, i32* %8, align 4
  br label %347

319:                                              ; preds = %28
  %320 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %321 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %322 = load i8*, i8** %10, align 8
  %323 = call i32 @mwifiex_ret_wakeup_reason(%struct.mwifiex_private* %320, %struct.host_cmd_ds_command* %321, i8* %322)
  store i32 %323, i32* %8, align 4
  br label %347

324:                                              ; preds = %28
  br label %347

325:                                              ; preds = %28
  %326 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %327 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %328 = load i8*, i8** %10, align 8
  %329 = call i32 @mwifiex_ret_robust_coex(%struct.mwifiex_private* %326, %struct.host_cmd_ds_command* %327, i8* %328)
  store i32 %329, i32* %8, align 4
  br label %347

330:                                              ; preds = %28
  br label %347

331:                                              ; preds = %28
  %332 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %333 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %334 = call i32 @mwifiex_ret_chan_region_cfg(%struct.mwifiex_private* %332, %struct.host_cmd_ds_command* %333)
  store i32 %334, i32* %8, align 4
  br label %347

335:                                              ; preds = %28
  %336 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %337 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %338 = load i8*, i8** %10, align 8
  %339 = call i32 @mwifiex_ret_get_chan_info(%struct.mwifiex_private* %336, %struct.host_cmd_ds_command* %337, i8* %338)
  store i32 %339, i32* %8, align 4
  br label %347

340:                                              ; preds = %28
  %341 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %342 = load i32, i32* @ERROR, align 4
  %343 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %344 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %341, i32 %342, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %340, %335, %331, %330, %325, %324, %319, %315, %314, %313, %308, %307, %306, %305, %302, %293, %289, %288, %284, %283, %282, %281, %276, %271, %267, %263, %262, %261, %213, %172, %168, %164, %160, %156, %155, %150, %146, %145, %140, %135, %131, %126, %122, %117, %113, %109, %105, %101, %97, %92, %88, %84, %80, %79, %67, %59, %51, %47, %43, %39, %38, %34, %30
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %4, align 4
  br label %349

349:                                              ; preds = %347, %24
  %350 = load i32, i32* %4, align 4
  ret i32 %350
}

declare dso_local i32 @mwifiex_process_cmdresp_error(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_get_hw_spec(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_cfg_data(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_mac_address(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_mac_multicast_adr(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_tx_rate_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_scan(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_scan_ext(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @cfg80211_sched_scan_results(i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_ret_tx_power_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_rf_tx_power(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_rf_antenna(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_enh_power_mode(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_802_11_hs_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_associate(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_deauthenticate(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_ad_hoc(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_ad_hoc_stop(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_get_log(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_802_11_rssi_info(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11_snmp_mib(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_802_11_tx_rate_query(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_ver_ext(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_remain_on_chan(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_pkt_aggr_ctrl(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_p2p_mode_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_802_11_key_material(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_802_11d_domain_info(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_11n_addba_req(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_11n_delba(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_11n_addba_resp(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_ret_wmm_get_status(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_ibss_coalescing_status(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_mem_access(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_reg_access(i32, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_subsc_evt(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_uap_sta_list(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_tdls_oper(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_sdio_rx_aggr_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_wakeup_reason(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_robust_coex(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_ret_chan_region_cfg(%struct.mwifiex_private*, %struct.host_cmd_ds_command*) #1

declare dso_local i32 @mwifiex_ret_get_chan_info(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
