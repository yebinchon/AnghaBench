; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_handle_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32, %struct.net_device* }
%struct.TYPE_5__ = type { i32, i32, %struct.sta_info** }
%struct.sta_info = type { i32, i32, i32, i32, i32*, i8*, i8* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_MGMT_HDR_LEN = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"%s: handle_assoc - too short payload (len=%d, reassoc=%d) from %pM\0A\00", align 1
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"trying to associate before authentication\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i8 0, align 1
@MAX_SSID_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SSID overflow\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"not our SSID\00", align 1
@WLAN_STATUS_ASSOC_DENIED_UNSPEC = common dso_local global i64 0, align 8
@WLAN_EID_SUPP_RATES = common dso_local global i8 0, align 1
@WLAN_SUPP_RATES_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"SUPP_RATES len error\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s: assoc from %pM with extra data (%d bytes) [\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<%02x>\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"frame underflow\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"OK, old AID\00", align 1
@MAX_AID_TABLE_SIZE = common dso_local global i32 0, align 4
@WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"no room for more AIDs\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"OK, new AID\00", align 1
@WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i64 0, align 8
@WLAN_RATE_1M = common dso_local global i32 0, align 4
@WLAN_RATE_2M = common dso_local global i32 0, align 4
@WLAN_RATE_5M5 = common dso_local global i32 0, align 4
@WLAN_RATE_11M = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_STYPE_REASSOC_RESP = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ASSOC_RESP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*, i32)* @handle_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_assoc(%struct.TYPE_4__* %0, %struct.sk_buff* %1, %struct.hostap_80211_rx_status* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hostap_80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca [12 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sta_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %32, %struct.ieee80211_hdr** %10, align 8
  %33 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  store i64 %33, i64* %17, align 8
  store %struct.sta_info* null, %struct.sta_info** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %14, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 10, i32 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %4
  %50 = load i32, i32* @DEBUG_AP, align 4
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %50, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %58)
  store i32 1, i32* %23, align 4
  br label %557

60:                                               ; preds = %4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_5__* %68, i32 %71)
  store %struct.sta_info* %72, %struct.sta_info** %18, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %74 = icmp eq %struct.sta_info* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %60
  %76 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @WLAN_STA_AUTH, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75, %60
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock_bh(i32* %86)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  store i32 1, i32* %19, align 4
  %88 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %88, i64* %17, align 8
  store %struct.sta_info* null, %struct.sta_info** %18, align 8
  br label %358

89:                                               ; preds = %75
  %90 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 2
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock_bh(i32* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %16, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i8* @__le16_to_cpu(i8 zeroext %106)
  %108 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %16, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %112, 2
  store i32 %113, i32* %15, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i8* @__le16_to_cpu(i8 zeroext %115)
  %117 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %16, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %121, 2
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %89
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = call i32 @memcpy(i32* %37, i8* %126, i32 %127)
  %129 = load i8*, i8** %16, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %16, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %16, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %16, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sub nsw i32 %135, 6
  store i32 %136, i32* %15, align 4
  br label %139

137:                                              ; preds = %89
  %138 = call i32 @eth_zero_addr(i32* %37)
  br label %139

139:                                              ; preds = %137, %125
  %140 = load i32, i32* %15, align 4
  %141 = icmp sge i32 %140, 2
  br i1 %141, label %142, label %280

142:                                              ; preds = %139
  %143 = load i8*, i8** %16, align 8
  store i8* %143, i8** %25, align 8
  %144 = load i8*, i8** %25, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @WLAN_EID_SSID, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %196

150:                                              ; preds = %142
  %151 = load i8*, i8** %25, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %25, align 8
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %15, align 4
  %155 = load i8*, i8** %25, align 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  store i32 %157, i32* %24, align 4
  %158 = load i8*, i8** %25, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %25, align 8
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ugt i32 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %150
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* @MAX_SSID_LEN, align 4
  %168 = icmp ugt i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165, %150
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %170 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %170, i64* %17, align 8
  br label %358

171:                                              ; preds = %165
  %172 = load i32, i32* %24, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @strlen(i32 %175)
  %177 = icmp ne i32 %172, %176
  br i1 %177, label %186, label %178

178:                                              ; preds = %171
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %25, align 8
  %183 = load i32, i32* %24, align 4
  %184 = call i64 @memcmp(i32 %181, i8* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178, %171
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  %187 = load i64, i64* @WLAN_STATUS_ASSOC_DENIED_UNSPEC, align 8
  store i64 %187, i64* %17, align 8
  br label %358

188:                                              ; preds = %178
  %189 = load i32, i32* %24, align 4
  %190 = load i8*, i8** %25, align 8
  %191 = zext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %25, align 8
  %193 = load i32, i32* %24, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub i32 %194, %193
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %188, %142
  %197 = load i32, i32* %15, align 4
  %198 = icmp sge i32 %197, 2
  br i1 %198, label %199, label %250

199:                                              ; preds = %196
  %200 = load i8*, i8** %25, align 8
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* @WLAN_EID_SUPP_RATES, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %250

206:                                              ; preds = %199
  %207 = load i8*, i8** %25, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %25, align 8
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %15, align 4
  %211 = load i8*, i8** %25, align 8
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  store i32 %213, i32* %24, align 4
  %214 = load i8*, i8** %25, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %25, align 8
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %24, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp ugt i32 %218, %219
  br i1 %220, label %228, label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %24, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* @WLAN_SUPP_RATES_MAX, align 4
  %227 = icmp ugt i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224, %221, %206
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %20, align 8
  %229 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %229, i64* %17, align 8
  br label %358

230:                                              ; preds = %224
  %231 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %232 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @memset(i32* %233, i32 0, i32 8)
  %235 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = load i8*, i8** %25, align 8
  %239 = load i32, i32* %24, align 4
  %240 = call i32 @memcpy(i32* %237, i8* %238, i32 %239)
  %241 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %242 = call i32 @prism2_check_tx_rates(%struct.sta_info* %241)
  %243 = load i32, i32* %24, align 4
  %244 = load i8*, i8** %25, align 8
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8* %246, i8** %25, align 8
  %247 = load i32, i32* %24, align 4
  %248 = load i32, i32* %15, align 4
  %249 = sub i32 %248, %247
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %230, %199, %196
  %251 = load i32, i32* %15, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %279

253:                                              ; preds = %250
  %254 = load i32, i32* @DEBUG_AP, align 4
  %255 = load %struct.net_device*, %struct.net_device** %9, align 8
  %256 = getelementptr inbounds %struct.net_device, %struct.net_device* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %259 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %254, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %266, %253
  %264 = load i32, i32* %15, align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load i32, i32* @DEBUG_AP, align 4
  %268 = load i8*, i8** %25, align 8
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = call i32 (i32, i8*, ...) @PDEBUG2(i32 %267, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %270)
  %272 = load i8*, i8** %25, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %25, align 8
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %15, align 4
  br label %263

276:                                              ; preds = %263
  %277 = load i32, i32* @DEBUG_AP, align 4
  %278 = call i32 (i32, i8*, ...) @PDEBUG2(i32 %277, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %250
  br label %282

280:                                              ; preds = %139
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  %281 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %281, i64* %17, align 8
  br label %358

282:                                              ; preds = %279
  %283 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %284 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %20, align 8
  br label %357

288:                                              ; preds = %282
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 1
  %293 = call i32 @spin_lock_bh(i32* %292)
  %294 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %295 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %294, i32 0, i32 1
  store i32 1, i32* %295, align 4
  br label %296

296:                                              ; preds = %318, %288
  %297 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %298 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @MAX_AID_TABLE_SIZE, align 4
  %301 = icmp sle i32 %299, %300
  br i1 %301, label %302, label %323

302:                                              ; preds = %296
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 2
  %307 = load %struct.sta_info**, %struct.sta_info*** %306, align 8
  %308 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %309 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %307, i64 %312
  %314 = load %struct.sta_info*, %struct.sta_info** %313, align 8
  %315 = icmp eq %struct.sta_info* %314, null
  br i1 %315, label %316, label %317

316:                                              ; preds = %302
  br label %323

317:                                              ; preds = %302
  br label %318

318:                                              ; preds = %317
  %319 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %320 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 4
  br label %296

323:                                              ; preds = %316, %296
  %324 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %325 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @MAX_AID_TABLE_SIZE, align 4
  %328 = icmp sgt i32 %326, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %323
  %330 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %331 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %330, i32 0, i32 1
  store i32 0, i32* %331, align 4
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 1
  %336 = call i32 @spin_unlock_bh(i32* %335)
  %337 = load i64, i64* @WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA, align 8
  store i64 %337, i64* %17, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %20, align 8
  br label %356

338:                                              ; preds = %323
  %339 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 2
  %344 = load %struct.sta_info**, %struct.sta_info*** %343, align 8
  %345 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %346 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %344, i64 %349
  store %struct.sta_info* %339, %struct.sta_info** %350, align 8
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 1
  %355 = call i32 @spin_unlock_bh(i32* %354)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %20, align 8
  br label %356

356:                                              ; preds = %338, %329
  br label %357

357:                                              ; preds = %356, %287
  br label %358

358:                                              ; preds = %357, %280, %228, %186, %169, %82
  %359 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  store i8* %359, i8** %16, align 8
  %360 = load i32, i32* %19, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %358
  %363 = load i64, i64* @WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH, align 8
  %364 = call zeroext i8 @cpu_to_le16(i64 %363)
  %365 = load i8*, i8** %16, align 8
  store i8 %364, i8* %365, align 1
  %366 = load i8*, i8** %16, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %16, align 8
  br label %498

368:                                              ; preds = %358
  %369 = load i64, i64* @WLAN_CAPABILITY_ESS, align 8
  %370 = call zeroext i8 @cpu_to_le16(i64 %369)
  %371 = load i8*, i8** %16, align 8
  store i8 %370, i8* %371, align 1
  %372 = load i8*, i8** %16, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %16, align 8
  %374 = load i64, i64* %17, align 8
  %375 = call zeroext i8 @cpu_to_le16(i64 %374)
  %376 = load i8*, i8** %16, align 8
  store i8 %375, i8* %376, align 1
  %377 = load i8*, i8** %16, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %16, align 8
  %379 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %380 = icmp ne %struct.sta_info* %379, null
  br i1 %380, label %381, label %390

381:                                              ; preds = %368
  %382 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %383 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %388 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  br label %391

390:                                              ; preds = %381, %368
  br label %391

391:                                              ; preds = %390, %386
  %392 = phi i32 [ %389, %386 ], [ 0, %390 ]
  %393 = sext i32 %392 to i64
  %394 = call i64 @BIT(i32 14)
  %395 = or i64 %393, %394
  %396 = call i64 @BIT(i32 15)
  %397 = or i64 %395, %396
  %398 = call zeroext i8 @cpu_to_le16(i64 %397)
  %399 = load i8*, i8** %16, align 8
  store i8 %398, i8* %399, align 1
  %400 = load i8*, i8** %16, align 8
  %401 = getelementptr inbounds i8, i8* %400, i32 1
  store i8* %401, i8** %16, align 8
  %402 = load i8*, i8** %16, align 8
  store i8* %402, i8** %12, align 8
  %403 = load i8, i8* @WLAN_EID_SUPP_RATES, align 1
  %404 = load i8*, i8** %12, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %12, align 8
  store i8 %403, i8* %404, align 1
  %406 = load i8*, i8** %12, align 8
  store i8* %406, i8** %13, align 8
  %407 = load i8*, i8** %12, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %12, align 8
  store i8 0, i8* %407, align 1
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @WLAN_RATE_1M, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %430

415:                                              ; preds = %391
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @WLAN_RATE_1M, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i32 130, i32 2
  %424 = trunc i32 %423 to i8
  %425 = load i8*, i8** %12, align 8
  %426 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %426, i8** %12, align 8
  store i8 %424, i8* %425, align 1
  %427 = load i8*, i8** %13, align 8
  %428 = load i8, i8* %427, align 1
  %429 = add i8 %428, 1
  store i8 %429, i8* %427, align 1
  br label %430

430:                                              ; preds = %415, %391
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @WLAN_RATE_2M, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %452

437:                                              ; preds = %430
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @WLAN_RATE_2M, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  %444 = zext i1 %443 to i64
  %445 = select i1 %443, i32 132, i32 4
  %446 = trunc i32 %445 to i8
  %447 = load i8*, i8** %12, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %12, align 8
  store i8 %446, i8* %447, align 1
  %449 = load i8*, i8** %13, align 8
  %450 = load i8, i8* %449, align 1
  %451 = add i8 %450, 1
  store i8 %451, i8* %449, align 1
  br label %452

452:                                              ; preds = %437, %430
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @WLAN_RATE_5M5, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %474

459:                                              ; preds = %452
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* @WLAN_RATE_5M5, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  %466 = zext i1 %465 to i64
  %467 = select i1 %465, i32 139, i32 11
  %468 = trunc i32 %467 to i8
  %469 = load i8*, i8** %12, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %12, align 8
  store i8 %468, i8* %469, align 1
  %471 = load i8*, i8** %13, align 8
  %472 = load i8, i8* %471, align 1
  %473 = add i8 %472, 1
  store i8 %473, i8* %471, align 1
  br label %474

474:                                              ; preds = %459, %452
  %475 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @WLAN_RATE_11M, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %496

481:                                              ; preds = %474
  %482 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @WLAN_RATE_11M, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i32 150, i32 22
  %490 = trunc i32 %489 to i8
  %491 = load i8*, i8** %12, align 8
  %492 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %492, i8** %12, align 8
  store i8 %490, i8* %491, align 1
  %493 = load i8*, i8** %13, align 8
  %494 = load i8, i8* %493, align 1
  %495 = add i8 %494, 1
  store i8 %495, i8* %493, align 1
  br label %496

496:                                              ; preds = %481, %474
  %497 = load i8*, i8** %12, align 8
  store i8* %497, i8** %16, align 8
  br label %498

498:                                              ; preds = %496, %362
  %499 = load %struct.net_device*, %struct.net_device** %9, align 8
  %500 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %501 = load i32, i32* %19, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %498
  %504 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  br label %514

505:                                              ; preds = %498
  %506 = load i32, i32* %8, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  %509 = load i32, i32* @IEEE80211_STYPE_REASSOC_RESP, align 4
  br label %512

510:                                              ; preds = %505
  %511 = load i32, i32* @IEEE80211_STYPE_ASSOC_RESP, align 4
  br label %512

512:                                              ; preds = %510, %508
  %513 = phi i32 [ %509, %508 ], [ %511, %510 ]
  br label %514

514:                                              ; preds = %512, %503
  %515 = phi i32 [ %504, %503 ], [ %513, %512 ]
  %516 = or i32 %500, %515
  %517 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %518 = load i8*, i8** %16, align 8
  %519 = bitcast i8* %518 to i32*
  %520 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %521 = bitcast i8* %520 to i32*
  %522 = ptrtoint i32* %519 to i64
  %523 = ptrtoint i32* %521 to i64
  %524 = sub i64 %522, %523
  %525 = sdiv exact i64 %524, 4
  %526 = trunc i64 %525 to i32
  %527 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %528 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = load i32, i32* %19, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %514
  br label %539

533:                                              ; preds = %514
  %534 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 2
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  br label %539

539:                                              ; preds = %533, %532
  %540 = phi i32 [ 0, %532 ], [ %538, %533 ]
  %541 = call i32 @prism2_send_mgmt(%struct.net_device* %499, i32 %516, i8* %517, i32 %526, i32 %529, i32 %540)
  %542 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %543 = icmp ne %struct.sta_info* %542, null
  br i1 %543, label %544, label %556

544:                                              ; preds = %539
  %545 = load i64, i64* %17, align 8
  %546 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %547 = icmp eq i64 %545, %546
  br i1 %547, label %548, label %552

548:                                              ; preds = %544
  %549 = load i32, i32* @jiffies, align 4
  %550 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %551 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %550, i32 0, i32 3
  store i32 %549, i32* %551, align 4
  br label %552

552:                                              ; preds = %548, %544
  %553 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %554 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %553, i32 0, i32 2
  %555 = call i32 @atomic_dec(i32* %554)
  br label %556

556:                                              ; preds = %552, %539
  store i32 0, i32* %23, align 4
  br label %557

557:                                              ; preds = %556, %49
  %558 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %558)
  %559 = load i32, i32* %23, align 4
  switch i32 %559, label %561 [
    i32 0, label %560
    i32 1, label %560
  ]

560:                                              ; preds = %557, %557
  ret void

561:                                              ; preds = %557
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i8* @__le16_to_cpu(i8 zeroext) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @eth_zero_addr(i32*) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @prism2_check_tx_rates(%struct.sta_info*) #2

declare dso_local i32 @PDEBUG2(i32, i8*, ...) #2

declare dso_local zeroext i8 @cpu_to_le16(i64) #2

declare dso_local i64 @BIT(i32) #2

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @atomic_dec(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
