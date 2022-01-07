; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xgene_enet_pdata = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@PORT_MII = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @xgene_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.xgene_enet_pdata*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %9)
  store %struct.xgene_enet_pdata* %10, %struct.xgene_enet_pdata** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %7, align 8
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @phy_interface_mode_is_rgmii(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %21 = icmp eq %struct.phy_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %118

25:                                               ; preds = %19
  %26 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %28 = call i32 @phy_ethtool_ksettings_get(%struct.phy_device* %26, %struct.ethtool_link_ksettings* %27)
  store i32 0, i32* %3, align 4
  br label %118

29:                                               ; preds = %2
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %29
  %36 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %6, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %42 = icmp ne %struct.phy_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %118

46:                                               ; preds = %40
  %47 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %49 = call i32 @phy_ethtool_ksettings_get(%struct.phy_device* %47, %struct.ethtool_link_ksettings* %48)
  store i32 0, i32* %3, align 4
  br label %118

50:                                               ; preds = %35
  %51 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %52 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SUPPORTED_MII, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %59, i32 %60)
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %65, i32 %66)
  %68 = load i32, i32* @SPEED_1000, align 4
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 8
  %72 = load i8*, i8** @DUPLEX_FULL, align 8
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @PORT_MII, align 4
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @AUTONEG_ENABLE, align 4
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %116

84:                                               ; preds = %29
  %85 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %86 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %91, i32 %92)
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %97, i32 %98)
  %100 = load i32, i32* @SPEED_10000, align 4
  %101 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load i8*, i8** @DUPLEX_FULL, align 8
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @PORT_FIBRE, align 4
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @AUTONEG_DISABLE, align 4
  %113 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %84, %50
  br label %117

117:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %46, %43, %25, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @phy_ethtool_ksettings_get(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
