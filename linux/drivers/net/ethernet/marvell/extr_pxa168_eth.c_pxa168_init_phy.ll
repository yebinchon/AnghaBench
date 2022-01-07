; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.pxa168_eth_private = type { i64, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.phy_device = type { i32 }

@pxa168_eth_adjust_link = common dso_local global i32 0, align 4
@PHY_BASIC_FEATURES = common dso_local global i32 0, align 4
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pxa168_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_init_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pxa168_eth_private*, align 8
  %5 = alloca %struct.ethtool_link_ksettings, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pxa168_eth_private* %9, %struct.pxa168_eth_private** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %17 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %20 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.phy_device* @mdiobus_scan(i32 %18, i32 %21)
  store %struct.phy_device* %22, %struct.phy_device** %6, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %24 = call i64 @IS_ERR(%struct.phy_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.phy_device* %27)
  store i32 %28, i32* %2, align 4
  br label %77

29:                                               ; preds = %15
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %32 = load i32, i32* @pxa168_eth_adjust_link, align 4
  %33 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %34 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @phy_connect_direct(%struct.net_device* %30, %struct.phy_device* %31, i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %77

41:                                               ; preds = %29
  %42 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %43 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %48 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %53 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PHY_BASIC_FEATURES, align 4
  %61 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %62 = call i32 @bitmap_copy(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @AUTONEG_ENABLE, align 4
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %41
  %71 = load i32, i32* @AUTONEG_DISABLE, align 4
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %41
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @phy_ethtool_set_link_ksettings(%struct.net_device* %75, %struct.ethtool_link_ksettings* %5)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %39, %26, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @mdiobus_scan(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @phy_ethtool_set_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
