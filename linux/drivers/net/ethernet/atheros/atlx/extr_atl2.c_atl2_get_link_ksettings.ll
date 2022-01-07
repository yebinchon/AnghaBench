; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32 }
%struct.atl2_adapter = type { i64, i64, %struct.atl2_hw }
%struct.atl2_hw = type { i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @atl2_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.atl2_adapter*, align 8
  %6 = alloca %struct.atl2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.atl2_adapter* %10, %struct.atl2_adapter** %5, align 8
  %11 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %11, i32 0, i32 2
  store %struct.atl2_hw* %12, %struct.atl2_hw** %6, align 8
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
  %24 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.atl2_hw*, %struct.atl2_hw** %6, align 8
  %29 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @PORT_TP, align 4
  %34 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPEED_0, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %2
  %46 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FULL_DUPLEX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load i32, i32* @DUPLEX_FULL, align 4
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  br label %67

62:                                               ; preds = %45
  %63 = load i32, i32* @DUPLEX_HALF, align 4
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %77

68:                                               ; preds = %2
  %69 = load i64, i64* @SPEED_UNKNOWN, align 8
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %67
  %78 = load i32, i32* @AUTONEG_ENABLE, align 4
  %79 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %85, i32 %86)
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %91, i32 %92)
  ret i32 0
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
