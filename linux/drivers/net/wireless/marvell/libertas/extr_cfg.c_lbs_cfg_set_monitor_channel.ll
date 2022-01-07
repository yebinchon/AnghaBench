; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_monitor_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_monitor_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbs_private = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_chan_def*)* @lbs_cfg_set_monitor_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cfg_set_monitor_channel(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %7)
  store %struct.lbs_private* %8, %struct.lbs_private** %5, align 8
  %9 = load i32, i32* @ENOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %12 = call i64 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def* %11)
  %13 = load i64, i64* @NL80211_CHAN_NO_HT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lbs_set_channel(%struct.lbs_private* %17, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i64 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @lbs_set_channel(%struct.lbs_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
