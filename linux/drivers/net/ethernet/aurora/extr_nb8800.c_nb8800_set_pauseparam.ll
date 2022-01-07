; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.nb8800_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @nb8800_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.nb8800_priv*, align 8
  %6 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nb8800_priv* %8, %struct.nb8800_priv** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %6, align 8
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nb8800_priv*, %struct.nb8800_priv** %5, align 8
  %16 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nb8800_priv*, %struct.nb8800_priv** %5, align 8
  %21 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nb8800_priv*, %struct.nb8800_priv** %5, align 8
  %26 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @nb8800_pause_adv(%struct.net_device* %27)
  %29 = load %struct.nb8800_priv*, %struct.nb8800_priv** %5, align 8
  %30 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @nb8800_pause_config(%struct.net_device* %34)
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %38 = icmp ne %struct.phy_device* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %41 = call i32 @phy_start_aneg(%struct.phy_device* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %33
  ret i32 0
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_pause_adv(%struct.net_device*) #1

declare dso_local i32 @nb8800_pause_config(%struct.net_device*) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
