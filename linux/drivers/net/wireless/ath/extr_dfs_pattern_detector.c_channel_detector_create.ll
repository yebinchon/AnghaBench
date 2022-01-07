; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pattern_detector.c_channel_detector_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pattern_detector.c_channel_detector_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_detector = type { i32, %struct.pri_detector**, i32 }
%struct.pri_detector = type { i32 }
%struct.dfs_pattern_detector = type { i32, i32, i32, %struct.radar_detector_specs* }
%struct.radar_detector_specs = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to allocate channel_detector for freq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.channel_detector* (%struct.dfs_pattern_detector*, i32)* @channel_detector_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.channel_detector* @channel_detector_create(%struct.dfs_pattern_detector* %0, i32 %1) #0 {
  %3 = alloca %struct.channel_detector*, align 8
  %4 = alloca %struct.dfs_pattern_detector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.channel_detector*, align 8
  %9 = alloca %struct.radar_detector_specs*, align 8
  %10 = alloca %struct.pri_detector*, align 8
  store %struct.dfs_pattern_detector* %0, %struct.dfs_pattern_detector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.channel_detector* @kmalloc(i32 24, i32 %11)
  store %struct.channel_detector* %12, %struct.channel_detector** %8, align 8
  %13 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %14 = icmp eq %struct.channel_detector* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %18 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %22 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %24 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.pri_detector** @kzalloc(i64 %28, i32 %29)
  %31 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %32 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %31, i32 0, i32 1
  store %struct.pri_detector** %30, %struct.pri_detector*** %32, align 8
  %33 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %34 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %33, i32 0, i32 1
  %35 = load %struct.pri_detector**, %struct.pri_detector*** %34, align 8
  %36 = icmp eq %struct.pri_detector** %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %74

38:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %42 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %48 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %47, i32 0, i32 3
  %49 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %49, i64 %50
  store %struct.radar_detector_specs* %51, %struct.radar_detector_specs** %9, align 8
  %52 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %9, align 8
  %53 = call %struct.pri_detector* @pri_detector_init(%struct.radar_detector_specs* %52)
  store %struct.pri_detector* %53, %struct.pri_detector** %10, align 8
  %54 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %55 = icmp eq %struct.pri_detector* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %74

57:                                               ; preds = %46
  %58 = load %struct.pri_detector*, %struct.pri_detector** %10, align 8
  %59 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %60 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %59, i32 0, i32 1
  %61 = load %struct.pri_detector**, %struct.pri_detector*** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.pri_detector*, %struct.pri_detector** %61, i64 %62
  store %struct.pri_detector* %58, %struct.pri_detector** %63, align 8
  br label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %39

67:                                               ; preds = %39
  %68 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %69 = getelementptr inbounds %struct.channel_detector, %struct.channel_detector* %68, i32 0, i32 0
  %70 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %71 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %70, i32 0, i32 2
  %72 = call i32 @list_add(i32* %69, i32* %71)
  %73 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  store %struct.channel_detector* %73, %struct.channel_detector** %3, align 8
  br label %84

74:                                               ; preds = %56, %37, %15
  %75 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %76 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DFS, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ath_dbg(i32 %77, i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %4, align 8
  %82 = load %struct.channel_detector*, %struct.channel_detector** %8, align 8
  %83 = call i32 @channel_detector_exit(%struct.dfs_pattern_detector* %81, %struct.channel_detector* %82)
  store %struct.channel_detector* null, %struct.channel_detector** %3, align 8
  br label %84

84:                                               ; preds = %74, %67
  %85 = load %struct.channel_detector*, %struct.channel_detector** %3, align 8
  ret %struct.channel_detector* %85
}

declare dso_local %struct.channel_detector* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.pri_detector** @kzalloc(i64, i32) #1

declare dso_local %struct.pri_detector* @pri_detector_init(%struct.radar_detector_specs*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @channel_detector_exit(%struct.dfs_pattern_detector*, %struct.channel_detector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
