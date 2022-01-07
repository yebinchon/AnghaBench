; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_init_detector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_init_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__, %struct.mt76x02_dfs_pattern_detector }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_dfs_pattern_detector = type { i32, i32, i32, i32 }

@NL80211_DFS_UNSET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mt76x02_dfs_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_dfs_init_detector(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %4, i32 0, i32 1
  store %struct.mt76x02_dfs_pattern_detector* %5, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %6 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %6, i32 0, i32 3
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* @NL80211_DFS_UNSET, align 4
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %20 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %19, i32 0, i32 0
  %21 = load i32, i32* @mt76x02_dfs_tasklet, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %23 = ptrtoint %struct.mt76x02_dev* %22 to i64
  %24 = call i32 @tasklet_init(i32* %20, i32 %21, i64 %23)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
