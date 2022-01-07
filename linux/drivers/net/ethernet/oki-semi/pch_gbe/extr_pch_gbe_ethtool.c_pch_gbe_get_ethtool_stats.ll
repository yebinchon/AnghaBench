; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_stats = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.pch_gbe_adapter = type { i32 }

@pch_gbe_gstrings_stats = common dso_local global %struct.pch_gbe_stats* null, align 8
@PCH_GBE_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @pch_gbe_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pch_gbe_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pch_gbe_stats*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.pch_gbe_adapter* %13, %struct.pch_gbe_adapter** %7, align 8
  %14 = load %struct.pch_gbe_stats*, %struct.pch_gbe_stats** @pch_gbe_gstrings_stats, align 8
  store %struct.pch_gbe_stats* %14, %struct.pch_gbe_stats** %9, align 8
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %10, align 8
  %18 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %19 = call i32 @pch_gbe_update_stats(%struct.pch_gbe_adapter* %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %52, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PCH_GBE_GLOBAL_STATS_LEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.pch_gbe_stats*, %struct.pch_gbe_stats** %9, align 8
  %27 = getelementptr inbounds %struct.pch_gbe_stats, %struct.pch_gbe_stats* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %11, align 8
  %31 = load %struct.pch_gbe_stats*, %struct.pch_gbe_stats** %9, align 8
  %32 = getelementptr inbounds %struct.pch_gbe_stats, %struct.pch_gbe_stats* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i8*, i8** %11, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  br label %44

40:                                               ; preds = %24
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %39, %36 ], [ %43, %40 ]
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load %struct.pch_gbe_stats*, %struct.pch_gbe_stats** %9, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_stats, %struct.pch_gbe_stats* %50, i32 1
  store %struct.pch_gbe_stats* %51, %struct.pch_gbe_stats** %9, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %20

55:                                               ; preds = %20
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_update_stats(%struct.pch_gbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
