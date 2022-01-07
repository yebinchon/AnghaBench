; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_dfs_init_radar_detector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_dfs_init_radar_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@NL80211_DFS_UNSET = common dso_local global i64 0, align 8
@MT76_SCANNING = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_DFS_AVAILABLE = common dso_local global i64 0, align 8
@RDD_CAC_END = common dso_local global i32 0, align 4
@MT_HW_RDD0 = common dso_local global i32 0, align 4
@MT_RX_SEL0 = common dso_local global i32 0, align 4
@RDD_NORMAL_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_dfs_init_radar_detector(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %6 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store %struct.cfg80211_chan_def* %8, %struct.cfg80211_chan_def** %4, align 8
  %9 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_DFS_UNSET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

16:                                               ; preds = %1
  %17 = load i32, i32* @MT76_SCANNING, align 4
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %81

24:                                               ; preds = %16
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %81

35:                                               ; preds = %24
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %35
  %52 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %53 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_DFS_AVAILABLE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %61 = call i32 @mt7615_dfs_start_radar_detector(%struct.mt7615_dev* %60)
  store i32 %61, i32* %2, align 4
  br label %81

62:                                               ; preds = %51
  %63 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %64 = load i32, i32* @RDD_CAC_END, align 4
  %65 = load i32, i32* @MT_HW_RDD0, align 4
  %66 = load i32, i32* @MT_RX_SEL0, align 4
  %67 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %63, i32 %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %2, align 4
  br label %81

68:                                               ; preds = %35
  %69 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %70 = load i32, i32* @RDD_NORMAL_START, align 4
  %71 = load i32, i32* @MT_HW_RDD0, align 4
  %72 = load i32, i32* @MT_RX_SEL0, align 4
  %73 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %69, i32 %70, i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %68
  %79 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %80 = call i32 @mt7615_dfs_stop_radar_detector(%struct.mt7615_dev* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %76, %62, %59, %34, %23, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt7615_dfs_start_radar_detector(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7615_dfs_stop_radar_detector(%struct.mt7615_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
