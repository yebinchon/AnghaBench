; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_escan_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_escan_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.brcmf_event_msg = type { i64, i32 }
%struct.brcmf_escan_result_le = type { %struct.brcmf_bss_info_le, i32, i32 }
%struct.brcmf_bss_info_le = type { i32, i32, i32 }
%struct.brcmf_scan_results = type { i64, i32, i32, %struct.brcmf_bss_info_le* }
%struct.TYPE_4__ = type { i32 }

@BRCMF_E_STATUS_ABORT = common dso_local global i64 0, align 8
@BRCMF_SCAN_STATUS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"scan not ready, bsscfgidx=%d\0A\00", align 1
@EPERM = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_PARTIAL = common dso_local global i64 0, align 8
@SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ESCAN Partial result\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid event data length\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid escan result (NULL pointer)\0A\00", align 1
@BRCMF_ESCAN_BUF_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid escan buffer length: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Invalid bss_count %d: ignoring\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"result without cfg80211 request\0A\00", align 1
@WL_ESCAN_RESULTS_FIXED_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Ignoring invalid bss_info length: %d\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Ignoring IBSS result\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Buffer is too small: ignoring\0A\00", align 1
@WL_ESCAN_STATE_IDLE = common dso_local global i32 0, align 4
@BRCMF_E_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"Ignored scan complete result 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_if*, %struct.brcmf_event_msg*, i8*)* @brcmf_cfg80211_escan_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_cfg80211_escan_handler(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_event_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_cfg80211_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.brcmf_escan_result_le*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.brcmf_bss_info_le*, align 8
  %14 = alloca %struct.brcmf_bss_info_le*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.brcmf_scan_results*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %19, i32 0, i32 1
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %20, align 8
  store %struct.brcmf_pub* %21, %struct.brcmf_pub** %8, align 8
  %22 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %23 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %22, i32 0, i32 0
  %24 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %23, align 8
  store %struct.brcmf_cfg80211_info* %24, %struct.brcmf_cfg80211_info** %9, align 8
  store %struct.brcmf_bss_info_le* null, %struct.brcmf_bss_info_le** %14, align 8
  %25 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @BRCMF_E_STATUS_ABORT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %277

32:                                               ; preds = %3
  %33 = load i32, i32* @BRCMF_SCAN_STATUS_BUSY, align 4
  %34 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %34, i32 0, i32 3
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %40 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %41 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @EPERM, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %4, align 8
  br label %278

46:                                               ; preds = %32
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @BRCMF_E_STATUS_PARTIAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %241

50:                                               ; preds = %46
  %51 = load i32, i32* @SCAN, align 4
  %52 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %54 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 20
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %60 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %277

61:                                               ; preds = %50
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %62 to %struct.brcmf_escan_result_le*
  store %struct.brcmf_escan_result_le* %63, %struct.brcmf_escan_result_le** %11, align 8
  %64 = load %struct.brcmf_escan_result_le*, %struct.brcmf_escan_result_le** %11, align 8
  %65 = icmp ne %struct.brcmf_escan_result_le* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %68 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %277

69:                                               ; preds = %61
  %70 = load %struct.brcmf_escan_result_le*, %struct.brcmf_escan_result_le** %11, align 8
  %71 = getelementptr inbounds %struct.brcmf_escan_result_le, %struct.brcmf_escan_result_le* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @BRCMF_ESCAN_BUF_SIZE, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %80 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 20
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %77, %69
  %88 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %277

91:                                               ; preds = %83
  %92 = load %struct.brcmf_escan_result_le*, %struct.brcmf_escan_result_le** %11, align 8
  %93 = getelementptr inbounds %struct.brcmf_escan_result_le, %struct.brcmf_escan_result_le* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %99 = load %struct.brcmf_escan_result_le*, %struct.brcmf_escan_result_le** %11, align 8
  %100 = getelementptr inbounds %struct.brcmf_escan_result_le, %struct.brcmf_escan_result_le* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %277

103:                                              ; preds = %91
  %104 = load %struct.brcmf_escan_result_le*, %struct.brcmf_escan_result_le** %11, align 8
  %105 = getelementptr inbounds %struct.brcmf_escan_result_le, %struct.brcmf_escan_result_le* %104, i32 0, i32 0
  store %struct.brcmf_bss_info_le* %105, %struct.brcmf_bss_info_le** %13, align 8
  %106 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %107 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %108 = call i64 @brcmf_p2p_scan_finding_common_channel(%struct.brcmf_cfg80211_info* %106, %struct.brcmf_bss_info_le* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %277

111:                                              ; preds = %103
  %112 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %113 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %118 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @SCAN, align 4
  %123 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %277

124:                                              ; preds = %116, %111
  %125 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %126 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @WL_ESCAN_RESULTS_FIXED_SIZE, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %124
  %135 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  br label %277

138:                                              ; preds = %124
  %139 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %140 = call %struct.TYPE_4__* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %139)
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %144 = call i32 @BIT(i32 %143)
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %138
  %148 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %149 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %157 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %277

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %138
  %160 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %161 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = bitcast i32* %163 to %struct.brcmf_scan_results*
  store %struct.brcmf_scan_results* %164, %struct.brcmf_scan_results** %16, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* @BRCMF_ESCAN_BUF_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %170 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub i64 %168, %171
  %173 = icmp ugt i64 %166, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %159
  %175 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %176 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %277

177:                                              ; preds = %159
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %210, %177
  %179 = load i32, i32* %17, align 4
  %180 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %181 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %178
  %185 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %14, align 8
  %186 = icmp ne %struct.brcmf_bss_info_le* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %14, align 8
  %189 = bitcast %struct.brcmf_bss_info_le* %188 to i8*
  %190 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %14, align 8
  %191 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @le32_to_cpu(i32 %192)
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %189, i64 %194
  %196 = bitcast i8* %195 to %struct.brcmf_bss_info_le*
  br label %201

197:                                              ; preds = %184
  %198 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %199 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %198, i32 0, i32 3
  %200 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %199, align 8
  br label %201

201:                                              ; preds = %197, %187
  %202 = phi %struct.brcmf_bss_info_le* [ %196, %187 ], [ %200, %197 ]
  store %struct.brcmf_bss_info_le* %202, %struct.brcmf_bss_info_le** %14, align 8
  %203 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %204 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %14, align 8
  %205 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %206 = call i64 @brcmf_compare_update_same_bss(%struct.brcmf_cfg80211_info* %203, %struct.brcmf_bss_info_le* %204, %struct.brcmf_bss_info_le* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %277

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  br label %178

213:                                              ; preds = %178
  %214 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %215 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %219 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @memcpy(i32* %221, %struct.brcmf_bss_info_le* %222, i32 %223)
  %225 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %226 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @le32_to_cpu(i32 %227)
  %229 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %230 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %234 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %16, align 8
  %238 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  br label %276

241:                                              ; preds = %46
  %242 = load i32, i32* @WL_ESCAN_STATE_IDLE, align 4
  %243 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %244 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  %246 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %247 = call i64 @brcmf_p2p_scan_finding_common_channel(%struct.brcmf_cfg80211_info* %246, %struct.brcmf_bss_info_le* null)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %277

250:                                              ; preds = %241
  %251 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %252 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %257 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %255, %250
  %261 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %262 = call i32 @brcmf_inform_bss(%struct.brcmf_cfg80211_info* %261)
  %263 = load i64, i64* %10, align 8
  %264 = load i64, i64* @BRCMF_E_STATUS_SUCCESS, align 8
  %265 = icmp ne i64 %263, %264
  %266 = zext i1 %265 to i32
  store i32 %266, i32* %18, align 4
  %267 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %268 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %269 = load i32, i32* %18, align 4
  %270 = call i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info* %267, %struct.brcmf_if* %268, i32 %269, i32 0)
  br label %275

271:                                              ; preds = %255
  %272 = load i32, i32* @SCAN, align 4
  %273 = load i64, i64* %10, align 8
  %274 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %272, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %273)
  br label %275

275:                                              ; preds = %271, %260
  br label %276

276:                                              ; preds = %275, %213
  br label %277

277:                                              ; preds = %276, %249, %208, %174, %155, %134, %121, %110, %97, %87, %66, %58, %31
  store i64 0, i64* %4, align 8
  br label %278

278:                                              ; preds = %277, %38
  %279 = load i64, i64* %4, align 8
  ret i64 %279
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @brcmf_p2p_scan_finding_common_channel(%struct.brcmf_cfg80211_info*, %struct.brcmf_bss_info_le*) #1

declare dso_local %struct.TYPE_4__* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @brcmf_compare_update_same_bss(%struct.brcmf_cfg80211_info*, %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le*) #1

declare dso_local i32 @memcpy(i32*, %struct.brcmf_bss_info_le*, i32) #1

declare dso_local i32 @brcmf_inform_bss(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
