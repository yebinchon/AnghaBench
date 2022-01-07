; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_stats = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.e1000_adapter = type { i32 }

@e1000_gstrings_stats = common dso_local global %struct.e1000_stats* null, align 8
@E1000_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid E1000 stat type: %u index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @e1000_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_stats*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %7, align 8
  %13 = load %struct.e1000_stats*, %struct.e1000_stats** @e1000_gstrings_stats, align 8
  store %struct.e1000_stats* %13, %struct.e1000_stats** %9, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %15 = call i32 @e1000_update_stats(%struct.e1000_adapter* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %70, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @E1000_GLOBAL_STATS_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %16
  %21 = load %struct.e1000_stats*, %struct.e1000_stats** %9, align 8
  %22 = getelementptr inbounds %struct.e1000_stats, %struct.e1000_stats* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %40 [
    i32 128, label %24
    i32 129, label %32
  ]

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = bitcast %struct.net_device* %25 to i8*
  %27 = load %struct.e1000_stats*, %struct.e1000_stats** %9, align 8
  %28 = getelementptr inbounds %struct.e1000_stats, %struct.e1000_stats* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %10, align 8
  br label %47

32:                                               ; preds = %20
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %34 = bitcast %struct.e1000_adapter* %33 to i8*
  %35 = load %struct.e1000_stats*, %struct.e1000_stats** %9, align 8
  %36 = getelementptr inbounds %struct.e1000_stats, %struct.e1000_stats* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %10, align 8
  br label %47

40:                                               ; preds = %20
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load %struct.e1000_stats*, %struct.e1000_stats** %9, align 8
  %43 = getelementptr inbounds %struct.e1000_stats, %struct.e1000_stats* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @netdev_WARN_ONCE(%struct.net_device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %70

47:                                               ; preds = %32, %24
  %48 = load %struct.e1000_stats*, %struct.e1000_stats** %9, align 8
  %49 = getelementptr inbounds %struct.e1000_stats, %struct.e1000_stats* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %69

61:                                               ; preds = %47
  %62 = load i8*, i8** %10, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %53
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = load %struct.e1000_stats*, %struct.e1000_stats** %9, align 8
  %74 = getelementptr inbounds %struct.e1000_stats, %struct.e1000_stats* %73, i32 1
  store %struct.e1000_stats* %74, %struct.e1000_stats** %9, align 8
  br label %16

75:                                               ; preds = %16
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1000_update_stats(%struct.e1000_adapter*) #1

declare dso_local i32 @netdev_WARN_ONCE(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
