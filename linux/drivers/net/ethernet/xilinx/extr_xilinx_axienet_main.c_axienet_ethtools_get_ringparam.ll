; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_ethtools_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_ethtools_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i64, i64, i32, i32, i64, i64, i32 }
%struct.axienet_local = type { i32, i32 }

@RX_BD_NUM_MAX = common dso_local global i32 0, align 4
@TX_BD_NUM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @axienet_ethtools_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_ethtools_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %6)
  store %struct.axienet_local* %7, %struct.axienet_local** %5, align 8
  %8 = load i32, i32* @RX_BD_NUM_MAX, align 4
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @TX_BD_NUM_MAX, align 4
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %19 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %28 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
