; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }
%struct.ice_aqc_set_phy_cfg_data = type { i32 }
%struct.net_device = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ICE_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Autoneg not supported on this phy.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_AQ_PHY_ENA_AUTO_LINK_UPDT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Autoneg cannot be disabled on this phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, %struct.ethtool_link_ksettings*, %struct.ice_aqc_set_phy_cfg_data*, i64, i64*, %struct.net_device*)* @ice_setup_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_setup_autoneg(%struct.ice_port_info* %0, %struct.ethtool_link_ksettings* %1, %struct.ice_aqc_set_phy_cfg_data* %2, i64 %3, i64* %4, %struct.net_device* %5) #0 {
  %7 = alloca %struct.ice_port_info*, align 8
  %8 = alloca %struct.ethtool_link_ksettings*, align 8
  %9 = alloca %struct.ice_aqc_set_phy_cfg_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %7, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %8, align 8
  store %struct.ice_aqc_set_phy_cfg_data* %2, %struct.ice_aqc_set_phy_cfg_data** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.net_device* %5, %struct.net_device** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @AUTONEG_ENABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %6
  %19 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %20 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ICE_AQ_AN_COMPLETED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %18
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %29 = load i32, i32* @supported, align 4
  %30 = load i32, i32* @Autoneg, align 4
  %31 = call i64 @ethtool_link_ksettings_test_link_mode(%struct.ethtool_link_ksettings* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %12, align 8
  %35 = call i32 @netdev_info(%struct.net_device* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load i32, i32* @ICE_AQ_PHY_ENA_AUTO_LINK_UPDT, align 4
  %40 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %9, align 8
  %41 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i64*, i64** %11, align 8
  store i64 1, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %18
  br label %77

47:                                               ; preds = %6
  %48 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %49 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ICE_AQ_AN_COMPLETED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %8, align 8
  %58 = load i32, i32* @supported, align 4
  %59 = load i32, i32* @Autoneg, align 4
  %60 = call i64 @ethtool_link_ksettings_test_link_mode(%struct.ethtool_link_ksettings* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.net_device*, %struct.net_device** %12, align 8
  %64 = call i32 @netdev_info(%struct.net_device* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %75

67:                                               ; preds = %56
  %68 = load i32, i32* @ICE_AQ_PHY_ENA_AUTO_LINK_UPDT, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %9, align 8
  %71 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i64*, i64** %11, align 8
  store i64 1, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %62
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32, i32* %13, align 4
  ret i32 %78
}

declare dso_local i64 @ethtool_link_ksettings_test_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
