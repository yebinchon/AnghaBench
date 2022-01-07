; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__, %struct.mt76x02_dfs_pattern_detector }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mt76x02_dfs_pattern_detector = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mt76x02_dfs_hw_pulse = type { i32 }

@MT76_SCANNING = common dso_local global i32 0, align 4
@MT_DFS_SW_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@DFS = common dso_local global i32 0, align 4
@MT_DFS_NUM_ENGINES = common dso_local global i32 0, align 4
@MT_INT_GPTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mt76x02_dfs_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt76x02_dfs_hw_pulse, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.mt76x02_dev*
  store %struct.mt76x02_dev* %10, %struct.mt76x02_dev** %3, align 8
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 1
  store %struct.mt76x02_dfs_pattern_detector* %12, %struct.mt76x02_dfs_pattern_detector** %4, align 8
  %13 = load i32, i32* @MT76_SCANNING, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %113

20:                                               ; preds = %1
  %21 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %4, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MT_DFS_SW_TIMEOUT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @time_is_before_jiffies(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %4, align 8
  %31 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = call i32 @mt76x02_dfs_add_events(%struct.mt76x02_dev* %32)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = call i32 @mt76x02_dfs_check_detection(%struct.mt76x02_dev* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ieee80211_radar_detected(i32 %42)
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = call i32 @mt76x02_dfs_detector_reset(%struct.mt76x02_dev* %44)
  br label %117

46:                                               ; preds = %28
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %48 = call i32 @mt76x02_dfs_check_event_window(%struct.mt76x02_dev* %47)
  br label %49

49:                                               ; preds = %46, %20
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = load i32, i32* @DFS, align 4
  %52 = call i32 @MT_BBP(i32 %51, i32 1)
  %53 = call i32 @mt76_rr(%struct.mt76x02_dev* %50, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 15
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %113

58:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %105, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MT_DFS_NUM_ENGINES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %105

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %74 = call i32 @mt76x02_dfs_get_hw_pulse(%struct.mt76x02_dev* %73, %struct.mt76x02_dfs_hw_pulse* %8)
  %75 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %76 = call i32 @mt76x02_dfs_check_hw_pulse(%struct.mt76x02_dev* %75, %struct.mt76x02_dfs_hw_pulse* %8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %70
  %79 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %4, align 8
  %80 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %105

88:                                               ; preds = %70
  %89 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %4, align 8
  %90 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ieee80211_radar_detected(i32 %101)
  %103 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %104 = call i32 @mt76x02_dfs_detector_reset(%struct.mt76x02_dev* %103)
  br label %117

105:                                              ; preds = %78, %69
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %59

108:                                              ; preds = %59
  %109 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %110 = load i32, i32* @DFS, align 4
  %111 = call i32 @MT_BBP(i32 %110, i32 1)
  %112 = call i32 @mt76_wr(%struct.mt76x02_dev* %109, i32 %111, i32 15)
  br label %113

113:                                              ; preds = %108, %57, %19
  %114 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %115 = load i32, i32* @MT_INT_GPTIMER, align 4
  %116 = call i32 @mt76x02_irq_enable(%struct.mt76x02_dev* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %88, %38
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @mt76x02_dfs_add_events(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dfs_check_detection(%struct.mt76x02_dev*) #1

declare dso_local i32 @ieee80211_radar_detected(i32) #1

declare dso_local i32 @mt76x02_dfs_detector_reset(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dfs_check_event_window(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76x02_dfs_get_hw_pulse(%struct.mt76x02_dev*, %struct.mt76x02_dfs_hw_pulse*) #1

declare dso_local i32 @mt76x02_dfs_check_hw_pulse(%struct.mt76x02_dev*, %struct.mt76x02_dfs_hw_pulse*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_irq_enable(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
