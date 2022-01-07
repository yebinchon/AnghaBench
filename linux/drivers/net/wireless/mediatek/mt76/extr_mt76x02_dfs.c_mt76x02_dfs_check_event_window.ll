; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_check_event_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_check_event_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.mt76x02_dfs_pattern_detector }
%struct.mt76x02_dfs_pattern_detector = type { %struct.mt76x02_dfs_event_rb* }
%struct.mt76x02_dfs_event_rb = type { i64, i64, %struct.mt76x02_dfs_event* }
%struct.mt76x02_dfs_event = type { i64 }

@MT_DFS_EVENT_WINDOW = common dso_local global i64 0, align 8
@MT_DFS_EVENT_BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x02_dfs_check_event_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_check_event_window(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  %4 = alloca %struct.mt76x02_dfs_event_rb*, align 8
  %5 = alloca %struct.mt76x02_dfs_event*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  store %struct.mt76x02_dfs_pattern_detector* %8, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %11, i32 0, i32 0
  %13 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.mt76x02_dfs_event_rb* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %9
  %17 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %3, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %17, i32 0, i32 0
  %19 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %19, i64 %21
  store %struct.mt76x02_dfs_event_rb* %22, %struct.mt76x02_dfs_event_rb** %4, align 8
  br label %23

23:                                               ; preds = %47, %16
  %24 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %4, align 8
  %25 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %4, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %4, align 8
  %33 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %32, i32 0, i32 2
  %34 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %33, align 8
  %35 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %4, align 8
  %36 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %34, i64 %37
  store %struct.mt76x02_dfs_event* %38, %struct.mt76x02_dfs_event** %5, align 8
  %39 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %5, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MT_DFS_EVENT_WINDOW, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @time_is_after_jiffies(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %4, align 8
  %49 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %52 = call i64 @mt76_incr(i64 %50, i32 %51)
  %53 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %4, align 8
  %54 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %23

55:                                               ; preds = %46, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %9

59:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.mt76x02_dfs_event_rb*) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i64 @mt76_incr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
