; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32 }
%struct.atl1_adapter = type { i32, %struct.atl1_hw }
%struct.atl1_hw = type { i64 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i64 0, align 8
@MEDIA_TYPE_1000M_FULL = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @atl1_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca %struct.atl1_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl1_adapter* %12, %struct.atl1_adapter** %5, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 1
  store %struct.atl1_hw* %14, %struct.atl1_hw** %6, align 8
  %15 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %16 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SUPPORTED_TP, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %30 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %36 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MEDIA_TYPE_1000M_FULL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34, %2
  %41 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %45 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %40
  %50 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %54 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %40
  %65 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %49
  br label %69

69:                                               ; preds = %68, %34
  %70 = load i32, i32* @PORT_TP, align 4
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @netif_carrier_ok(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %69
  %83 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %84 = call i32 @atl1_get_speed_and_duplex(%struct.atl1_hw* %83, i64* %9, i64* %10)
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @FULL_DUPLEX, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32, i32* @DUPLEX_FULL, align 4
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %102

97:                                               ; preds = %82
  %98 = load i32, i32* @DUPLEX_HALF, align 4
  %99 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %100 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %112

103:                                              ; preds = %69
  %104 = load i64, i64* @SPEED_UNKNOWN, align 8
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %106 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i64 %104, i64* %107, align 8
  %108 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %103, %102
  %113 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %114 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %120 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MEDIA_TYPE_1000M_FULL, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118, %112
  %125 = load i32, i32* @AUTONEG_ENABLE, align 4
  %126 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %127 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %134

129:                                              ; preds = %118
  %130 = load i32, i32* @AUTONEG_DISABLE, align 4
  %131 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %132 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %138, i32 %139)
  %141 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %142 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %144, i32 %145)
  ret i32 0
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @atl1_get_speed_and_duplex(%struct.atl1_hw*, i64*, i64*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
