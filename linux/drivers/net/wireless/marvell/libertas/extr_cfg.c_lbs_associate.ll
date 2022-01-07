; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_associate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i32 }
%struct.cfg80211_bss = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_connect_params = type { i32, i32, i32 }
%struct.cmd_ds_802_11_associate_response = type { i32, %struct.TYPE_6__, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.cmd_ds_802_11_associate = type { %struct.TYPE_5__, i32*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@LBS_ASSOC_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_802_11_ASSOCIATE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MRVDRV_DEFAULT_LISTEN_INTERVAL = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no SSID\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"no channel\0A\00", align 1
@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Common Rates\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ASSOC_CMD\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid association parameters\0A\00", align 1
@WLAN_STATUS_CAPS_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"timer expired while waiting for AP\0A\00", align 1
@WLAN_STATUS_AUTH_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"association refused by AP\0A\00", align 1
@WLAN_STATUS_ASSOC_DENIED_UNSPEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"authentication refused by AP\0A\00", align 1
@WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"association failure %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"status %d, statuscode 0x%04x, capability 0x%04x, aid 0x%04x\0A\00", align 1
@LBS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cfg80211_bss*, %struct.cfg80211_connect_params*)* @lbs_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_associate(%struct.lbs_private* %0, %struct.cfg80211_bss* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.cfg80211_connect_params*, align 8
  %7 = alloca %struct.cmd_ds_802_11_associate_response*, align 8
  %8 = alloca %struct.cmd_ds_802_11_associate*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %6, align 8
  %16 = load i32, i32* @LBS_ASSOC_MAX_CMD_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cmd_ds_802_11_associate* @kzalloc(i32 %16, i32 %17)
  store %struct.cmd_ds_802_11_associate* %18, %struct.cmd_ds_802_11_associate** %8, align 8
  %19 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %20 = icmp ne %struct.cmd_ds_802_11_associate* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %286

24:                                               ; preds = %3
  %25 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %26 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32* %28, i32** %14, align 8
  %29 = load i64, i64* @CMD_802_11_ASSOCIATE, align 8
  %30 = call i8* @cpu_to_le16(i64 %29)
  %31 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %32 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %35 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %38 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  %42 = load i64, i64* @MRVDRV_DEFAULT_LISTEN_INTERVAL, align 8
  %43 = call i8* @cpu_to_le16(i64 %42)
  %44 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %45 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @cpu_to_le16(i64 %48)
  %50 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %51 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %54 = load i32, i32* @WLAN_EID_SSID, align 4
  %55 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %53, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %24
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @lbs_add_ssid_tlv(i32* %59, i32* %61, i32 %64)
  %66 = load i32*, i32** %14, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %14, align 8
  br label %71

69:                                               ; preds = %24
  %70 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %58
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %74 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %80 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lbs_add_channel_tlv(i32* %78, i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %14, align 8
  br label %90

88:                                               ; preds = %71
  %89 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @lbs_add_cf_param_tlv(i32* %91)
  %93 = load i32*, i32** %14, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32* %97, i32** %15, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %100 = call i32 @lbs_add_common_rates_tlv(i32* %98, %struct.cfg80211_bss* %99)
  %101 = load i32*, i32** %14, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %14, align 8
  %104 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i32 @lbs_deb_hex(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %105, i32 %112)
  %114 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %115 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @MRVL_FW_MAJOR_REV(i32 %116)
  %118 = icmp sge i32 %117, 9
  br i1 %118, label %119, label %128

119:                                              ; preds = %90
  %120 = load i32*, i32** %14, align 8
  %121 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %122 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lbs_add_auth_type_tlv(i32* %120, i32 %123)
  %125 = load i32*, i32** %14, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %14, align 8
  br label %128

128:                                              ; preds = %119, %90
  %129 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %130 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %135 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %141 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %144 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @lbs_add_wpa_tlv(i32* %139, i32 %142, i32 %145)
  %147 = load i32*, i32** %14, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %14, align 8
  br label %150

150:                                              ; preds = %138, %133, %128
  %151 = load i32*, i32** %14, align 8
  %152 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %153 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %152, i32 0, i32 1
  %154 = bitcast i32** %153 to i32*
  %155 = ptrtoint i32* %151 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = add i64 40, %158
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %10, align 8
  %161 = call i8* @cpu_to_le16(i64 %160)
  %162 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %163 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %166 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %167 = bitcast %struct.cmd_ds_802_11_associate* %166 to i32*
  %168 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %169 = getelementptr inbounds %struct.cmd_ds_802_11_associate, %struct.cmd_ds_802_11_associate* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @le16_to_cpu(i8* %171)
  %173 = call i32 @lbs_deb_hex(i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %167, i32 %172)
  %174 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %175 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %178 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @ETH_ALEN, align 4
  %181 = call i32 @memcpy(i32 %176, i32 %179, i32 %180)
  %182 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %183 = load i64, i64* @CMD_802_11_ASSOCIATE, align 8
  %184 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %185 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %182, i64 %183, %struct.cmd_ds_802_11_associate* %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %150
  br label %286

189:                                              ; preds = %150
  %190 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %191 = bitcast %struct.cmd_ds_802_11_associate* %190 to i8*
  %192 = bitcast i8* %191 to %struct.cmd_ds_802_11_associate_response*
  store %struct.cmd_ds_802_11_associate_response* %192, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %193 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %194 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @le16_to_cpu(i8* %195)
  store i32 %196, i32* %12, align 4
  %197 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %198 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @MRVL_FW_MAJOR_REV(i32 %199)
  %201 = icmp sle i32 %200, 8
  br i1 %201, label %202, label %221

202:                                              ; preds = %189
  %203 = load i32, i32* %12, align 4
  switch i32 %203, label %217 [
    i32 0, label %204
    i32 1, label %205
    i32 2, label %208
    i32 3, label %211
    i32 4, label %214
  ]

204:                                              ; preds = %202
  br label %220

205:                                              ; preds = %202
  %206 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %207 = load i32, i32* @WLAN_STATUS_CAPS_UNSUPPORTED, align 4
  store i32 %207, i32* %12, align 4
  br label %220

208:                                              ; preds = %202
  %209 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %210 = load i32, i32* @WLAN_STATUS_AUTH_TIMEOUT, align 4
  store i32 %210, i32* %12, align 4
  br label %220

211:                                              ; preds = %202
  %212 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %213 = load i32, i32* @WLAN_STATUS_ASSOC_DENIED_UNSPEC, align 4
  store i32 %213, i32* %12, align 4
  br label %220

214:                                              ; preds = %202
  %215 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %216 = load i32, i32* @WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION, align 4
  store i32 %216, i32* %12, align 4
  br label %220

217:                                              ; preds = %202
  %218 = load i32, i32* %12, align 4
  %219 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %217, %214, %211, %208, %205, %204
  br label %221

221:                                              ; preds = %220, %189
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %224 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %223, i32 0, i32 4
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @le16_to_cpu(i8* %225)
  %227 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %228 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %227, i32 0, i32 3
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @le16_to_cpu(i8* %229)
  %231 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %232 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @le16_to_cpu(i8* %233)
  %235 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %222, i32 %226, i32 %230, i32 %234)
  %236 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %237 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @le16_to_cpu(i8* %239)
  %241 = sext i32 %240 to i64
  %242 = sub i64 %241, 8
  %243 = sub i64 %242, 6
  store i64 %243, i64* %11, align 8
  %244 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %245 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %248 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %251 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %254 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %7, align 8
  %257 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* @GFP_KERNEL, align 4
  %262 = call i32 @cfg80211_connect_result(i32 %246, i32 %249, i32 %252, i32 %255, i32 %258, i64 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %12, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %283

265:                                              ; preds = %221
  %266 = load i32, i32* @LBS_CONNECTED, align 4
  %267 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %268 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 4
  %269 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %270 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @netif_carrier_on(i32 %271)
  %273 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %274 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %265
  %278 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %279 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @netif_tx_wake_all_queues(i32 %280)
  br label %282

282:                                              ; preds = %277, %265
  br label %283

283:                                              ; preds = %282, %221
  %284 = load %struct.cmd_ds_802_11_associate*, %struct.cmd_ds_802_11_associate** %8, align 8
  %285 = call i32 @kfree(%struct.cmd_ds_802_11_associate* %284)
  br label %286

286:                                              ; preds = %283, %188, %21
  %287 = load i32, i32* %13, align 4
  ret i32 %287
}

declare dso_local %struct.cmd_ds_802_11_associate* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @lbs_add_ssid_tlv(i32*, i32*, i32) #1

declare dso_local i32 @lbs_deb_assoc(i8*, ...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @lbs_add_channel_tlv(i32*, i32) #1

declare dso_local i32 @lbs_add_cf_param_tlv(i32*) #1

declare dso_local i32 @lbs_add_common_rates_tlv(i32*, %struct.cfg80211_bss*) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i32*, i32) #1

declare dso_local i32 @MRVL_FW_MAJOR_REV(i32) #1

declare dso_local i32 @lbs_add_auth_type_tlv(i32*, i32) #1

declare dso_local i32 @lbs_add_wpa_tlv(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i64, %struct.cmd_ds_802_11_associate*) #1

declare dso_local i32 @cfg80211_connect_result(i32, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @kfree(%struct.cmd_ds_802_11_associate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
