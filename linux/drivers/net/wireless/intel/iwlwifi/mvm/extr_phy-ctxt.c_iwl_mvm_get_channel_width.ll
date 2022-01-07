; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_get_channel_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_get_channel_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32 }

@PHY_VHT_CHANNEL_MODE20 = common dso_local global i32 0, align 4
@PHY_VHT_CHANNEL_MODE40 = common dso_local global i32 0, align 4
@PHY_VHT_CHANNEL_MODE80 = common dso_local global i32 0, align 4
@PHY_VHT_CHANNEL_MODE160 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid channel width=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_get_channel_width(%struct.cfg80211_chan_def* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %3, align 8
  %4 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %5 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 130, label %7
    i32 131, label %7
    i32 129, label %9
    i32 128, label %11
    i32 132, label %13
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @PHY_VHT_CHANNEL_MODE20, align 4
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @PHY_VHT_CHANNEL_MODE40, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @PHY_VHT_CHANNEL_MODE80, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @PHY_VHT_CHANNEL_MODE160, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @PHY_VHT_CHANNEL_MODE20, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %13, %11, %9, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
