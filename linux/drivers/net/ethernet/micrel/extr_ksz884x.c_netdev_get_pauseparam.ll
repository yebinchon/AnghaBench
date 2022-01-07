; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, i32, i32, i32 }

@PAUSE_FLOW_CTRL = common dso_local global i32 0, align 4
@DMA_RX_FLOW_ENABLE = common dso_local global i32 0, align 4
@DMA_TX_FLOW_ENABLE = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_1_OFFSET = common dso_local global i32 0, align 4
@SWITCH_RX_FLOW_CTRL = common dso_local global i32 0, align 4
@SWITCH_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @netdev_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.dev_info*, align 8
  %7 = alloca %struct.ksz_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dev_priv* %9, %struct.dev_priv** %5, align 8
  %10 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 0
  %12 = load %struct.dev_info*, %struct.dev_info** %11, align 8
  store %struct.dev_info* %12, %struct.dev_info** %6, align 8
  %13 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %14 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %13, i32 0, i32 0
  store %struct.ksz_hw* %14, %struct.ksz_hw** %7, align 8
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PAUSE_FLOW_CTRL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %26 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %2
  %30 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %31 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMA_RX_FLOW_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %41 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_TX_FLOW_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %69

50:                                               ; preds = %2
  %51 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %52 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %53 = load i32, i32* @SWITCH_RX_FLOW_CTRL, align 4
  %54 = call i64 @sw_chk(%struct.ksz_hw* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %61 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %62 = load i32, i32* @SWITCH_TX_FLOW_CTRL, align 4
  %63 = call i64 @sw_chk(%struct.ksz_hw* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %50, %29
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sw_chk(%struct.ksz_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
