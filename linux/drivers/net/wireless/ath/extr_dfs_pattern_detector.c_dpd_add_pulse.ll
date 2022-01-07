; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pattern_detector.c_dpd_add_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pattern_detector.c_dpd_add_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_pattern_detector = type { i64, i64, i64, i32 }
%struct.pulse_event = type { i64, i32 }
%struct.radar_detector_specs = type { i32 }
%struct.channel_detector = type { %struct.pri_detector** }
%struct.pri_detector = type { i32 (%struct.pri_detector*, i64)*, %struct.TYPE_2__*, %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)* }
%struct.TYPE_2__ = type { i32 }
%struct.pri_sequence = type { i32, i32, i32 }

@NL80211_DFS_UNSET = common dso_local global i64 0, align 8
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"DFS: radar found on freq=%d: id=%d, pri=%d, count=%d, count_false=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfs_pattern_detector*, %struct.pulse_event*, %struct.radar_detector_specs*)* @dpd_add_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpd_add_pulse(%struct.dfs_pattern_detector* %0, %struct.pulse_event* %1, %struct.radar_detector_specs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dfs_pattern_detector*, align 8
  %6 = alloca %struct.pulse_event*, align 8
  %7 = alloca %struct.radar_detector_specs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.channel_detector*, align 8
  %10 = alloca %struct.pri_detector*, align 8
  %11 = alloca %struct.pri_sequence*, align 8
  store %struct.dfs_pattern_detector* %0, %struct.dfs_pattern_detector** %5, align 8
  store %struct.pulse_event* %1, %struct.pulse_event** %6, align 8
  store %struct.radar_detector_specs* %2, %struct.radar_detector_specs** %7, align 8
  %12 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %13 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_DFS_UNSET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %110

18:                                               ; preds = %3
  %19 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %20 = load %struct.pulse_event*, %struct.pulse_event** %6, align 8
  %21 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.channel_detector* @channel_detector_get(%struct.dfs_pattern_detector* %19, i32 %22)
  store %struct.channel_detector* %23, %struct.channel_detector** %9, align 8
  %24 = load %struct.channel_detector*, %struct.channel_detector** %9, align 8
  %25 = icmp eq %struct.channel_detector* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %110

27:                                               ; preds = %18
  %28 = load %struct.pulse_event*, %struct.pulse_event** %6, align 8
  %29 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %32 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %37 = call i32 @dpd_reset(%struct.dfs_pattern_detector* %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.pulse_event*, %struct.pulse_event** %6, align 8
  %40 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %43 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %106, %38
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %47 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %109

50:                                               ; preds = %44
  %51 = load %struct.channel_detector*, %struct.channel_detector** %9, align 8
  %52 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %51, i32 0, i32 0
  %53 = load %struct.pri_detector**, %struct.pri_detector*** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.pri_detector*, %struct.pri_detector** %53, i64 %54
  %56 = load %struct.pri_detector*, %struct.pri_detector** %55, align 8
  store %struct.pri_detector* %56, %struct.pri_detector** %10, align 8
  %57 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %58 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %57, i32 0, i32 2
  %59 = load %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)*, %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)** %58, align 8
  %60 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %61 = load %struct.pulse_event*, %struct.pulse_event** %6, align 8
  %62 = call %struct.pri_sequence* %59(%struct.pri_detector* %60, %struct.pulse_event* %61)
  store %struct.pri_sequence* %62, %struct.pri_sequence** %11, align 8
  %63 = load %struct.pri_sequence*, %struct.pri_sequence** %11, align 8
  %64 = icmp ne %struct.pri_sequence* %63, null
  br i1 %64, label %65, label %105

65:                                               ; preds = %50
  %66 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %7, align 8
  %67 = icmp ne %struct.radar_detector_specs* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %7, align 8
  %70 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %71 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = call i32 @memcpy(%struct.radar_detector_specs* %69, %struct.TYPE_2__* %72, i32 4)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %76 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DFS, align 4
  %79 = load %struct.pulse_event*, %struct.pulse_event** %6, align 8
  %80 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %83 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pri_sequence*, %struct.pri_sequence** %11, align 8
  %88 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pri_sequence*, %struct.pri_sequence** %11, align 8
  %91 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pri_sequence*, %struct.pri_sequence** %11, align 8
  %94 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ath_dbg(i32 %77, i32 %78, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86, i32 %89, i32 %92, i32 %95)
  %97 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %98 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %97, i32 0, i32 0
  %99 = load i32 (%struct.pri_detector*, i64)*, i32 (%struct.pri_detector*, i64)** %98, align 8
  %100 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %101 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %102 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 %99(%struct.pri_detector* %100, i64 %103)
  store i32 1, i32* %4, align 4
  br label %110

105:                                              ; preds = %50
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %44

109:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %74, %26, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.channel_detector* @channel_detector_get(%struct.dfs_pattern_detector*, i32) #1

declare dso_local i32 @dpd_reset(%struct.dfs_pattern_detector*) #1

declare dso_local i32 @memcpy(%struct.radar_detector_specs*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
