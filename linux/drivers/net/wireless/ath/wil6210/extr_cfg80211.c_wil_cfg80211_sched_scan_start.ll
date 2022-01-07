; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, i32, i32, i32, i32, i32, %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_match_set*, i32, i32, %struct.TYPE_5__**, %struct.TYPE_4__*, i32 }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.cfg80211_match_set = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"sched scan start: n_ssids %d, ie_len %zu, flags 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SSID[%d]:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SSID \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"channels:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %d%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"n_match_sets %d, min_rssi_thold %d, delay %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"MATCHSET[%d]: rssi_thold %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"n_scan_plans %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"SCAN PLAN[%d]: interval %d iterations %d\0A\00", align 1
@WMI_FRAME_PROBE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_sched_scan_request*)* @wil_cfg80211_sched_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_sched_scan_start(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_sched_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca %struct.wil6210_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_match_set*, align 8
  %13 = alloca %struct.cfg80211_sched_scan_plan*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %14)
  store %struct.wil6210_priv* %15, %struct.wil6210_priv** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %16)
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %9, align 8
  %18 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %19 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %193

25:                                               ; preds = %3
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %27 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %28 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %31 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %65, %25
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %40 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %48 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %49 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %48, i32 0, i32 11
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %57 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %56, i32 0, i32 11
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 16, i32 1, i32 %55, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %43
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %37

68:                                               ; preds = %37
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %70 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %97, %68
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %74 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %79 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %80 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %79, i32 0, i32 10
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp eq i32 %88, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %96 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %87, i8* %95)
  br label %97

97:                                               ; preds = %77
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %71

100:                                              ; preds = %71
  %101 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %102 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %103 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %106 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %109 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %141, %100
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %115 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %112
  %119 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %120 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %119, i32 0, i32 7
  %121 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %121, i64 %123
  store %struct.cfg80211_match_set* %124, %struct.cfg80211_match_set** %12, align 8
  %125 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %128 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %132 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %133 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %137 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 16, i32 1, i32 %135, i32 %139, i32 1)
  br label %141

141:                                              ; preds = %118
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %112

144:                                              ; preds = %112
  %145 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %146 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %147 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %172, %144
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %153 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %150
  %157 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %158 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %157, i32 0, i32 6
  %159 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %159, i64 %161
  store %struct.cfg80211_sched_scan_plan* %162, %struct.cfg80211_sched_scan_plan** %13, align 8
  %163 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %13, align 8
  %166 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %13, align 8
  %169 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %156
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %150

175:                                              ; preds = %150
  %176 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %177 = load i32, i32* @WMI_FRAME_PROBE_REQ, align 4
  %178 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %179 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %182 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @wmi_set_ie(%struct.wil6210_vif* %176, i32 %177, i32 %180, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %175
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %4, align 4
  br label %193

189:                                              ; preds = %175
  %190 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %191 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %192 = call i32 @wmi_start_sched_scan(%struct.wil6210_priv* %190, %struct.cfg80211_sched_scan_request* %191)
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %189, %187, %22
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_hex_dump_misc(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmi_set_ie(%struct.wil6210_vif*, i32, i32, i32) #1

declare dso_local i32 @wmi_start_sched_scan(%struct.wil6210_priv*, %struct.cfg80211_sched_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
