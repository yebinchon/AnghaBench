; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_ethtool.c_igbvf_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_ethtool.c_igbvf_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.igbvf_adapter = type { i32 }

@IGBVF_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@igbvf_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @igbvf_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.igbvf_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.igbvf_adapter* %12, %struct.igbvf_adapter** %7, align 8
  %13 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %7, align 8
  %14 = call i32 @igbvf_update_stats(%struct.igbvf_adapter* %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %70, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @IGBVF_GLOBAL_STATS_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %7, align 8
  %21 = bitcast %struct.igbvf_adapter* %20 to i8*
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @igbvf_gstrings_stats, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %21, i64 %28
  store i8* %29, i8** %9, align 8
  %30 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %7, align 8
  %31 = bitcast %struct.igbvf_adapter* %30 to i8*
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @igbvf_gstrings_stats, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @igbvf_gstrings_stats, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %48, label %56

48:                                               ; preds = %19
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  br label %64

56:                                               ; preds = %19
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  br label %64

64:                                               ; preds = %56, %48
  %65 = phi i64 [ %55, %48 ], [ %63, %56 ]
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %15

73:                                               ; preds = %15
  ret void
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igbvf_update_stats(%struct.igbvf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
