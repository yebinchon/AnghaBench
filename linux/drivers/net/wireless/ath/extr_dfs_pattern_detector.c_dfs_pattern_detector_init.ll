; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pattern_detector.c_dfs_pattern_detector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pattern_detector.c_dfs_pattern_detector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_pattern_detector = type { i64 (%struct.dfs_pattern_detector*, i32)*, %struct.ath_common*, i32 }
%struct.ath_common = type { i32 }

@CONFIG_CFG80211_CERTIFICATION_ONUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@default_dpd = common dso_local global %struct.dfs_pattern_detector zeroinitializer, align 8
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not set DFS domain to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dfs_pattern_detector* @dfs_pattern_detector_init(%struct.ath_common* %0, i32 %1) #0 {
  %3 = alloca %struct.dfs_pattern_detector*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dfs_pattern_detector*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @CONFIG_CFG80211_CERTIFICATION_ONUS, align 4
  %8 = call i32 @IS_ENABLED(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.dfs_pattern_detector* null, %struct.dfs_pattern_detector** %3, align 8
  br label %42

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.dfs_pattern_detector* @kmalloc(i32 24, i32 %12)
  store %struct.dfs_pattern_detector* %13, %struct.dfs_pattern_detector** %6, align 8
  %14 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %15 = icmp eq %struct.dfs_pattern_detector* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.dfs_pattern_detector* null, %struct.dfs_pattern_detector** %3, align 8
  br label %42

17:                                               ; preds = %11
  %18 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %19 = bitcast %struct.dfs_pattern_detector* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.dfs_pattern_detector* @default_dpd to i8*), i64 24, i1 false)
  %20 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %21 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %20, i32 0, i32 2
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %24 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %25 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %24, i32 0, i32 1
  store %struct.ath_common* %23, %struct.ath_common** %25, align 8
  %26 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %27 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %26, i32 0, i32 0
  %28 = load i64 (%struct.dfs_pattern_detector*, i32)*, i64 (%struct.dfs_pattern_detector*, i32)** %27, align 8
  %29 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 %28(%struct.dfs_pattern_detector* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  store %struct.dfs_pattern_detector* %34, %struct.dfs_pattern_detector** %3, align 8
  br label %42

35:                                               ; preds = %17
  %36 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %37 = load i32, i32* @DFS, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %6, align 8
  %41 = call i32 @kfree(%struct.dfs_pattern_detector* %40)
  store %struct.dfs_pattern_detector* null, %struct.dfs_pattern_detector** %3, align 8
  br label %42

42:                                               ; preds = %35, %33, %16, %10
  %43 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %3, align 8
  ret %struct.dfs_pattern_detector* %43
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.dfs_pattern_detector* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.dfs_pattern_detector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
