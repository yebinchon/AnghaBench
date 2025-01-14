; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_stats = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mv643xx_eth_private = type { i64 }

@mv643xx_eth_stats = common dso_local global %struct.mv643xx_eth_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @mv643xx_eth_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv643xx_eth_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mv643xx_eth_stats*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %11)
  store %struct.mv643xx_eth_private* %12, %struct.mv643xx_eth_private** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @mv643xx_eth_get_stats(%struct.net_device* %13)
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %16 = call i32 @mib_counters_update(%struct.mv643xx_eth_private* %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %67, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** @mv643xx_eth_stats, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.mv643xx_eth_stats* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %17
  %23 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** @mv643xx_eth_stats, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %23, i64 %25
  store %struct.mv643xx_eth_stats* %26, %struct.mv643xx_eth_stats** %9, align 8
  %27 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %28 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %33 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %37 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr i8, i8* %35, i64 %38
  store i8* %39, i8** %10, align 8
  br label %48

40:                                               ; preds = %22
  %41 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %42 = bitcast %struct.mv643xx_eth_private* %41 to i8*
  %43 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %44 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %40, %31
  %49 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %50 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ]
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %17

70:                                               ; preds = %17
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_get_stats(%struct.net_device*) #1

declare dso_local i32 @mib_counters_update(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mv643xx_eth_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
