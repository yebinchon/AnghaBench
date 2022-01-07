; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_get_hw_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_get_hw_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76x02_dfs_hw_pulse = type { i32, i8*, i8*, i8*, i8* }

@MT_DFS_CH_EN = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.mt76x02_dfs_hw_pulse*)* @mt76x02_dfs_get_hw_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_get_hw_pulse(%struct.mt76x02_dev* %0, %struct.mt76x02_dfs_hw_pulse* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.mt76x02_dfs_hw_pulse*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.mt76x02_dfs_hw_pulse* %1, %struct.mt76x02_dfs_hw_pulse** %4, align 8
  %6 = load i32, i32* @MT_DFS_CH_EN, align 4
  %7 = shl i32 %6, 16
  %8 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %4, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %7, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %13 = load i32, i32* @DFS, align 4
  %14 = call i32 @MT_BBP(i32 %13, i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mt76_wr(%struct.mt76x02_dev* %12, i32 %14, i32 %15)
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = load i32, i32* @DFS, align 4
  %19 = call i32 @MT_BBP(i32 %18, i32 19)
  %20 = call i8* @mt76_rr(%struct.mt76x02_dev* %17, i32 %19)
  %21 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %4, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %24 = load i32, i32* @DFS, align 4
  %25 = call i32 @MT_BBP(i32 %24, i32 20)
  %26 = call i8* @mt76_rr(%struct.mt76x02_dev* %23, i32 %25)
  %27 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %4, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = load i32, i32* @DFS, align 4
  %31 = call i32 @MT_BBP(i32 %30, i32 23)
  %32 = call i8* @mt76_rr(%struct.mt76x02_dev* %29, i32 %31)
  %33 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %4, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %36 = load i32, i32* @DFS, align 4
  %37 = call i32 @MT_BBP(i32 %36, i32 22)
  %38 = call i8* @mt76_rr(%struct.mt76x02_dev* %35, i32 %37)
  %39 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %4, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  ret void
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i8* @mt76_rr(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
