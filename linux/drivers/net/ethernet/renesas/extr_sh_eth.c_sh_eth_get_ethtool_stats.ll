; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.sh_eth_private = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @sh_eth_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sh_eth_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.sh_eth_private* %10, %struct.sh_eth_private** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sh_eth_private*, %struct.sh_eth_private** %7, align 8
  %12 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %13, i32* %18, align 4
  %19 = load %struct.sh_eth_private*, %struct.sh_eth_private** %7, align 8
  %20 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load %struct.sh_eth_private*, %struct.sh_eth_private** %7, align 8
  %28 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load %struct.sh_eth_private*, %struct.sh_eth_private** %7, align 8
  %36 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %37, i32* %42, align 4
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
