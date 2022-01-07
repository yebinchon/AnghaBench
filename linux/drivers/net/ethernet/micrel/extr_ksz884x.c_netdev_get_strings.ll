; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32 }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@ethtool_stats_keys = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @netdev_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dev_priv*, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca %struct.ksz_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dev_priv* %11, %struct.dev_priv** %7, align 8
  %12 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %13 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %12, i32 0, i32 0
  %14 = load %struct.dev_info*, %struct.dev_info** %13, align 8
  store %struct.dev_info* %14, %struct.dev_info** %8, align 8
  %15 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %16 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %15, i32 0, i32 0
  store %struct.ksz_hw* %16, %struct.ksz_hw** %9, align 8
  %17 = load i64, i64* @ETH_SS_STATS, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %23 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %24 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = call i32 @memcpy(i32* %21, i32* @ethtool_stats_keys, i32 %26)
  br label %28

28:                                               ; preds = %20, %3
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
