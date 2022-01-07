; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.lan78xx_net = type { i32, i32 }
%struct.ethtool_link_ksettings = type { i32 }

@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @lan78xx_get_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_get_pause(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.ethtool_link_ksettings, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %8)
  store %struct.lan78xx_net* %9, %struct.lan78xx_net** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %6, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %14 = call i32 @phy_ethtool_ksettings_get(%struct.phy_device* %13, %struct.ethtool_link_ksettings* %7)
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %16 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %21 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FLOW_CTRL_TX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %31 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FLOW_CTRL_RX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  ret void
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_ksettings_get(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
