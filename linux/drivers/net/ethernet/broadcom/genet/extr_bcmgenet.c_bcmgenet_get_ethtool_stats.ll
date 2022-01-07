; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_stats = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.bcmgenet_priv = type { i32 }

@BCMGENET_STATS_LEN = common dso_local global i32 0, align 4
@bcmgenet_gstrings_stats = common dso_local global %struct.bcmgenet_stats* null, align 8
@BCMGENET_STAT_NETDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @bcmgenet_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.bcmgenet_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcmgenet_stats*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.bcmgenet_priv* %12, %struct.bcmgenet_priv** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %18 = call i32 @bcmgenet_update_mib_counters(%struct.bcmgenet_priv* %17)
  br label %19

19:                                               ; preds = %16, %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @BCMGENET_STATS_LEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** @bcmgenet_gstrings_stats, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %25, i64 %27
  store %struct.bcmgenet_stats* %28, %struct.bcmgenet_stats** %9, align 8
  %29 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %9, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BCMGENET_STAT_NETDEV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %10, align 8
  br label %41

38:                                               ; preds = %24
  %39 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %7, align 8
  %40 = bitcast %struct.bcmgenet_priv* %39 to i8*
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %9, align 8
  %43 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %20

58:                                               ; preds = %20
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_update_mib_counters(%struct.bcmgenet_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
