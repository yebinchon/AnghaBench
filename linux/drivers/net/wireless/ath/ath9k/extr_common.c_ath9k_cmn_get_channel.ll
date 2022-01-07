; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_channel = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ath_hw = type { %struct.ath9k_channel* }
%struct.cfg80211_chan_def = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath9k_channel* @ath9k_cmn_get_channel(%struct.ieee80211_hw* %0, %struct.ath_hw* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ath_hw* %1, %struct.ath_hw** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %9 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %11, %struct.ieee80211_channel** %7, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %13, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %14, i64 %17
  store %struct.ath9k_channel* %18, %struct.ath9k_channel** %8, align 8
  %19 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %21 = call i32 @ath9k_cmn_update_ichannel(%struct.ath9k_channel* %19, %struct.cfg80211_chan_def* %20)
  %22 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  ret %struct.ath9k_channel* %22
}

declare dso_local i32 @ath9k_cmn_update_ichannel(%struct.ath9k_channel*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
