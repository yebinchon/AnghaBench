; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_3__, %struct.mt7615_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.mt7615_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@MT_WF_RFCR_DROP_OTHER_UC = common dso_local global i32 0, align 4
@MT_WF_RFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mt7615_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7615_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.mt7615_dev*, %struct.mt7615_dev** %8, align 8
  store %struct.mt7615_dev* %9, %struct.mt7615_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %15)
  %17 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %18 = call i32 @mt7615_set_channel(%struct.mt7615_dev* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %32 = call i32 @mt7615_mcu_set_tx_power(%struct.mt7615_dev* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @MT_WF_RFCR_DROP_OTHER_UC, align 4
  %48 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %49 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %61

53:                                               ; preds = %38
  %54 = load i32, i32* @MT_WF_RFCR_DROP_OTHER_UC, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %46
  %62 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %63 = load i32, i32* @MT_WF_RFCR, align 4
  %64 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %65 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mt76_wr(%struct.mt7615_dev* %62, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %61, %33
  %70 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %71 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mt7615_set_channel(%struct.mt7615_dev*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7615_mcu_set_tx_power(%struct.mt7615_dev*) #1

declare dso_local i32 @mt76_wr(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
