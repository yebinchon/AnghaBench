; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_connect_params = type { i32, i64, i32, i32*, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64*, i64 }
%struct.cfg80211_ssid = type { i64, i32* }
%struct.cfg80211_bss = type { i32* }

@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid SSID - aborting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_IBSS_COALESCING_STATUS = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i8* null, align 8
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"info: setting wep encryption\09with key len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"scan error\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_ESS = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"assoc: requested bss not found in scan results\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"info: trying to associate to '%.*s' bssid %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i64, i32*, i32*, i32, %struct.ieee80211_channel*, %struct.cfg80211_connect_params*, i32)* @mwifiex_cfg80211_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_assoc(%struct.mwifiex_private* %0, i64 %1, i32* %2, i32* %3, i32 %4, %struct.ieee80211_channel* %5, %struct.cfg80211_connect_params* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_channel*, align 8
  %16 = alloca %struct.cfg80211_connect_params*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.cfg80211_ssid, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cfg80211_bss*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.ieee80211_channel* %5, %struct.ieee80211_channel** %15, align 8
  store %struct.cfg80211_connect_params* %6, %struct.cfg80211_connect_params** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %21, align 8
  store i32 0, i32* %22, align 4
  %24 = call i32 @memset(%struct.cfg80211_ssid* %18, i32 0, i32 16)
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %18, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %8
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %313

38:                                               ; preds = %8
  %39 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %18, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @memcpy(i32* %40, i32* %41, i64 %42)
  %44 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %18, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %18, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %53, label %61

53:                                               ; preds = %47, %38
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %56, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %313

61:                                               ; preds = %47
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %69 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %71 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %77 = call i32 @mwifiex_set_encode(%struct.mwifiex_private* %76, i32* null, i32* null, i32 0, i64 0, i32* null, i32 1)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %61
  store i32 1, i32* %23, align 4
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %83 = load i32, i32* @HostCmd_CMD_802_11_IBSS_COALESCING_STATUS, align 4
  %84 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %85 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %82, i32 %83, i32 %84, i32 0, i32* %23, i32 1)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %19, align 4
  store i32 %89, i32* %9, align 4
  br label %313

90:                                               ; preds = %81
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  store i64 %94, i64* %97, align 8
  %98 = load i8*, i8** @NL80211_AUTHTYPE_OPEN_SYSTEM, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %93, %90
  br label %211

104:                                              ; preds = %61
  %105 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %106 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NL80211_AUTHTYPE_AUTOMATIC, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i8*, i8** @NL80211_AUTHTYPE_OPEN_SYSTEM, align 8
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %20, align 4
  %113 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %114 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  br label %120

116:                                              ; preds = %104
  %117 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %118 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %20, align 4
  br label %120

120:                                              ; preds = %116, %110
  %121 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %122 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %128 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %134 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  store i64 %132, i64* %135, align 8
  %136 = load i32, i32* %20, align 4
  %137 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %138 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %126, %120
  %141 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %142 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %148 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %152 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  store i64 %150, i64* %153, align 8
  %154 = load i32, i32* %20, align 4
  %155 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %156 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 4
  br label %158

158:                                              ; preds = %146, %140
  %159 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %160 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %165 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %166 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %169 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @mwifiex_set_gen_ie(%struct.mwifiex_private* %164, i64 %167, i32 %170)
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %163, %158
  %173 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %174 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %210

177:                                              ; preds = %172
  %178 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %179 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @mwifiex_is_alg_wep(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %177
  %185 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %186 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @INFO, align 4
  %189 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %190 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %187, i32 %188, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  %193 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %194 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %197 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  %198 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %199 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %200 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %203 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %16, align 8
  %206 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @mwifiex_set_encode(%struct.mwifiex_private* %198, i32* null, i32* %201, i32 %204, i64 %207, i32* null, i32 0)
  store i32 %208, i32* %19, align 4
  br label %209

209:                                              ; preds = %184, %177
  br label %210

210:                                              ; preds = %209, %172
  br label %211

211:                                              ; preds = %210, %103
  br label %212

212:                                              ; preds = %211, %290
  %213 = load i32, i32* %22, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %217 = call i64 @mwifiex_request_scan(%struct.mwifiex_private* %216, %struct.cfg80211_ssid* %18)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %221 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @ERROR, align 4
  %224 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %222, i32 %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %225 = load i32, i32* @EFAULT, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %9, align 4
  br label %313

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %212
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %228
  %233 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %234 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %238 = load i32*, i32** %13, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = load i64, i64* %11, align 8
  %241 = load i32, i32* @IEEE80211_BSS_TYPE_IBSS, align 4
  %242 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %243 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %236, %struct.ieee80211_channel* %237, i32* %238, i32* %239, i64 %240, i32 %241, i32 %242)
  store %struct.cfg80211_bss* %243, %struct.cfg80211_bss** %21, align 8
  br label %256

244:                                              ; preds = %228
  %245 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %246 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %250 = load i32*, i32** %13, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = load i64, i64* %11, align 8
  %253 = load i32, i32* @IEEE80211_BSS_TYPE_ESS, align 4
  %254 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %255 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %248, %struct.ieee80211_channel* %249, i32* %250, i32* %251, i64 %252, i32 %253, i32 %254)
  store %struct.cfg80211_bss* %255, %struct.cfg80211_bss** %21, align 8
  br label %256

256:                                              ; preds = %244, %232
  %257 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %21, align 8
  %258 = icmp ne %struct.cfg80211_bss* %257, null
  br i1 %258, label %269, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %22, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %264 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @MSG, align 4
  %267 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %265, i32 %266, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %291

268:                                              ; preds = %259
  store i32 1, i32* %22, align 4
  br label %290

269:                                              ; preds = %256
  %270 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %271 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @MSG, align 4
  %274 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %18, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %18, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = bitcast i32* %277 to i8*
  %279 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %21, align 8
  %280 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %272, i32 %273, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %275, i8* %278, i32* %281)
  %283 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %284 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %283, i32 0, i32 0
  %285 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %21, align 8
  %286 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* @ETH_ALEN, align 8
  %289 = call i32 @memcpy(i32* %284, i32* %287, i64 %288)
  br label %291

290:                                              ; preds = %268
  br label %212

291:                                              ; preds = %269, %262
  %292 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %293 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %21, align 8
  %294 = call i32 @mwifiex_bss_start(%struct.mwifiex_private* %292, %struct.cfg80211_bss* %293, %struct.cfg80211_ssid* %18)
  store i32 %294, i32* %19, align 4
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = load i32, i32* %19, align 4
  store i32 %298, i32* %9, align 4
  br label %313

299:                                              ; preds = %291
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %305 = call i64 @mwifiex_cfg80211_inform_ibss_bss(%struct.mwifiex_private* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load i32, i32* @EFAULT, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %9, align 4
  br label %313

310:                                              ; preds = %303
  br label %311

311:                                              ; preds = %310, %299
  %312 = load i32, i32* %19, align 4
  store i32 %312, i32* %9, align 4
  br label %313

313:                                              ; preds = %311, %307, %297, %219, %88, %53, %30
  %314 = load i32, i32* %9, align 4
  ret i32 %314
}

declare dso_local i32 @memset(%struct.cfg80211_ssid*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @mwifiex_set_encode(%struct.mwifiex_private*, i32*, i32*, i32, i64, i32*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_set_gen_ie(%struct.mwifiex_private*, i64, i32) #1

declare dso_local i64 @mwifiex_is_alg_wep(i64) #1

declare dso_local i64 @mwifiex_request_scan(%struct.mwifiex_private*, %struct.cfg80211_ssid*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, %struct.ieee80211_channel*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @mwifiex_bss_start(%struct.mwifiex_private*, %struct.cfg80211_bss*, %struct.cfg80211_ssid*) #1

declare dso_local i64 @mwifiex_cfg80211_inform_ibss_bss(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
