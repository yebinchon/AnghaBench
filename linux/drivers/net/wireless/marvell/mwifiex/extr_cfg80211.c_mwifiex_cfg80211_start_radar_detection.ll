; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_start_radar_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_start_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.mwifiex_private = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mwifiex_radar_params = type { i32, %struct.cfg80211_chan_def* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"radar detection: scan already in process...\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Enable 11h extensions in FW\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to activate 11h extensions!!\00", align 1
@HostCmd_CMD_CHAN_REPORT_REQUEST = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_chan_def*, i32)* @mwifiex_cfg80211_start_radar_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_start_radar_detection(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_chan_def* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca %struct.mwifiex_radar_params, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %12)
  store %struct.mwifiex_private* %13, %struct.mwifiex_private** %10, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @mwifiex_dbg(%struct.TYPE_4__* %23, i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %76

28:                                               ; preds = %4
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %30 = call i32 @mwifiex_is_11h_active(%struct.mwifiex_private* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* @INFO, align 4
  %37 = call i32 @mwifiex_dbg(%struct.TYPE_4__* %35, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %39 = call i64 @mwifiex_11h_activate(%struct.mwifiex_private* %38, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @mwifiex_dbg(%struct.TYPE_4__* %44, i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %76

47:                                               ; preds = %32
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %28
  %52 = call i32 @memset(%struct.mwifiex_radar_params* %11, i32 0, i32 16)
  %53 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %54 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %11, i32 0, i32 1
  store %struct.cfg80211_chan_def* %53, %struct.cfg80211_chan_def** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %58 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %57, i32 0, i32 2
  %59 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %60 = call i32 @memcpy(i32* %58, %struct.cfg80211_chan_def* %59, i32 4)
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %62 = load i32, i32* @HostCmd_CMD_CHAN_REPORT_REQUEST, align 4
  %63 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %64 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %61, i32 %62, i32 %63, i32 0, %struct.mwifiex_radar_params* %11, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %76

67:                                               ; preds = %51
  %68 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %69 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 0
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @msecs_to_jiffies(i32 %73)
  %75 = call i32 @queue_delayed_work(i32 %70, i32* %72, i32 %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %67, %66, %41, %20
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @mwifiex_is_11h_active(%struct.mwifiex_private*) #1

declare dso_local i64 @mwifiex_11h_activate(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @memset(%struct.mwifiex_radar_params*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_radar_params*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
