; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i64 }
%struct.dev_priv = type { %struct.ksz_port, %struct.dev_info* }
%struct.ksz_port = type { i64, i32 }
%struct.dev_info = type { i32, %struct.ksz_hw }
%struct.ksz_hw = type { i64, i32 }

@PHY_NO_FLOW_CTRL = common dso_local global i32 0, align 4
@PHY_FLOW_CTRL = common dso_local global i32 0, align 4
@PAUSE_FLOW_CTRL = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_1_OFFSET = common dso_local global i32 0, align 4
@SWITCH_RX_FLOW_CTRL = common dso_local global i32 0, align 4
@SWITCH_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @netdev_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.dev_info*, align 8
  %7 = alloca %struct.ksz_hw*, align 8
  %8 = alloca %struct.ksz_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dev_priv* %10, %struct.dev_priv** %5, align 8
  %11 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %12 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %11, i32 0, i32 1
  %13 = load %struct.dev_info*, %struct.dev_info** %12, align 8
  store %struct.dev_info* %13, %struct.dev_info** %6, align 8
  %14 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %15 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %14, i32 0, i32 1
  store %struct.ksz_hw* %15, %struct.ksz_hw** %7, align 8
  %16 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %16, i32 0, i32 0
  store %struct.ksz_port* %17, %struct.ksz_port** %8, align 8
  %18 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %19 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %2
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @PHY_NO_FLOW_CTRL, align 4
  %37 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %38 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %30, %25
  %40 = load i32, i32* @PHY_FLOW_CTRL, align 4
  %41 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %42 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @PAUSE_FLOW_CTRL, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %51 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %53 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %43
  %57 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %58 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %59 = load i32, i32* @SWITCH_RX_FLOW_CTRL, align 4
  %60 = call i32 @sw_cfg(%struct.ksz_hw* %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %62 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %63 = load i32, i32* @SWITCH_TX_FLOW_CTRL, align 4
  %64 = call i32 @sw_cfg(%struct.ksz_hw* %61, i32 %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %56, %43
  %66 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %67 = call i32 @port_set_link_speed(%struct.ksz_port* %66)
  br label %103

68:                                               ; preds = %2
  %69 = load i32, i32* @PAUSE_FLOW_CTRL, align 4
  %70 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %71 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %75 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %80 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %81 = load i32, i32* @SWITCH_RX_FLOW_CTRL, align 4
  %82 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sw_cfg(%struct.ksz_hw* %79, i32 %80, i32 %81, i32 %84)
  %86 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %87 = load i32, i32* @KS8842_SWITCH_CTRL_1_OFFSET, align 4
  %88 = load i32, i32* @SWITCH_TX_FLOW_CTRL, align 4
  %89 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sw_cfg(%struct.ksz_hw* %86, i32 %87, i32 %88, i32 %91)
  br label %102

93:                                               ; preds = %68
  %94 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %95 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @set_flow_ctrl(%struct.ksz_hw* %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %78
  br label %103

103:                                              ; preds = %102, %65
  %104 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %105 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  ret i32 0
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sw_cfg(%struct.ksz_hw*, i32, i32, i32) #1

declare dso_local i32 @port_set_link_speed(%struct.ksz_port*) #1

declare dso_local i32 @set_flow_ctrl(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
