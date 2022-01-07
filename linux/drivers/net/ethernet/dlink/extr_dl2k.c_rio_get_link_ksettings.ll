; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_rio_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.netdev_private = type { i32, i64, i64, i32, i64, i64 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @rio_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.netdev_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %8)
  store %struct.netdev_private* %9, %struct.netdev_private** %5, align 8
  %10 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %16 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %19 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @PORT_FIBRE, align 4
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %27 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SUPPORTED_MII, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %40 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ADVERTISED_MII, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @PORT_MII, align 4
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %25, %14
  %57 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %63 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %69 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @DUPLEX_FULL, align 4
  br label %76

74:                                               ; preds = %61
  %75 = load i32, i32* @DUPLEX_HALF, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  br label %90

81:                                               ; preds = %56
  %82 = load i32, i32* @SPEED_UNKNOWN, align 4
  %83 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %76
  %91 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %92 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @AUTONEG_ENABLE, align 4
  %97 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  br label %105

100:                                              ; preds = %90
  %101 = load i32, i32* @AUTONEG_DISABLE, align 4
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %103 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %107 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %113 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %115, i32 %116)
  %118 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %119 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %121, i32 %122)
  ret i32 0
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
