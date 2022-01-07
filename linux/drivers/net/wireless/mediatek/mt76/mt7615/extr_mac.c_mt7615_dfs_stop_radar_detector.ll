; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_dfs_stop_radar_detector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_dfs_stop_radar_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i64 }

@RDD_STOP = common dso_local global i32 0, align 4
@MT_HW_RDD0 = common dso_local global i32 0, align 4
@MT_RX_SEL0 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_160 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i64 0, align 8
@MT_HW_RDD1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_dfs_stop_radar_detector(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %6 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.cfg80211_chan_def* %8, %struct.cfg80211_chan_def** %4, align 8
  %9 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %10 = load i32, i32* @RDD_STOP, align 4
  %11 = load i32, i32* @MT_HW_RDD0, align 4
  %12 = load i32, i32* @MT_RX_SEL0, align 4
  %13 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %9, i32 %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_CHAN_WIDTH_160, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_CHAN_WIDTH_80P80, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %18
  %31 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %32 = load i32, i32* @RDD_STOP, align 4
  %33 = load i32, i32* @MT_HW_RDD1, align 4
  %34 = load i32, i32* @MT_RX_SEL0, align 4
  %35 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %31, i32 %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
