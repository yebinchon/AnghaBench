; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_bss_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_bss_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i64, i32, i32*, %struct.mwifiex_adapter*, i32, %struct.TYPE_7__, %struct.TYPE_5__, i64 }
%struct.mwifiex_adapter = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_ssid = type { i64 }
%struct.mwifiex_bssdescriptor = type { %struct.mwifiex_bssdescriptor*, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@HostCmd_SCAN_RADIO_TYPE_BG = common dso_local global i64 0, align 8
@BAND_B = common dso_local global i32 0, align 4
@BAND_G = common dso_local global i32 0, align 4
@BAND_GN = common dso_local global i32 0, align 4
@BAND_A = common dso_local global i32 0, align 4
@BAND_AN = common dso_local global i32 0, align 4
@BAND_AAC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempt to reconnect on csa closed chan(%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"info: SSID found in scan list ...\09associating...\0A\00", align 1
@WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_SHARED_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"info: network found in scan\09 list. Joining...\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"info: Network not found in\09the list, creating adhoc with ssid = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_bss_start(%struct.mwifiex_private* %0, %struct.cfg80211_bss* %1, %struct.cfg80211_ssid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca %struct.cfg80211_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_adapter*, align 8
  %10 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %6, align 8
  store %struct.cfg80211_ssid* %2, %struct.cfg80211_ssid** %7, align 8
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 4
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %13, align 8
  store %struct.mwifiex_adapter* %14, %struct.mwifiex_adapter** %9, align 8
  store %struct.mwifiex_bssdescriptor* null, %struct.mwifiex_bssdescriptor** %10, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %18 = icmp ne %struct.cfg80211_bss* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %26 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %27 = call i32 @mwifiex_process_country_ie(%struct.mwifiex_private* %25, %struct.cfg80211_bss* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mwifiex_bssdescriptor* @kzalloc(i32 32, i32 %29)
  store %struct.mwifiex_bssdescriptor* %30, %struct.mwifiex_bssdescriptor** %10, align 8
  %31 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %32 = icmp ne %struct.mwifiex_bssdescriptor* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %278

36:                                               ; preds = %28
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %38 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %39 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %40 = call i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private* %37, %struct.cfg80211_bss* %38, %struct.mwifiex_bssdescriptor* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %260

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %187

57:                                               ; preds = %51, %45
  %58 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %59 = icmp ne %struct.mwifiex_bssdescriptor* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %278

61:                                               ; preds = %57
  %62 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %63 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @mwifiex_band_to_radio_type(i32 %64)
  %66 = load i64, i64* @HostCmd_SCAN_RADIO_TYPE_BG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @BAND_B, align 4
  %70 = load i32, i32* @BAND_G, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BAND_GN, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %11, align 4
  br label %89

74:                                               ; preds = %61
  %75 = load i32, i32* @BAND_A, align 4
  %76 = load i32, i32* @BAND_AN, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BAND_AAC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load i32, i32* @BAND_AAC, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %74
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %92 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %104 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %89
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %107 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %108 = call i32 @mwifiex_check_network_compatibility(%struct.mwifiex_private* %106, %struct.mwifiex_bssdescriptor* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %260

112:                                              ; preds = %105
  %113 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %114 = call i32 @mwifiex_11h_get_csa_closed_channel(%struct.mwifiex_private* %113)
  %115 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %116 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = icmp eq i32 %114, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %122 = load i32, i32* @ERROR, align 4
  %123 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %124 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %121, i32 %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %125)
  store i32 -1, i32* %8, align 4
  br label %260

127:                                              ; preds = %112
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %129 = load i32, i32* @INFO, align 4
  %130 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %128, i32 %129, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %132 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %135 = call i32 @mwifiex_stop_net_dev_queue(i32 %133, %struct.mwifiex_adapter* %134)
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %137 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @netif_carrier_ok(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %143 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @netif_carrier_off(i32 %144)
  br label %146

146:                                              ; preds = %141, %127
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %148 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %147, i32 0, i32 8
  store i64 0, i64* %148, align 8
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %150 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %151 = call i32 @mwifiex_associate(%struct.mwifiex_private* %149, %struct.mwifiex_bssdescriptor* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %157 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %155
  %162 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %163 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load i32, i32* @NL80211_AUTHTYPE_SHARED_KEY, align 4
  %169 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %170 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %173 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %174 = call i32 @mwifiex_associate(%struct.mwifiex_private* %172, %struct.mwifiex_bssdescriptor* %173)
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %167, %161, %155, %146
  %176 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %177 = icmp ne %struct.cfg80211_bss* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %180 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %179, i32 0, i32 4
  %181 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %180, align 8
  %182 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %185 = call i32 @cfg80211_put_bss(i32 %183, %struct.cfg80211_bss* %184)
  br label %186

186:                                              ; preds = %178, %175
  br label %259

187:                                              ; preds = %51
  %188 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %189 = icmp ne %struct.mwifiex_bssdescriptor* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %192 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %190
  %197 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %198 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %202 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %201, i32 0, i32 1
  %203 = call i32 @mwifiex_ssid_cmp(i32* %200, %struct.TYPE_8__* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %196
  store i32 0, i32* %8, align 4
  br label %260

206:                                              ; preds = %196, %190, %187
  %207 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %208 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %207, i32 0, i32 2
  store i32 0, i32* %208, align 8
  %209 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %210 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %211 = call i32 @mwifiex_check_network_compatibility(%struct.mwifiex_private* %209, %struct.mwifiex_bssdescriptor* %210)
  store i32 %211, i32* %8, align 4
  %212 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %213 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %216 = call i32 @mwifiex_stop_net_dev_queue(i32 %214, %struct.mwifiex_adapter* %215)
  %217 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %218 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @netif_carrier_ok(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %206
  %223 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %224 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @netif_carrier_off(i32 %225)
  br label %227

227:                                              ; preds = %222, %206
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %248, label %230

230:                                              ; preds = %227
  %231 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %232 = load i32, i32* @INFO, align 4
  %233 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %231, i32 %232, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %234 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %235 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %236 = call i32 @mwifiex_adhoc_join(%struct.mwifiex_private* %234, %struct.mwifiex_bssdescriptor* %235)
  store i32 %236, i32* %8, align 4
  %237 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %238 = icmp ne %struct.cfg80211_bss* %237, null
  br i1 %238, label %239, label %247

239:                                              ; preds = %230
  %240 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %241 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %240, i32 0, i32 4
  %242 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %241, align 8
  %243 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %246 = call i32 @cfg80211_put_bss(i32 %244, %struct.cfg80211_bss* %245)
  br label %247

247:                                              ; preds = %239, %230
  br label %258

248:                                              ; preds = %227
  %249 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  %250 = load i32, i32* @INFO, align 4
  %251 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %7, align 8
  %252 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %249, i32 %250, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %253)
  %255 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %256 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %7, align 8
  %257 = call i32 @mwifiex_adhoc_start(%struct.mwifiex_private* %255, %struct.cfg80211_ssid* %256)
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %248, %247
  br label %259

259:                                              ; preds = %258, %186
  br label %260

260:                                              ; preds = %259, %205, %120, %111, %43
  %261 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %262 = icmp ne %struct.mwifiex_bssdescriptor* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %265 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %264, i32 0, i32 0
  %266 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %265, align 8
  %267 = call i32 @kfree(%struct.mwifiex_bssdescriptor* %266)
  br label %268

268:                                              ; preds = %263, %260
  %269 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %270 = call i32 @kfree(%struct.mwifiex_bssdescriptor* %269)
  %271 = load i32, i32* %8, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %275 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %274, i32 0, i32 3
  store i32* null, i32** %275, align 8
  br label %276

276:                                              ; preds = %273, %268
  %277 = load i32, i32* %8, align 4
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %276, %60, %33
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i32 @mwifiex_process_country_ie(%struct.mwifiex_private*, %struct.cfg80211_bss*) #1

declare dso_local %struct.mwifiex_bssdescriptor* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private*, %struct.cfg80211_bss*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_band_to_radio_type(i32) #1

declare dso_local i32 @mwifiex_check_network_compatibility(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i32 @mwifiex_11h_get_csa_closed_channel(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_stop_net_dev_queue(i32, %struct.mwifiex_adapter*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @mwifiex_associate(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @mwifiex_ssid_cmp(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mwifiex_adhoc_join(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i32 @mwifiex_adhoc_start(%struct.mwifiex_private*, %struct.cfg80211_ssid*) #1

declare dso_local i32 @kfree(%struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
