; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MT76_RESET = common dso_local global i32 0, align 4
@MT7615_WATCHDOG_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_set_channel(%struct.mt7615_dev* %0) #0 {
  %2 = alloca %struct.mt7615_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %2, align 8
  %4 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i32 @cancel_delayed_work_sync(i32* %6)
  %8 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @MT76_RESET, align 4
  %13 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = call i32 @set_bit(i32 %12, i32* %15)
  %17 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %18 = call i32 @mt7615_dfs_check_channel(%struct.mt7615_dev* %17)
  %19 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %19, i32 0, i32 0
  %21 = call i32 @mt76_set_channel(%struct.TYPE_3__* %20)
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %23 = call i32 @mt7615_mcu_set_channel(%struct.mt7615_dev* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %29 = call i32 @mt7615_dfs_init_radar_detector(%struct.mt7615_dev* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %31 = call i32 @mt7615_mac_cca_stats_reset(%struct.mt7615_dev* %30)
  %32 = call i32 (...) @ktime_get_boottime()
  %33 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %37 = call i32 @MT_MIB_SDR16(i32 0)
  %38 = call i32 @mt76_rr(%struct.mt7615_dev* %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %26
  %40 = load i32, i32* @MT76_RESET, align 4
  %41 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = call i32 @clear_bit(i32 %40, i32* %43)
  %45 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %49, i32 0, i32 0
  %51 = call i32 @mt76_txq_schedule_all(%struct.TYPE_3__* %50)
  %52 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %53 = call i32 @mt76_hw(%struct.mt7615_dev* %52)
  %54 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* @MT7615_WATCHDOG_TIME, align 4
  %58 = call i32 @ieee80211_queue_delayed_work(i32 %53, i32* %56, i32 %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt7615_dfs_check_channel(%struct.mt7615_dev*) #1

declare dso_local i32 @mt76_set_channel(%struct.TYPE_3__*) #1

declare dso_local i32 @mt7615_mcu_set_channel(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_dfs_init_radar_detector(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_mac_cca_stats_reset(%struct.mt7615_dev*) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @mt76_rr(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @MT_MIB_SDR16(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mt76_txq_schedule_all(%struct.TYPE_3__*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mt76_hw(%struct.mt7615_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
