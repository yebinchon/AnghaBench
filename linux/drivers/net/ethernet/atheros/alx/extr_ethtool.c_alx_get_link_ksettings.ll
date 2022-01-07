; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_ethtool.c_alx_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_ethtool.c_alx_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }
%struct.alx_priv = type { %struct.alx_hw }
%struct.alx_hw = type { i32, i32, i32, i32 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@ALX_FC_ANEG = common dso_local global i32 0, align 4
@ALX_FC_RX = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ALX_FC_TX = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @alx_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.alx_priv*, align 8
  %6 = alloca %struct.alx_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.alx_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.alx_priv* %10, %struct.alx_priv** %5, align 8
  %11 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %11, i32 0, i32 0
  store %struct.alx_hw* %12, %struct.alx_hw** %6, align 8
  %13 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %14 = load i32, i32* @SUPPORTED_TP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_Pause, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %21 = call i64 @alx_hw_giga(%struct.alx_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %29 = call i32 @alx_get_supported_speeds(%struct.alx_hw* %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %34 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %41 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %27
  %46 = load i32, i32* @PORT_TP, align 4
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %54 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load i32, i32* @AUTONEG_ENABLE, align 4
  %61 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  br label %69

64:                                               ; preds = %45
  %65 = load i32, i32* @AUTONEG_DISABLE, align 4
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %71 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ALX_FC_ANEG, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %69
  %77 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %78 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %76
  %84 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %85 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ALX_FC_RX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load i32, i32* @ADVERTISED_Pause, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %95 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ALX_FC_TX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %90
  br label %117

105:                                              ; preds = %83
  %106 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %107 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ALX_FC_TX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %105
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %76, %69
  %119 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %120 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %123 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %126 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %129 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %132 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %134, i32 %135)
  %137 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %138 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %140, i32 %141)
  ret i32 0
}

declare dso_local %struct.alx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @alx_hw_giga(%struct.alx_hw*) #1

declare dso_local i32 @alx_get_supported_speeds(%struct.alx_hw*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
