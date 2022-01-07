; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_stop_radar_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_stop_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.mwifiex_radar_params = type { i64, %struct.cfg80211_chan_def* }

@HostCmd_CMD_CHAN_REPORT_REQUEST = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_stop_radar_detection(%struct.mwifiex_private* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.mwifiex_radar_params, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %6 = call i32 @memset(%struct.mwifiex_radar_params* %5, i32 0, i32 16)
  %7 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %8 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %5, i32 0, i32 1
  store %struct.cfg80211_chan_def* %7, %struct.cfg80211_chan_def** %8, align 8
  %9 = getelementptr inbounds %struct.mwifiex_radar_params, %struct.mwifiex_radar_params* %5, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %11 = load i32, i32* @HostCmd_CMD_CHAN_REPORT_REQUEST, align 4
  %12 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %13 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %10, i32 %11, i32 %12, i32 0, %struct.mwifiex_radar_params* %5, i32 1)
  ret i32 %13
}

declare dso_local i32 @memset(%struct.mwifiex_radar_params*, i32, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_radar_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
