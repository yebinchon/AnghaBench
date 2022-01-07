; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32, i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lbs_private = type { i64, i32, i32*, i32*, i32*, i32, %struct.net_device* }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_scan_request = type { i32 }

@RADIO_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"assoc: waiting for existing scans\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"assoc: scanning for compatible AP\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"assoc: waiting for scan to complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"assoc: scanning completed\0A\00", align 1
@IEEE80211_BSS_TYPE_ESS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"assoc: bss %pM not in scan results\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"trying %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"cipher 0x%x, key index %d, key len %d\0A\00", align 1
@CMD_ACT_MAC_WEP_ENABLE = common dso_local global i32 0, align 4
@KEY_TYPE_ID_WEP = common dso_local global i32 0, align 4
@KEY_INFO_WPA_UNICAST = common dso_local global i32 0, align 4
@KEY_INFO_WPA_MCAST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"unsupported cipher group 0x%x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"unsupported authtype 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_connect_params*)* @lbs_cfg_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cfg_connect(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.lbs_private*, align 8
  %9 = alloca %struct.cfg80211_bss*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_scan_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %13)
  store %struct.lbs_private* %14, %struct.lbs_private** %8, align 8
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @RADIO_PREAMBLE_SHORT, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 6
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = icmp eq %struct.net_device* %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %234

24:                                               ; preds = %3
  %25 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %26 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 15, %39
  %41 = call i32 @wait_event_interruptible_timeout(i32 %33, i32 %38, i32 %40)
  %42 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %43 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %44 = call %struct.cfg80211_scan_request* @_new_connect_scan_req(%struct.wiphy* %42, %struct.cfg80211_connect_params* %43)
  store %struct.cfg80211_scan_request* %44, %struct.cfg80211_scan_request** %12, align 8
  %45 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %12, align 8
  %46 = icmp ne %struct.cfg80211_scan_request* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %225

50:                                               ; preds = %29
  %51 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %53 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %12, align 8
  %54 = call i32 @_internal_start_scan(%struct.lbs_private* %52, i32 1, %struct.cfg80211_scan_request* %53)
  %55 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 15, %64
  %66 = call i32 @wait_event_interruptible_timeout(i32 %58, i32 %63, i32 %65)
  %67 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %50, %24
  %69 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %70 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %71 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %74 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %77 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %80 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IEEE80211_BSS_TYPE_ESS, align 4
  %83 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %84 = call %struct.cfg80211_bss* @cfg80211_get_bss(%struct.wiphy* %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %82, i32 %83)
  store %struct.cfg80211_bss* %84, %struct.cfg80211_bss** %9, align 8
  %85 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %86 = icmp ne %struct.cfg80211_bss* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %68
  %88 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %89 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @wiphy_err(%struct.wiphy* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ENOENT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %225

95:                                               ; preds = %68
  %96 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %97 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %101 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %105 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %108 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %103, i64 %106, i32 %109)
  %111 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %112 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %114 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @memset(i32* %115, i32 0, i32 8)
  %117 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %118 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @memset(i32* %119, i32 0, i32 8)
  %121 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %122 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %194 [
    i32 128, label %125
    i32 129, label %125
    i32 0, label %167
    i32 130, label %167
    i32 131, label %167
  ]

125:                                              ; preds = %95, %95
  %126 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %127 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %130 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %132 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %135 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %138 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %133, i32* %140, align 4
  %141 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %142 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %145 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %150 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %153 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @memcpy(i32 %148, i32 %151, i32 %154)
  %156 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %157 = call i32 @lbs_set_wep_keys(%struct.lbs_private* %156)
  %158 = load i32, i32* @CMD_ACT_MAC_WEP_ENABLE, align 4
  %159 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %160 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %164 = call i32 @lbs_set_mac_control(%struct.lbs_private* %163)
  %165 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %166 = call i32 @lbs_enable_rsn(%struct.lbs_private* %165, i32 0)
  br label %203

167:                                              ; preds = %95, %95, %95
  %168 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %169 = call i32 @lbs_remove_wep_keys(%struct.lbs_private* %168)
  %170 = load i32, i32* @CMD_ACT_MAC_WEP_ENABLE, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %173 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %177 = call i32 @lbs_set_mac_control(%struct.lbs_private* %176)
  %178 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %179 = load i32, i32* @KEY_TYPE_ID_WEP, align 4
  %180 = load i32, i32* @KEY_INFO_WPA_UNICAST, align 4
  %181 = call i32 @lbs_set_key_material(%struct.lbs_private* %178, i32 %179, i32 %180, i32* null, i32 0)
  %182 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %183 = load i32, i32* @KEY_TYPE_ID_WEP, align 4
  %184 = load i32, i32* @KEY_INFO_WPA_MCAST, align 4
  %185 = call i32 @lbs_set_key_material(%struct.lbs_private* %182, i32 %183, i32 %184, i32* null, i32 0)
  %186 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %187 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %188 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @lbs_enable_rsn(%struct.lbs_private* %186, i32 %192)
  br label %203

194:                                              ; preds = %95
  %195 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %196 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %197 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @wiphy_err(%struct.wiphy* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @ENOTSUPP, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %225

203:                                              ; preds = %167, %125
  %204 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %205 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %206 = call i32 @lbs_set_authtype(%struct.lbs_private* %204, %struct.cfg80211_connect_params* %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @ENOTSUPP, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %203
  %212 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %213 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %214 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @wiphy_err(%struct.wiphy* %212, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %215)
  br label %225

217:                                              ; preds = %203
  %218 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @lbs_set_radio(%struct.lbs_private* %218, i32 %219, i32 1)
  %221 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %222 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %223 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %224 = call i32 @lbs_associate(%struct.lbs_private* %221, %struct.cfg80211_bss* %222, %struct.cfg80211_connect_params* %223)
  store i32 %224, i32* %10, align 4
  br label %225

225:                                              ; preds = %217, %211, %194, %87, %47
  %226 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %227 = icmp ne %struct.cfg80211_bss* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %230 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %231 = call i32 @cfg80211_put_bss(%struct.wiphy* %229, %struct.cfg80211_bss* %230)
  br label %232

232:                                              ; preds = %228, %225
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %232, %21
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @lbs_deb_assoc(i8*, ...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local %struct.cfg80211_scan_request* @_new_connect_scan_req(%struct.wiphy*, %struct.cfg80211_connect_params*) #1

declare dso_local i32 @_internal_start_scan(%struct.lbs_private*, i32, %struct.cfg80211_scan_request*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(%struct.wiphy*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_err(%struct.wiphy*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbs_set_wep_keys(%struct.lbs_private*) #1

declare dso_local i32 @lbs_set_mac_control(%struct.lbs_private*) #1

declare dso_local i32 @lbs_enable_rsn(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_remove_wep_keys(%struct.lbs_private*) #1

declare dso_local i32 @lbs_set_key_material(%struct.lbs_private*, i32, i32, i32*, i32) #1

declare dso_local i32 @lbs_set_authtype(%struct.lbs_private*, %struct.cfg80211_connect_params*) #1

declare dso_local i32 @lbs_set_radio(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_associate(%struct.lbs_private*, %struct.cfg80211_bss*, %struct.cfg80211_connect_params*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
