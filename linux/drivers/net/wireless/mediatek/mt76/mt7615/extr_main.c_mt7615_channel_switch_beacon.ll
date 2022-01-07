; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_channel_switch_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_channel_switch_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_chan_def*)* @mt7615_channel_switch_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_channel_switch_beacon(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.mt7615_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  store %struct.mt7615_dev* %10, %struct.mt7615_dev** %7, align 8
  %11 = load %struct.mt7615_dev*, %struct.mt7615_dev** %7, align 8
  %12 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mt7615_dev*, %struct.mt7615_dev** %7, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %17 = call i32 @mt7615_mcu_set_bcn(%struct.mt7615_dev* %15, %struct.ieee80211_vif* %16, i32 1)
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %7, align 8
  %19 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7615_mcu_set_bcn(%struct.mt7615_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
