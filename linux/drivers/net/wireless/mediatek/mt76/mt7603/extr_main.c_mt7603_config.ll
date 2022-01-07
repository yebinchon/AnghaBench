; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_3__, %struct.mt7603_dev* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mt7603_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@MT_WF_RFCR_DROP_OTHER_UC = common dso_local global i32 0, align 4
@MT_WF_RFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mt7603_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7603_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %8, align 8
  store %struct.mt7603_dev* %9, %struct.mt7603_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %12 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %17)
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @mt7603_set_channel(%struct.mt7603_dev* %19, i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @MT_WF_RFCR_DROP_OTHER_UC, align 4
  %45 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %46 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %56

49:                                               ; preds = %31
  %50 = load i32, i32* @MT_WF_RFCR_DROP_OTHER_UC, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %53 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %58 = load i32, i32* @MT_WF_RFCR, align 4
  %59 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %60 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mt76_wr(%struct.mt7603_dev* %57, i32 %58, i32 %61)
  %63 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %64 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %56, %26
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mt7603_set_channel(%struct.mt7603_dev*, i32*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
