; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ap_settings = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.mwifiex_uap_bss_param*, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.mwifiex_uap_bss_param = type { i32, i32, i32, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.mwifiex_private = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to parse security parameters!\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Disable 11h extensions in FW\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to disable 11h extensions!!\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to start AP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ap_settings*)* @mwifiex_cfg80211_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_start_ap(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ap_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_ap_settings*, align 8
  %8 = alloca %struct.mwifiex_uap_bss_param*, align 8
  %9 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_ap_settings* %2, %struct.cfg80211_ap_settings** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %10)
  store %struct.mwifiex_private* %11, %struct.mwifiex_private** %9, align 8
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %13 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %12)
  %14 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %266

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mwifiex_uap_bss_param* @kzalloc(i32 48, i32 %18)
  store %struct.mwifiex_uap_bss_param* %19, %struct.mwifiex_uap_bss_param** %8, align 8
  %20 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %21 = icmp ne %struct.mwifiex_uap_bss_param* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %266

25:                                               ; preds = %17
  %26 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %27 = call i32 @mwifiex_set_sys_config_invalid_data(%struct.mwifiex_uap_bss_param* %26)
  %28 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %29 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %37 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %36, i32 0, i32 5
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %40 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %45 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %48 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %51 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %50, i32 0, i32 5
  %52 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %51, align 8
  %53 = icmp ne %struct.mwifiex_uap_bss_param* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %56 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %61 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %65 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %64, i32 0, i32 5
  %66 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %65, align 8
  %67 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %68 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i32* %63, %struct.mwifiex_uap_bss_param* %66, i32 %69)
  %71 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %72 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %75 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %59, %54, %49
  %78 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %79 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %84 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 10, %85
  %87 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %88 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 10, %91
  %93 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %94 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %82, %77
  %96 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %97 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %108 [
    i32 130, label %99
    i32 128, label %102
    i32 129, label %105
  ]

99:                                               ; preds = %95
  %100 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %101 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  br label %113

102:                                              ; preds = %95
  %103 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %104 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  br label %113

105:                                              ; preds = %95
  %106 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %107 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %106, i32 0, i32 2
  store i32 2, i32* %107, align 8
  br label %113

108:                                              ; preds = %95
  %109 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %110 = call i32 @kfree(%struct.mwifiex_uap_bss_param* %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %266

113:                                              ; preds = %105, %102, %99
  %114 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %115 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %116 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %117 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @mwifiex_uap_set_channel(%struct.mwifiex_private* %114, %struct.mwifiex_uap_bss_param* %115, i32 %119)
  %121 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %122 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %123 = call i32 @mwifiex_set_uap_rates(%struct.mwifiex_uap_bss_param* %121, %struct.cfg80211_ap_settings* %122)
  %124 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %125 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %126 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %127 = call i64 @mwifiex_set_secure_params(%struct.mwifiex_private* %124, %struct.mwifiex_uap_bss_param* %125, %struct.cfg80211_ap_settings* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %113
  %130 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %131 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32, i32* @ERROR, align 4
  %134 = call i32 @mwifiex_dbg(%struct.TYPE_9__* %132, i32 %133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %263

135:                                              ; preds = %113
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %137 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %138 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %139 = call i32 @mwifiex_set_ht_params(%struct.mwifiex_private* %136, %struct.mwifiex_uap_bss_param* %137, %struct.cfg80211_ap_settings* %138)
  %140 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %141 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %135
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %148 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %149 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %150 = call i32 @mwifiex_set_vht_params(%struct.mwifiex_private* %147, %struct.mwifiex_uap_bss_param* %148, %struct.cfg80211_ap_settings* %149)
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %152 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %153 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %157 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @mwifiex_set_vht_width(%struct.mwifiex_private* %151, i32 %155, i64 %158)
  br label %160

160:                                              ; preds = %146, %135
  %161 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %162 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %167 = call i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private* %166)
  br label %171

168:                                              ; preds = %160
  %169 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %170 = call i32 @mwifiex_set_ba_params(%struct.mwifiex_private* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %173 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %174 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %175 = call i32 @mwifiex_set_wmm_params(%struct.mwifiex_private* %172, %struct.mwifiex_uap_bss_param* %173, %struct.cfg80211_ap_settings* %174)
  %176 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %177 = call i64 @mwifiex_is_11h_active(%struct.mwifiex_private* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %171
  %180 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %181 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %182 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %183 = call i32 @mwifiex_set_tpc_params(%struct.mwifiex_private* %180, %struct.mwifiex_uap_bss_param* %181, %struct.cfg80211_ap_settings* %182)
  br label %184

184:                                              ; preds = %179, %171
  %185 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %186 = call i64 @mwifiex_is_11h_active(%struct.mwifiex_private* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %216

188:                                              ; preds = %184
  %189 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %190 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %191 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %190, i32 0, i32 4
  %192 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %193 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @cfg80211_chandef_dfs_required(%struct.wiphy* %189, %struct.TYPE_10__* %191, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %216, label %197

197:                                              ; preds = %188
  %198 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %199 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = load i32, i32* @INFO, align 4
  %202 = call i32 @mwifiex_dbg(%struct.TYPE_9__* %200, i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %203 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %204 = call i64 @mwifiex_11h_activate(%struct.mwifiex_private* %203, i32 0)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %197
  %207 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %208 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %207, i32 0, i32 1
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = load i32, i32* @ERROR, align 4
  %211 = call i32 @mwifiex_dbg(%struct.TYPE_9__* %209, i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %263

212:                                              ; preds = %197
  %213 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %214 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %188, %184
  %217 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %218 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %219 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %218, i32 0, i32 3
  %220 = call i32 @mwifiex_config_uap_11d(%struct.mwifiex_private* %217, i32* %219)
  %221 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %222 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %223 = call i64 @mwifiex_config_start_uap(%struct.mwifiex_private* %221, %struct.mwifiex_uap_bss_param* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %216
  %226 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %227 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %226, i32 0, i32 1
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* @ERROR, align 4
  %230 = call i32 @mwifiex_dbg(%struct.TYPE_9__* %228, i32 %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %263

231:                                              ; preds = %216
  %232 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %233 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %7, align 8
  %234 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %233, i32 0, i32 3
  %235 = call i64 @mwifiex_set_mgmt_ies(%struct.mwifiex_private* %232, i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %263

238:                                              ; preds = %231
  %239 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %240 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @netif_carrier_ok(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  %245 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %246 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @netif_carrier_on(i32 %247)
  br label %249

249:                                              ; preds = %244, %238
  %250 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %251 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %254 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %253, i32 0, i32 1
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = call i32 @mwifiex_wake_up_net_dev_queue(i32 %252, %struct.TYPE_9__* %255)
  %257 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %258 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %257, i32 0, i32 0
  %259 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %260 = call i32 @memcpy(i32* %258, %struct.mwifiex_uap_bss_param* %259, i32 4)
  %261 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %262 = call i32 @kfree(%struct.mwifiex_uap_bss_param* %261)
  store i32 0, i32* %4, align 4
  br label %266

263:                                              ; preds = %237, %225, %206, %129
  %264 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %265 = call i32 @kfree(%struct.mwifiex_uap_bss_param* %264)
  store i32 -1, i32* %4, align 4
  br label %266

266:                                              ; preds = %263, %249, %108, %22, %16
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local %struct.mwifiex_uap_bss_param* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_set_sys_config_invalid_data(%struct.mwifiex_uap_bss_param*) #1

declare dso_local i32 @memcpy(i32*, %struct.mwifiex_uap_bss_param*, i32) #1

declare dso_local i32 @kfree(%struct.mwifiex_uap_bss_param*) #1

declare dso_local i32 @mwifiex_uap_set_channel(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*, i32) #1

declare dso_local i32 @mwifiex_set_uap_rates(%struct.mwifiex_uap_bss_param*, %struct.cfg80211_ap_settings*) #1

declare dso_local i64 @mwifiex_set_secure_params(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @mwifiex_set_ht_params(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @mwifiex_set_vht_params(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @mwifiex_set_vht_width(%struct.mwifiex_private*, i32, i64) #1

declare dso_local i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_set_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_set_wmm_params(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*, %struct.cfg80211_ap_settings*) #1

declare dso_local i64 @mwifiex_is_11h_active(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_set_tpc_params(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(%struct.wiphy*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @mwifiex_11h_activate(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_config_uap_11d(%struct.mwifiex_private*, i32*) #1

declare dso_local i64 @mwifiex_config_start_uap(%struct.mwifiex_private*, %struct.mwifiex_uap_bss_param*) #1

declare dso_local i64 @mwifiex_set_mgmt_ies(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mwifiex_wake_up_net_dev_queue(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
