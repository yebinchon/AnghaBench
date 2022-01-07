; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_channel = type { i32 }
%struct.ath10k_vif = type { i32 }
%struct.wmi_start_scan_arg = type { i32, i32, i32, i8*, i8*, i8*, i32*, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ATH10K_SCAN_ID = common dso_local global i32 0, align 4
@WMI_SCAN_FLAG_PASSIVE = common dso_local global i32 0, align 4
@WMI_SCAN_FILTER_PROBE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to start roc scan: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to switch to channel for roc scan\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to stop scan: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @ath10k_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_remain_on_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath10k*, align 8
  %12 = alloca %struct.ath10k_vif*, align 8
  %13 = alloca %struct.wmi_start_scan_arg, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.ath10k*, %struct.ath10k** %17, align 8
  store %struct.ath10k* %18, %struct.ath10k** %11, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %23, %struct.ath10k_vif** %12, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %29 = call i64 @ath10k_mac_tdls_vif_stations_count(%struct.ieee80211_hw* %27, %struct.ieee80211_vif* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %14, align 4
  br label %179

34:                                               ; preds = %5
  %35 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 3
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %79 [
    i32 130, label %42
    i32 128, label %76
    i32 129, label %76
    i32 131, label %76
  ]

42:                                               ; preds = %34
  %43 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 8
  %46 = call i32 @reinit_completion(i32* %45)
  %47 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 7
  %50 = call i32 @reinit_completion(i32* %49)
  %51 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = call i32 @reinit_completion(i32* %53)
  %55 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 128, i32* %57, align 4
  %58 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.ath10k_vif*, %struct.ath10k_vif** %12, align 8
  %62 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %65 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %71 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 4
  store i32 0, i32* %14, align 4
  br label %79

76:                                               ; preds = %34, %34, %34
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %34, %76, %42
  %80 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %81 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %80, i32 0, i32 3
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %179

86:                                               ; preds = %79
  %87 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %88 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %15, align 8
  %97 = call i32 @memset(%struct.wmi_start_scan_arg* %13, i32 0, i32 56)
  %98 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %99 = call i32 @ath10k_wmi_start_scan_init(%struct.ath10k* %98, %struct.wmi_start_scan_arg* %13)
  %100 = load %struct.ath10k_vif*, %struct.ath10k_vif** %12, align 8
  %101 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @ATH10K_SCAN_ID, align 4
  %105 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 7
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %109, i32* %112, align 4
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 4
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 3
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* @WMI_SCAN_FLAG_PASSIVE, align 4
  %120 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @WMI_SCAN_FILTER_PROBE_REQ, align 4
  %124 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %9, align 4
  %128 = getelementptr inbounds %struct.wmi_start_scan_arg, %struct.wmi_start_scan_arg* %13, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %130 = call i32 @ath10k_start_scan(%struct.ath10k* %129, %struct.wmi_start_scan_arg* %13)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %86
  %134 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %138 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %137, i32 0, i32 3
  %139 = call i32 @spin_lock_bh(i32* %138)
  %140 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %141 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 130, i32* %142, align 4
  %143 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %144 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %143, i32 0, i32 3
  %145 = call i32 @spin_unlock_bh(i32* %144)
  br label %179

146:                                              ; preds = %86
  %147 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %148 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i32, i32* @HZ, align 4
  %151 = mul nsw i32 3, %150
  %152 = call i32 @wait_for_completion_timeout(i32* %149, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %146
  %156 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %157 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %159 = call i32 @ath10k_scan_stop(%struct.ath10k* %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %162, %155
  %167 = load i32, i32* @ETIMEDOUT, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %14, align 4
  br label %179

169:                                              ; preds = %146
  %170 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %171 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %174 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @msecs_to_jiffies(i32 %176)
  %178 = call i32 @ieee80211_queue_delayed_work(%struct.TYPE_6__* %172, i32* %175, i32 %177)
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %169, %166, %133, %85, %31
  %180 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %181 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %180, i32 0, i32 0
  %182 = call i32 @mutex_unlock(i32* %181)
  %183 = load i32, i32* %14, align 4
  ret i32 %183
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ath10k_mac_tdls_vif_stations_count(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memset(%struct.wmi_start_scan_arg*, i32, i32) #1

declare dso_local i32 @ath10k_wmi_start_scan_init(%struct.ath10k*, %struct.wmi_start_scan_arg*) #1

declare dso_local i32 @ath10k_start_scan(%struct.ath10k*, %struct.wmi_start_scan_arg*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ath10k_scan_stop(%struct.ath10k*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
