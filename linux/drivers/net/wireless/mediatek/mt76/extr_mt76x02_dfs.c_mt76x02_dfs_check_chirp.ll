; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_check_chirp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_check_chirp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.mt76x02_dfs_pattern_detector }
%struct.mt76x02_dfs_pattern_detector = type { i32, i32 }

@MT_PBF_LIFE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x02_dfs_check_chirp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_dfs_check_chirp(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  store %struct.mt76x02_dfs_pattern_detector* %8, %struct.mt76x02_dfs_pattern_detector** %6, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = load i32, i32* @MT_PBF_LIFE_TIMER, align 4
  %11 = call i32 @mt76_rr(%struct.mt76x02_dev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %6, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %6, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 12582912
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %6, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = icmp sgt i32 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %6, align 8
  %32 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
