; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_ethtool.c_ehea_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_ethtool.c_ehea_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ehea_port = type { i32, i32, i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ehea_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ehea_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %11)
  store %struct.ehea_port* %12, %struct.ehea_port** %6, align 8
  %13 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %14 = call i32 @ehea_sense_port_attr(%struct.ehea_port* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %127

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i64 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %25 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 131, label %29
    i32 128, label %31
    i32 130, label %33
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @SPEED_10, align 4
  store i32 %28, i32* %9, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @SPEED_100, align 4
  store i32 %30, i32* %9, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @SPEED_1000, align 4
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @SPEED_10000, align 4
  store i32 %34, i32* %9, align 4
  br label %36

35:                                               ; preds = %23
  store i32 -1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %33, %31, %29, %27
  %37 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %38 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @DUPLEX_FULL, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @DUPLEX_HALF, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  br label %56

50:                                               ; preds = %19
  %51 = load i32, i32* @SPEED_UNKNOWN, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SPEED_10000, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %56
  %68 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %69 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %72 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @PORT_FIBRE, align 4
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  br label %101

78:                                               ; preds = %56
  %79 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %80 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SUPPORTED_TP, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %93 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @ADVERTISED_TP, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @PORT_TP, align 4
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %78, %67
  %102 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %103 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %118, i32 %119)
  %121 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %124, i32 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %110, %17
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_sense_port_attr(%struct.ehea_port*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
