; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_add_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_add_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.mt76x02_dfs_pattern_detector }
%struct.mt76x02_dfs_pattern_detector = type { i64 }
%struct.mt76x02_dfs_event = type { i64 }

@MT_DFS_EVENT_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x02_dfs_add_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_add_events(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  %4 = alloca %struct.mt76x02_dfs_event, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  store %struct.mt76x02_dfs_pattern_detector* %8, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = call i32 @mt76x02_dfs_set_capture_mode_ctrl(%struct.mt76x02_dev* %9, i32 0)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %47, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MT_DFS_EVENT_LOOP, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = call i32 @mt76x02_dfs_fetch_event(%struct.mt76x02_dev* %16, %struct.mt76x02_dfs_event* %4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %50

20:                                               ; preds = %15
  %21 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %29 = call i32 @mt76x02_dfs_detector_reset(%struct.mt76x02_dev* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = call i32 @mt76x02_dfs_check_event(%struct.mt76x02_dev* %35, %struct.mt76x02_dfs_event* %4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %47

39:                                               ; preds = %30
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %41 = call i32 @mt76x02_dfs_add_event_to_sequence(%struct.mt76x02_dev* %40, %struct.mt76x02_dfs_event* %4)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mt76x02_dfs_create_sequence(%struct.mt76x02_dev* %42, %struct.mt76x02_dfs_event* %4, i32 %43)
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %46 = call i32 @mt76x02_dfs_queue_event(%struct.mt76x02_dev* %45, %struct.mt76x02_dfs_event* %4)
  br label %47

47:                                               ; preds = %39, %38
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %11

50:                                               ; preds = %19, %11
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %52 = call i32 @mt76x02_dfs_set_capture_mode_ctrl(%struct.mt76x02_dev* %51, i32 1)
  ret void
}

declare dso_local i32 @mt76x02_dfs_set_capture_mode_ctrl(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_dfs_fetch_event(%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*) #1

declare dso_local i32 @mt76x02_dfs_detector_reset(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dfs_check_event(%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*) #1

declare dso_local i32 @mt76x02_dfs_add_event_to_sequence(%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*) #1

declare dso_local i32 @mt76x02_dfs_create_sequence(%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*, i32) #1

declare dso_local i32 @mt76x02_dfs_queue_event(%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
