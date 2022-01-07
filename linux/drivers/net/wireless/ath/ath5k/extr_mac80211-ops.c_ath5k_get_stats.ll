; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_low_level_stats*)* @ath5k_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_get_stats(%struct.ieee80211_hw* %0, %struct.ieee80211_low_level_stats* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_low_level_stats*, align 8
  %5 = alloca %struct.ath5k_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_low_level_stats* %1, %struct.ieee80211_low_level_stats** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  store %struct.ath5k_hw* %8, %struct.ath5k_hw** %5, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %10 = call i32 @ath5k_hw_update_mib_counters(%struct.ath5k_hw* %9)
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret i32 0
}

declare dso_local i32 @ath5k_hw_update_mib_counters(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
