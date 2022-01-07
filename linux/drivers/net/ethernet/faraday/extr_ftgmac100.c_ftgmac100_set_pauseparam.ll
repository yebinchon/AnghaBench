; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i64 }
%struct.ftgmac100 = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ftgmac100_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ftgmac100*, align 8
  %6 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %7)
  store %struct.ftgmac100* %8, %struct.ftgmac100** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %6, align 8
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %16 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %21 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %26 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %28 = icmp ne %struct.phy_device* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @phy_set_asym_pause(%struct.phy_device* %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %2
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i64 @netif_running(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %44 = icmp ne %struct.phy_device* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %47 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.ftgmac100*, %struct.ftgmac100** %5, align 8
  %52 = call i32 @ftgmac100_config_pause(%struct.ftgmac100* %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %38
  ret i32 0
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_set_asym_pause(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ftgmac100_config_pause(%struct.ftgmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
