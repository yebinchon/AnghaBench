; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pch_gbe_adapter = type { i32, i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error: mii_ethtool_set_link_ksettings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @pch_gbe_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca %struct.ethtool_link_ksettings, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.pch_gbe_adapter* %13, %struct.pch_gbe_adapter** %6, align 8
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 2
  store %struct.pch_gbe_hw* %15, %struct.pch_gbe_hw** %7, align 8
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = load i32, i32* @BMCR_RESET, align 4
  %23 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %25 = call i32 @memcpy(%struct.ethtool_link_ksettings* %8, %struct.ethtool_link_ksettings* %24, i32 24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @UINT_MAX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i64, i64* @SPEED_1000, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @DUPLEX_FULL, align 4
  %35 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %2
  %38 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %38, i32 0, i32 1
  %40 = call i32 @mii_ethtool_set_link_ksettings(i32* %39, %struct.ethtool_link_ksettings* %8)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %87

47:                                               ; preds = %37
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  %52 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i64* %10, i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @netif_running(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %47
  %78 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %79 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %78)
  %80 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %81 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %80)
  store i32 %81, i32* %11, align 4
  br label %85

82:                                               ; preds = %47
  %83 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %84 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %43
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @mii_ethtool_set_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i64*, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
