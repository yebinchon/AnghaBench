; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_ethtool.c_atl1e_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_ethtool.c_atl1e_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32 }
%struct.atl1e_adapter = type { i64, i64, %struct.atl1e_hw }
%struct.atl1e_hw = type { i64, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@athr_l1e = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @atl1e_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.atl1e_adapter*, align 8
  %6 = alloca %struct.atl1e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.atl1e_adapter* %10, %struct.atl1e_adapter** %5, align 8
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %11, i32 0, i32 2
  store %struct.atl1e_hw* %12, %struct.atl1e_hw** %6, align 8
  %13 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %14 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_TP, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.atl1e_hw*, %struct.atl1e_hw** %6, align 8
  %25 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @athr_l1e, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.atl1e_hw*, %struct.atl1e_hw** %6, align 8
  %39 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @PORT_TP, align 4
  %44 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPEED_0, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %33
  %56 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FULL_DUPLEX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load i32, i32* @DUPLEX_FULL, align 4
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  br label %77

72:                                               ; preds = %55
  %73 = load i32, i32* @DUPLEX_HALF, align 4
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  br label %87

78:                                               ; preds = %33
  %79 = load i64, i64* @SPEED_UNKNOWN, align 8
  %80 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %81 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %77
  %88 = load i32, i32* @AUTONEG_ENABLE, align 4
  %89 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %95, i32 %96)
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %101, i32 %102)
  ret i32 0
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
