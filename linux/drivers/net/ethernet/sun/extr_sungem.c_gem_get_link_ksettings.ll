; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64 }
%struct.gem = type { i64, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@phy_mii_mdio0 = common dso_local global i64 0, align 8
@phy_mii_mdio1 = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@phy_serdes = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@link_up = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @gem_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.gem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.gem* @netdev_priv(%struct.net_device* %8)
  store %struct.gem* %9, %struct.gem** %5, align 8
  %10 = load %struct.gem*, %struct.gem** %5, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @phy_mii_mdio0, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.gem*, %struct.gem** %5, align 8
  %17 = getelementptr inbounds %struct.gem, %struct.gem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @phy_mii_mdio1, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %15, %2
  %22 = load %struct.gem*, %struct.gem** %5, align 8
  %23 = getelementptr inbounds %struct.gem, %struct.gem* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.gem*, %struct.gem** %5, align 8
  %29 = getelementptr inbounds %struct.gem, %struct.gem* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %36 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i64, i64* @PORT_MII, align 8
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i64 %39, i64* %42, align 8
  %43 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.gem*, %struct.gem** %5, align 8
  %47 = getelementptr inbounds %struct.gem, %struct.gem* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.gem*, %struct.gem** %5, align 8
  %53 = getelementptr inbounds %struct.gem, %struct.gem* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.gem*, %struct.gem** %5, align 8
  %60 = getelementptr inbounds %struct.gem, %struct.gem* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.gem*, %struct.gem** %5, align 8
  %67 = getelementptr inbounds %struct.gem, %struct.gem* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %38
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %38
  br label %142

75:                                               ; preds = %15
  %76 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %77 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %7, align 4
  %86 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.gem*, %struct.gem** %5, align 8
  %102 = getelementptr inbounds %struct.gem, %struct.gem* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @phy_serdes, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %141

106:                                              ; preds = %75
  %107 = load i64, i64* @PORT_FIBRE, align 8
  %108 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %109 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i64 %107, i64* %110, align 8
  %111 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %112 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SUPPORTED_Pause, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %7, align 4
  %123 = load %struct.gem*, %struct.gem** %5, align 8
  %124 = getelementptr inbounds %struct.gem, %struct.gem* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @link_up, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %106
  %129 = load i32, i32* @SPEED_1000, align 4
  %130 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %131 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  br label %133

133:                                              ; preds = %128, %106
  %134 = load i32, i32* @DUPLEX_FULL, align 4
  %135 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %139 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %133, %75
  br label %142

142:                                              ; preds = %141, %74
  %143 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %144 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %146, i32 %147)
  %149 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %150 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %152, i32 %153)
  ret i32 0
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
