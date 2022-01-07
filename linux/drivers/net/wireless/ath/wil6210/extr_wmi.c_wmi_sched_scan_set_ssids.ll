; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_sched_scan_set_ssids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_sched_scan_set_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wmi_start_sched_scan_cmd = type { i32, %struct.wmi_sched_scan_ssid_match* }
%struct.wmi_sched_scan_ssid_match = type { i64, i64, i32, i32 }
%struct.cfg80211_ssid = type { i64, i32 }
%struct.cfg80211_match_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@WMI_MAX_PNO_SSID_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"too many match sets (%d), use first %d\0A\00", align 1
@u8 = common dso_local global i32 0, align 4
@WMI_MAX_SSID_LEN = common dso_local global i32 0, align 4
@S8_MIN = common dso_local global i64 0, align 8
@S8_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wmi_start_sched_scan_cmd*, %struct.cfg80211_ssid*, i32, %struct.cfg80211_match_set*, i32)* @wmi_sched_scan_set_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_sched_scan_set_ssids(%struct.wil6210_priv* %0, %struct.wmi_start_sched_scan_cmd* %1, %struct.cfg80211_ssid* %2, i32 %3, %struct.cfg80211_match_set* %4, i32 %5) #0 {
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca %struct.wmi_start_sched_scan_cmd*, align 8
  %9 = alloca %struct.cfg80211_ssid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfg80211_match_set*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wmi_sched_scan_ssid_match*, align 8
  %15 = alloca %struct.cfg80211_match_set*, align 8
  %16 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %7, align 8
  store %struct.wmi_start_sched_scan_cmd* %1, %struct.wmi_start_sched_scan_cmd** %8, align 8
  store %struct.cfg80211_ssid* %2, %struct.cfg80211_ssid** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.cfg80211_match_set* %4, %struct.cfg80211_match_set** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @WMI_MAX_PNO_SSID_NUM, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @WMI_MAX_PNO_SSID_NUM, align 4
  %24 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @WMI_MAX_PNO_SSID_NUM, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %20, %6
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.wmi_start_sched_scan_cmd*, %struct.wmi_start_sched_scan_cmd** %8, align 8
  %29 = getelementptr inbounds %struct.wmi_start_sched_scan_cmd, %struct.wmi_start_sched_scan_cmd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %124, %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %127

34:                                               ; preds = %30
  %35 = load %struct.wmi_start_sched_scan_cmd*, %struct.wmi_start_sched_scan_cmd** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_start_sched_scan_cmd, %struct.wmi_start_sched_scan_cmd* %35, i32 0, i32 1
  %37 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %37, i64 %39
  store %struct.wmi_sched_scan_ssid_match* %40, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %41 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %41, i64 %43
  store %struct.cfg80211_match_set* %44, %struct.cfg80211_match_set** %15, align 8
  %45 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %15, align 8
  %46 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %50 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %52 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %15, align 8
  %55 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @u8, align 4
  %59 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %60 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @WMI_MAX_SSID_LEN, align 4
  %63 = call i32 @min_t(i32 %58, i64 %61, i32 %62)
  %64 = call i32 @memcpy(i32 %53, i32 %57, i32 %63)
  %65 = load i64, i64* @S8_MIN, align 8
  %66 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %67 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %15, align 8
  %69 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @S8_MIN, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %34
  %74 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %15, align 8
  %75 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @S8_MAX, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %15, align 8
  %81 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %84 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %73, %34
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %120, %85
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %92 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %9, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %94, i64 %96
  %98 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %93, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %90
  %102 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %103 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %9, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %105, i64 %107
  %109 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %112 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @memcmp(i32 %104, i32 %110, i64 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %101
  %117 = load %struct.wmi_sched_scan_ssid_match*, %struct.wmi_sched_scan_ssid_match** %14, align 8
  %118 = getelementptr inbounds %struct.wmi_sched_scan_ssid_match, %struct.wmi_sched_scan_ssid_match* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %101, %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %86

123:                                              ; preds = %86
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %30

127:                                              ; preds = %30
  ret void
}

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
