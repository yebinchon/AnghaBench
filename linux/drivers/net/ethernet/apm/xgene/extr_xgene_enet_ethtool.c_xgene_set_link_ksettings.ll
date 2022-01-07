; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }
%struct.xgene_enet_pdata = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @xgene_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.xgene_enet_pdata*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %8)
  store %struct.xgene_enet_pdata* %9, %struct.xgene_enet_pdata** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %7, align 8
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @phy_interface_mode_is_rgmii(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %20 = icmp ne %struct.phy_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %27 = call i32 @phy_ethtool_ksettings_set(%struct.phy_device* %25, %struct.ethtool_link_ksettings* %26)
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %30 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %41 = icmp ne %struct.phy_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = call i32 @phy_ethtool_ksettings_set(%struct.phy_device* %46, %struct.ethtool_link_ksettings* %47)
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %45, %42, %24, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @phy_ethtool_ksettings_set(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
