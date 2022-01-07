; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_set_chan_info_chandef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_set_chan_info_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_fw_channel_info = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@PHY_BAND_24 = common dso_local global i32 0, align 4
@PHY_BAND_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_fw_channel_info*, %struct.cfg80211_chan_def*)* @iwl_mvm_set_chan_info_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_chan_info_chandef(%struct.iwl_mvm* %0, %struct.iwl_fw_channel_info* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_fw_channel_info*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_fw_channel_info* %1, %struct.iwl_fw_channel_info** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %8 = load %struct.iwl_fw_channel_info*, %struct.iwl_fw_channel_info** %5, align 8
  %9 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @PHY_BAND_24, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @PHY_BAND_5, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %28 = call i32 @iwl_mvm_get_channel_width(%struct.cfg80211_chan_def* %27)
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %30 = call i32 @iwl_mvm_get_ctrl_pos(%struct.cfg80211_chan_def* %29)
  %31 = call i32 @iwl_mvm_set_chan_info(%struct.iwl_mvm* %7, %struct.iwl_fw_channel_info* %8, i32 %13, i32 %26, i32 %28, i32 %30)
  ret void
}

declare dso_local i32 @iwl_mvm_set_chan_info(%struct.iwl_mvm*, %struct.iwl_fw_channel_info*, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_get_channel_width(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @iwl_mvm_get_ctrl_pos(%struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
