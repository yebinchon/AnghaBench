; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_seq_pool_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_seq_pool_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.mt76x02_dfs_pattern_detector }
%struct.mt76x02_dfs_pattern_detector = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mt76x02_dfs_sequence = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.mt76x02_dfs_sequence*)* @mt76x02_dfs_seq_pool_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_seq_pool_put(%struct.mt76x02_dev* %0, %struct.mt76x02_dfs_sequence* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.mt76x02_dfs_sequence*, align 8
  %5 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.mt76x02_dfs_sequence* %1, %struct.mt76x02_dfs_sequence** %4, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 0
  store %struct.mt76x02_dfs_pattern_detector* %7, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %8 = load %struct.mt76x02_dfs_sequence*, %struct.mt76x02_dfs_sequence** %4, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %8, i32 0, i32 0
  %10 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %10, i32 0, i32 1
  %12 = call i32 @list_add(i32* %9, i32* %11)
  %13 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %5, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
