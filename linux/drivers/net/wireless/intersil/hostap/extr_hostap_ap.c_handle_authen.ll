; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_authen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_authen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.ap_data*, %struct.TYPE_8__, %struct.net_device* }
%struct.ap_data = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.sta_info = type { i32, i32, i32, %struct.TYPE_9__, i64, i64, i32, %struct.lib80211_crypt_data* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i64 }

@WLAN_AUTH_CHALLENGE_LEN = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IEEE80211_MGMT_HDR_LEN = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: handle_authen - too short payload (len=%d) from %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"authentication denied\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@PRISM2_AUTH_OPEN = common dso_local global i32 0, align 4
@PRISM2_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unsupported algorithm\00", align 1
@WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG = common dso_local global i32 0, align 4
@WLAN_EID_CHALLENGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid challenge len\00", align 1
@WLAN_STATUS_CHALLENGE_FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"challenge underflow\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"%s: no beacons received for a while, assuming AP %pM is now STA\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"AP trying to authenticate?\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"unknown authentication transaction number\00", align 1
@WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"new STA\00", align 1
@MAX_STA_COUNT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"no more room for new STAs\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ap_add_sta failed\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"authOK\00", align 1
@WLAN_STA_AUTH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [29 x i8] c"challenge response incorrect\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"challenge OK - authOK\00", align 1
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_AUTH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [68 x i8] c"%s: %pM auth (alg=%d trans#=%d stat=%d len=%d fc=%04x) ==> %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*)* @handle_authen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_authen(%struct.TYPE_11__* %0, %struct.sk_buff* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hostap_80211_rx_status*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ap_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sta_info*, align 8
  %22 = alloca %struct.lib80211_crypt_data*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %6, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.ap_data*, %struct.ap_data** %36, align 8
  store %struct.ap_data* %37, %struct.ap_data** %10, align 8
  %38 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %39 = add nsw i32 8, %38
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %11, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %43 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %43, i32* %20, align 4
  store %struct.sta_info* null, %struct.sta_info** %21, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @hostap_80211_get_hdrlen(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %65

55:                                               ; preds = %3
  %56 = load i32, i32* @DEBUG_AP, align 4
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %63)
  store i32 1, i32* %24, align 4
  br label %513

65:                                               ; preds = %3
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.ap_data*, %struct.ap_data** %67, align 8
  %69 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %68, i32 0, i32 3
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load %struct.ap_data*, %struct.ap_data** %72, align 8
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %73, i32 %76)
  store %struct.sta_info* %77, %struct.sta_info** %21, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %79 = icmp ne %struct.sta_info* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %65
  %81 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 1
  %83 = call i32 @atomic_inc(i32* %82)
  br label %84

84:                                               ; preds = %80, %65
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.ap_data*, %struct.ap_data** %86, align 8
  %88 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %87, i32 0, i32 3
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %91 = icmp ne %struct.sta_info* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 7
  %95 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %94, align 8
  %96 = icmp ne %struct.lib80211_crypt_data* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 7
  %100 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %99, align 8
  store %struct.lib80211_crypt_data* %100, %struct.lib80211_crypt_data** %22, align 8
  br label %127

101:                                              ; preds = %92, %84
  store i32 0, i32* %25, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 3
  %108 = icmp uge i64 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 3
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 6
  store i32 %117, i32* %25, align 4
  br label %118

118:                                              ; preds = %109, %101
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %121, align 8
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %122, i64 %124
  %126 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %125, align 8
  store %struct.lib80211_crypt_data* %126, %struct.lib80211_crypt_data** %22, align 8
  br label %127

127:                                              ; preds = %118, %97
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %19, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @__le16_to_cpu(i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %19, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @__le16_to_cpu(i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %19, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @__le16_to_cpu(i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32*, i32** %19, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %19, align 8
  %149 = load %struct.net_device*, %struct.net_device** %7, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @ether_addr_equal(i32 %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %127
  %158 = load %struct.ap_data*, %struct.ap_data** %10, align 8
  %159 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %158, i32 0, i32 2
  %160 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %161 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @ap_control_mac_deny(i32* %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157, %127
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %166 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %166, i32* %20, align 4
  br label %407

167:                                              ; preds = %157
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PRISM2_AUTH_OPEN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i32, i32* %16, align 4
  %176 = icmp eq i32 %175, 129
  br i1 %176, label %190, label %177

177:                                              ; preds = %174, %167
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @PRISM2_AUTH_SHARED_KEY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %186 = icmp ne %struct.lib80211_crypt_data* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32, i32* %16, align 4
  %189 = icmp eq i32 %188, 128
  br i1 %189, label %190, label %191

190:                                              ; preds = %187, %174
  br label %193

191:                                              ; preds = %187, %184, %177
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  %192 = load i32, i32* @WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG, align 4
  store i32 %192, i32* %20, align 4
  br label %407

193:                                              ; preds = %190
  %194 = load i32, i32* %14, align 4
  %195 = icmp sge i32 %194, 8
  br i1 %195, label %196, label %224

196:                                              ; preds = %193
  %197 = load i32*, i32** %19, align 8
  %198 = bitcast i32* %197 to i64*
  store i64* %198, i64** %26, align 8
  %199 = load i64*, i64** %26, align 8
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @WLAN_EID_CHALLENGE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %196
  %204 = load i64*, i64** %26, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp ne i64 %206, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %211 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %211, i32* %20, align 4
  br label %407

212:                                              ; preds = %203
  %213 = load i32, i32* %14, align 4
  %214 = sub nsw i32 %213, 8
  %215 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  %218 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %218, i32* %20, align 4
  br label %407

219:                                              ; preds = %212
  %220 = load i64*, i64** %26, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 2
  %222 = bitcast i64* %221 to i8*
  store i8* %222, i8** %13, align 8
  br label %223

223:                                              ; preds = %219, %196
  br label %224

224:                                              ; preds = %223, %193
  %225 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %226 = icmp ne %struct.sta_info* %225, null
  br i1 %226, label %227, label %270

227:                                              ; preds = %224
  %228 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %229 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %270

232:                                              ; preds = %227
  %233 = load i32, i32* @jiffies, align 4
  %234 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %235 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %240 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 10, %241
  %243 = load i32, i32* @HZ, align 4
  %244 = mul nsw i32 %242, %243
  %245 = sdiv i32 %244, 1024
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %238, %246
  %248 = call i64 @time_after(i32 %233, i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %232
  %251 = load i32, i32* @DEBUG_AP, align 4
  %252 = load %struct.net_device*, %struct.net_device** %7, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %256 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %251, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %254, i32 %257)
  %259 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %260 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %259, i32 0, i32 5
  store i64 0, i64* %260, align 8
  %261 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %262 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %261, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %264 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  store i32* null, i32** %266, align 8
  br label %269

267:                                              ; preds = %232
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %23, align 8
  %268 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %268, i32* %20, align 4
  br label %407

269:                                              ; preds = %250
  br label %270

270:                                              ; preds = %269, %227, %224
  %271 = load i32, i32* %16, align 4
  %272 = icmp eq i32 %271, 129
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* %17, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %295, label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* %16, align 4
  %278 = icmp eq i32 %277, 128
  br i1 %278, label %279, label %296

279:                                              ; preds = %276
  %280 = load i32, i32* %17, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %295, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %283, 3
  br i1 %284, label %285, label %296

285:                                              ; preds = %282
  %286 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %287 = icmp ne %struct.sta_info* %286, null
  br i1 %287, label %288, label %296

288:                                              ; preds = %285
  %289 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %290 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %296

295:                                              ; preds = %288, %279, %273
  br label %298

296:                                              ; preds = %288, %285, %282, %276
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8** %23, align 8
  %297 = load i32, i32* @WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION, align 4
  store i32 %297, i32* %20, align 4
  br label %407

298:                                              ; preds = %295
  %299 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %300 = icmp eq %struct.sta_info* %299, null
  br i1 %300, label %301, label %324

301:                                              ; preds = %298
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %23, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load %struct.ap_data*, %struct.ap_data** %303, align 8
  %305 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @MAX_STA_COUNT, align 8
  %308 = icmp sge i64 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %301
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8** %23, align 8
  %310 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %310, i32* %20, align 4
  br label %407

311:                                              ; preds = %301
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  %314 = load %struct.ap_data*, %struct.ap_data** %313, align 8
  %315 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %316 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call %struct.sta_info* @ap_add_sta(%struct.ap_data* %314, i32 %317)
  store %struct.sta_info* %318, %struct.sta_info** %21, align 8
  %319 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %320 = icmp eq %struct.sta_info* %319, null
  br i1 %320, label %321, label %323

321:                                              ; preds = %311
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %23, align 8
  %322 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %322, i32* %20, align 4
  br label %407

323:                                              ; preds = %311
  br label %324

324:                                              ; preds = %323, %298
  %325 = load i32, i32* %16, align 4
  switch i32 %325, label %406 [
    i32 129, label %326
    i32 128, label %332
  ]

326:                                              ; preds = %324
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %23, align 8
  %327 = load i64, i64* @WLAN_STA_AUTH, align 8
  %328 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %329 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = or i64 %330, %327
  store i64 %331, i64* %329, align 8
  br label %406

332:                                              ; preds = %324
  %333 = load i32, i32* %17, align 4
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %361

335:                                              ; preds = %332
  %336 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %337 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = icmp eq i32* %340, null
  br i1 %341, label %342, label %360

342:                                              ; preds = %335
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 1
  %345 = load %struct.ap_data*, %struct.ap_data** %344, align 8
  %346 = call i32* @ap_auth_make_challenge(%struct.ap_data* %345)
  %347 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %348 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  store i32* %346, i32** %350, align 8
  %351 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %352 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = icmp eq i32* %355, null
  br i1 %356, label %357, label %359

357:                                              ; preds = %342
  %358 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %358, i32* %20, align 4
  br label %407

359:                                              ; preds = %342
  br label %360

360:                                              ; preds = %359, %335
  br label %405

361:                                              ; preds = %332
  %362 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %363 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = icmp eq i32* %366, null
  br i1 %367, label %387, label %368

368:                                              ; preds = %361
  %369 = load i8*, i8** %13, align 8
  %370 = icmp eq i8* %369, null
  br i1 %370, label %387, label %371

371:                                              ; preds = %368
  %372 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %373 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i8*, i8** %13, align 8
  %378 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %379 = call i32 @memcmp(i32* %376, i8* %377, i32 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %371
  %382 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %383 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @ieee80211_has_protected(i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %381, %371, %368, %361
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8** %23, align 8
  %388 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %388, i32* %20, align 4
  br label %407

389:                                              ; preds = %381
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8** %23, align 8
  %390 = load i64, i64* @WLAN_STA_AUTH, align 8
  %391 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %392 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = or i64 %393, %390
  store i64 %394, i64* %392, align 8
  %395 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %396 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = call i32 @kfree(i32* %399)
  %401 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %402 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  store i32* null, i32** %404, align 8
  br label %405

405:                                              ; preds = %389, %360
  br label %406

406:                                              ; preds = %324, %405, %326
  br label %407

407:                                              ; preds = %406, %387, %357, %321, %309, %296, %267, %217, %210, %191, %165
  %408 = bitcast i8* %42 to i32*
  store i32* %408, i32** %19, align 8
  %409 = load i32, i32* %16, align 4
  %410 = call i32 @cpu_to_le16(i32 %409)
  %411 = load i32*, i32** %19, align 8
  store i32 %410, i32* %411, align 4
  %412 = load i32*, i32** %19, align 8
  %413 = getelementptr inbounds i32, i32* %412, i32 1
  store i32* %413, i32** %19, align 8
  %414 = load i32, i32* %17, align 4
  %415 = add nsw i32 %414, 1
  %416 = call i32 @cpu_to_le16(i32 %415)
  %417 = load i32*, i32** %19, align 8
  store i32 %416, i32* %417, align 4
  %418 = load i32*, i32** %19, align 8
  %419 = getelementptr inbounds i32, i32* %418, i32 1
  store i32* %419, i32** %19, align 8
  %420 = load i32, i32* %20, align 4
  %421 = call i32 @cpu_to_le16(i32 %420)
  %422 = load i32*, i32** %19, align 8
  store i32 %421, i32* %422, align 4
  %423 = load i32*, i32** %19, align 8
  %424 = getelementptr inbounds i32, i32* %423, i32 1
  store i32* %424, i32** %19, align 8
  store i32 6, i32* %15, align 4
  %425 = load i32, i32* %20, align 4
  %426 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %468

428:                                              ; preds = %407
  %429 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %430 = icmp ne %struct.sta_info* %429, null
  br i1 %430, label %431, label %468

431:                                              ; preds = %428
  %432 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %433 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = icmp ne i32* %436, null
  br i1 %437, label %438, label %468

438:                                              ; preds = %431
  %439 = load i32, i32* %16, align 4
  %440 = icmp eq i32 %439, 128
  br i1 %440, label %441, label %468

441:                                              ; preds = %438
  %442 = load i32, i32* %17, align 4
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %444, label %468

444:                                              ; preds = %441
  %445 = load i32*, i32** %19, align 8
  %446 = bitcast i32* %445 to i64*
  store i64* %446, i64** %27, align 8
  %447 = load i64, i64* @WLAN_EID_CHALLENGE, align 8
  %448 = load i64*, i64** %27, align 8
  %449 = getelementptr inbounds i64, i64* %448, i32 1
  store i64* %449, i64** %27, align 8
  store i64 %447, i64* %448, align 8
  %450 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %451 = sext i32 %450 to i64
  %452 = load i64*, i64** %27, align 8
  %453 = getelementptr inbounds i64, i64* %452, i32 1
  store i64* %453, i64** %27, align 8
  store i64 %451, i64* %452, align 8
  %454 = load i32*, i32** %19, align 8
  %455 = getelementptr inbounds i32, i32* %454, i32 1
  store i32* %455, i32** %19, align 8
  %456 = load i32*, i32** %19, align 8
  %457 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %458 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %457, i32 0, i32 3
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %463 = call i32 @memcpy(i32* %456, i32* %461, i32 %462)
  %464 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %465 = add nsw i32 2, %464
  %466 = load i32, i32* %15, align 4
  %467 = add nsw i32 %466, %465
  store i32 %467, i32* %15, align 4
  br label %468

468:                                              ; preds = %444, %441, %438, %431, %428, %407
  %469 = load %struct.net_device*, %struct.net_device** %7, align 8
  %470 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %471 = load i32, i32* @IEEE80211_STYPE_AUTH, align 4
  %472 = or i32 %470, %471
  %473 = load i32, i32* %15, align 4
  %474 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %475 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.ap_data*, %struct.ap_data** %10, align 8
  %478 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = call i32 @prism2_send_mgmt(%struct.net_device* %469, i32 %472, i8* %42, i32 %473, i32 %476, i32 %479)
  %481 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %482 = icmp ne %struct.sta_info* %481, null
  br i1 %482, label %483, label %490

483:                                              ; preds = %468
  %484 = load i32, i32* @jiffies, align 4
  %485 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %486 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %485, i32 0, i32 2
  store i32 %484, i32* %486, align 8
  %487 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %488 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %487, i32 0, i32 1
  %489 = call i32 @atomic_dec(i32* %488)
  br label %490

490:                                              ; preds = %483, %468
  %491 = load i32, i32* %20, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %512

493:                                              ; preds = %490
  %494 = load i32, i32* @DEBUG_AP, align 4
  %495 = load %struct.net_device*, %struct.net_device** %7, align 8
  %496 = getelementptr inbounds %struct.net_device, %struct.net_device* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %499 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %16, align 4
  %502 = load i32, i32* %17, align 4
  %503 = load i32, i32* %18, align 4
  %504 = load i32, i32* %14, align 4
  %505 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %506 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @le16_to_cpu(i32 %507)
  %509 = load i32, i32* %20, align 4
  %510 = load i8*, i8** %23, align 8
  %511 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %494, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i32 %497, i32 %500, i32 %501, i32 %502, i32 %503, i32 %504, i32 %508, i32 %509, i8* %510)
  br label %512

512:                                              ; preds = %493, %490
  store i32 0, i32* %24, align 4
  br label %513

513:                                              ; preds = %512, %55
  %514 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %514)
  %515 = load i32, i32* %24, align 4
  switch i32 %515, label %517 [
    i32 0, label %516
    i32 1, label %516
  ]

516:                                              ; preds = %513, %513
  ret void

517:                                              ; preds = %513
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hostap_80211_get_hdrlen(i32) #2

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @__le16_to_cpu(i32) #2

declare dso_local i64 @ether_addr_equal(i32, i32) #2

declare dso_local i64 @ap_control_mac_deny(i32*, i32) #2

declare dso_local i64 @time_after(i32, i64) #2

declare dso_local %struct.sta_info* @ap_add_sta(%struct.ap_data*, i32) #2

declare dso_local i32* @ap_auth_make_challenge(%struct.ap_data*) #2

declare dso_local i32 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @ieee80211_has_protected(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
