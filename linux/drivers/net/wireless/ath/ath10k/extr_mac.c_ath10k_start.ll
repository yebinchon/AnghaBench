; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32, i32, i32, i64, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wmi_bb_timing_cfg_arg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ATH10K_FIRMWARE_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not init hif: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not init core: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to enable PMF QOS: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to enable dynamic BW: %d\0A\00", align 1
@WMI_SERVICE_SPOOF_MAC_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to set prob req oui: %i\0A\00", align 1
@WMI_SERVICE_ADAPTIVE_OCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to enable adaptive qcs: %d\0A\00", align 1
@WMI_SERVICE_BURST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to disable burst: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to enable idle_ps_config: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"failed to set arp ac override parameter: %d\0A\00", align 1
@ATH10K_FW_FEATURE_SUPPORTS_ADAPTIVE_CCA = common dso_local global i32 0, align 4
@WMI_CCA_DETECT_LEVEL_AUTO = common dso_local global i32 0, align 4
@WMI_CCA_DETECT_MARGIN_AUTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to enable adaptive cca: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"failed to enable ani by default: %d\0A\00", align 1
@PEER_DEFAULT_STATS_UPDATE_PERIOD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"failed to set peer stats period : %d\0A\00", align 1
@WMI_SERVICE_COEX_GPIO = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_BTCOEX_PARAM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to set btcoex param: %d\0A\00", align 1
@ATH10K_FLAG_BTCOEX = common dso_local global i32 0, align 4
@WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to set bb timings: %d\0A\00", align 1
@ATH10K_RADAR_CONFIRMATION_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath10k_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_bb_timing_cfg_arg, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = bitcast %struct.wmi_bb_timing_cfg_arg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = call i32 @ath10k_drain_tx(%struct.ath10k* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %33 [
    i32 133, label %20
    i32 130, label %23
    i32 132, label %26
    i32 131, label %26
    i32 128, label %26
    i32 129, label %30
  ]

20:                                               ; preds = %1
  %21 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  store i32 132, i32* %22, align 8
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  store i32 131, i32* %25, align 8
  br label %33

26:                                               ; preds = %1, %1, %1
  %27 = call i32 @WARN_ON(i32 1)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %345

30:                                               ; preds = %1
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %345

33:                                               ; preds = %1, %23, %20
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %36 = call i32 @ath10k_hif_power_up(%struct.ath10k* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ath10k_err(%struct.ath10k* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %342

43:                                               ; preds = %33
  %44 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %45 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 11
  %48 = call i32 @ath10k_core_start(%struct.ath10k* %44, i32 %45, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ath10k_err(%struct.ath10k* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %339

55:                                               ; preds = %43
  %56 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %62, i32 %63, i32 1)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ath10k_warn(%struct.ath10k* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %336

71:                                               ; preds = %55
  %72 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  %78 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %78, i32 %79, i32 1)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ath10k_warn(%struct.ath10k* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %336

87:                                               ; preds = %71
  %88 = load i32, i32* @WMI_SERVICE_SPOOF_MAC_SUPPORT, align 4
  %89 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %90 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @test_bit(i32 %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %97 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %98 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ath10k_wmi_scan_prob_req_oui(%struct.ath10k* %96, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ath10k_err(%struct.ath10k* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  br label %336

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %87
  %109 = load i32, i32* @WMI_SERVICE_ADAPTIVE_OCS, align 4
  %110 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %111 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @test_bit(i32 %109, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %108
  %117 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %118 = call i32 @ath10k_wmi_adaptive_qcs(%struct.ath10k* %117, i32 1)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @ath10k_warn(%struct.ath10k* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %336

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i32, i32* @WMI_SERVICE_BURST, align 4
  %128 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %129 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @test_bit(i32 %127, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %126
  %135 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %136 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %5, align 4
  %141 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %141, i32 %142, i32 0)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @ath10k_warn(%struct.ath10k* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %336

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150, %126
  %152 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %153 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %5, align 4
  %158 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %158, i32 %159, i32 1)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %151
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @EOPNOTSUPP, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp ne i32 %164, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @ath10k_warn(%struct.ath10k* %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  br label %336

172:                                              ; preds = %163, %151
  %173 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %174 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %175 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %178 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @__ath10k_set_antenna(%struct.ath10k* %173, i32 %176, i32 %179)
  %181 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %182 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %5, align 4
  %187 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %187, i32 %188, i32 0)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %172
  %193 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @ath10k_warn(%struct.ath10k* %193, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  br label %336

196:                                              ; preds = %172
  %197 = load i32, i32* @ATH10K_FW_FEATURE_SUPPORTS_ADAPTIVE_CCA, align 4
  %198 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %199 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %198, i32 0, i32 7
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @test_bit(i32 %197, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %196
  %207 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %208 = load i32, i32* @WMI_CCA_DETECT_LEVEL_AUTO, align 4
  %209 = load i32, i32* @WMI_CCA_DETECT_MARGIN_AUTO, align 4
  %210 = call i32 @ath10k_wmi_pdev_enable_adaptive_cca(%struct.ath10k* %207, i32 1, i32 %208, i32 %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @ath10k_warn(%struct.ath10k* %214, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %215)
  br label %336

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217, %196
  %219 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %220 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %5, align 4
  %225 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %225, i32 %226, i32 1)
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %218
  %231 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @ath10k_warn(%struct.ath10k* %231, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  br label %336

234:                                              ; preds = %218
  %235 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %236 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %235, i32 0, i32 1
  store i32 1, i32* %236, align 4
  %237 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %238 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %234
  %241 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %242 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %5, align 4
  %247 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @PEER_DEFAULT_STATS_UPDATE_PERIOD, align 4
  %250 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %247, i32 %248, i32 %249)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %240
  %254 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @ath10k_warn(%struct.ath10k* %254, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %255)
  br label %336

257:                                              ; preds = %240
  br label %258

258:                                              ; preds = %257, %234
  %259 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %260 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* @WMI_SERVICE_COEX_GPIO, align 4
  %266 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %267 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @test_bit(i32 %265, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %297

272:                                              ; preds = %258
  %273 = load i32, i32* @ATH10K_FW_FEATURE_BTCOEX_PARAM, align 4
  %274 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %275 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %274, i32 0, i32 7
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @test_bit(i32 %273, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %272
  %283 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %283, i32 %284, i32 0)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @ath10k_warn(%struct.ath10k* %289, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %290)
  br label %336

292:                                              ; preds = %282
  %293 = load i32, i32* @ATH10K_FLAG_BTCOEX, align 4
  %294 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %295 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %294, i32 0, i32 6
  %296 = call i32 @clear_bit(i32 %293, i32* %295)
  br label %297

297:                                              ; preds = %292, %272, %258
  %298 = load i32, i32* @WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT, align 4
  %299 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %300 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @test_bit(i32 %298, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %321

305:                                              ; preds = %297
  %306 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %307 = call i32 @__ath10k_fetch_bb_timing_dt(%struct.ath10k* %306, %struct.wmi_bb_timing_cfg_arg* %7)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %320, label %310

310:                                              ; preds = %305
  %311 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %312 = call i32 @ath10k_wmi_pdev_bb_timing(%struct.ath10k* %311, %struct.wmi_bb_timing_cfg_arg* %7)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @ath10k_warn(%struct.ath10k* %316, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %317)
  br label %336

319:                                              ; preds = %310
  br label %320

320:                                              ; preds = %319, %305
  br label %321

321:                                              ; preds = %320, %297
  %322 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %323 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %322, i32 0, i32 4
  store i64 0, i64* %323, align 8
  %324 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %325 = call i32 @ath10k_regd_update(%struct.ath10k* %324)
  %326 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %327 = call i32 @ath10k_spectral_start(%struct.ath10k* %326)
  %328 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %329 = call i32 @ath10k_thermal_set_throttling(%struct.ath10k* %328)
  %330 = load i32, i32* @ATH10K_RADAR_CONFIRMATION_IDLE, align 4
  %331 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %332 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 4
  %333 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %334 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %333, i32 0, i32 2
  %335 = call i32 @mutex_unlock(i32* %334)
  store i32 0, i32* %2, align 4
  br label %350

336:                                              ; preds = %315, %288, %253, %230, %213, %192, %168, %146, %121, %103, %83, %67
  %337 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %338 = call i32 @ath10k_core_stop(%struct.ath10k* %337)
  br label %339

339:                                              ; preds = %336, %51
  %340 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %341 = call i32 @ath10k_hif_power_down(%struct.ath10k* %340)
  br label %342

342:                                              ; preds = %339, %39
  %343 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %344 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %343, i32 0, i32 0
  store i32 133, i32* %344, align 8
  br label %345

345:                                              ; preds = %342, %30, %26
  %346 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %347 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %346, i32 0, i32 2
  %348 = call i32 @mutex_unlock(i32* %347)
  %349 = load i32, i32* %6, align 4
  store i32 %349, i32* %2, align 4
  br label %350

350:                                              ; preds = %345, %321
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_drain_tx(%struct.ath10k*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @ath10k_hif_power_up(%struct.ath10k*, i32) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_core_start(%struct.ath10k*, i32, i32*) #2

declare dso_local i32 @ath10k_wmi_pdev_set_param(%struct.ath10k*, i32, i32) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i64 @test_bit(i32, i32) #2

declare dso_local i32 @ath10k_wmi_scan_prob_req_oui(%struct.ath10k*, i32) #2

declare dso_local i32 @ath10k_wmi_adaptive_qcs(%struct.ath10k*, i32) #2

declare dso_local i32 @__ath10k_set_antenna(%struct.ath10k*, i32, i32) #2

declare dso_local i32 @ath10k_wmi_pdev_enable_adaptive_cca(%struct.ath10k*, i32, i32, i32) #2

declare dso_local i64 @ath10k_peer_stats_enabled(%struct.ath10k*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @__ath10k_fetch_bb_timing_dt(%struct.ath10k*, %struct.wmi_bb_timing_cfg_arg*) #2

declare dso_local i32 @ath10k_wmi_pdev_bb_timing(%struct.ath10k*, %struct.wmi_bb_timing_cfg_arg*) #2

declare dso_local i32 @ath10k_regd_update(%struct.ath10k*) #2

declare dso_local i32 @ath10k_spectral_start(%struct.ath10k*) #2

declare dso_local i32 @ath10k_thermal_set_throttling(%struct.ath10k*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ath10k_core_stop(%struct.ath10k*) #2

declare dso_local i32 @ath10k_hif_power_down(%struct.ath10k*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
