; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_regd_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_regd_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i64 }
%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_DFS_UNSET = common dso_local global i64 0, align 8
@RDD_CAC_END = common dso_local global i32 0, align 4
@MT_HW_RDD0 = common dso_local global i32 0, align 4
@MT_RX_SEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @mt7615_regd_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_regd_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.mt7615_dev*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %8)
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.mt7615_dev*, %struct.mt7615_dev** %11, align 8
  store %struct.mt7615_dev* %12, %struct.mt7615_dev** %6, align 8
  %13 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.cfg80211_chan_def* %15, %struct.cfg80211_chan_def** %7, align 8
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %17 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %27 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %30 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %58

41:                                               ; preds = %25
  %42 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %43 = call i32 @mt7615_dfs_stop_radar_detector(%struct.mt7615_dev* %42)
  %44 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %45 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_DFS_UNSET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %51 = load i32, i32* @RDD_CAC_END, align 4
  %52 = load i32, i32* @MT_HW_RDD0, align 4
  %53 = load i32, i32* @MT_RX_SEL0, align 4
  %54 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %50, i32 %51, i32 %52, i32 %53, i32 0)
  br label %58

55:                                               ; preds = %41
  %56 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %57 = call i32 @mt7615_dfs_start_radar_detector(%struct.mt7615_dev* %56)
  br label %58

58:                                               ; preds = %24, %40, %55, %49
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local i32 @mt7615_dfs_stop_radar_detector(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7615_dfs_start_radar_detector(%struct.mt7615_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
