; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }
%struct.typhoon = type { i32, i32, i32, i32 }

@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@TYPHOON_FIBER = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @typhoon_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.typhoon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.typhoon* @netdev_priv(%struct.net_device* %8)
  store %struct.typhoon* %9, %struct.typhoon** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %11 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %16 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 130, label %20
    i32 131, label %22
    i32 132, label %24
    i32 128, label %26
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  store i32 %19, i32* %7, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  store i32 %21, i32* %7, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  store i32 %23, i32* %7, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %28 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %2, %26, %24, %22, %20, %18
  %37 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %38 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TYPHOON_FIBER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @PORT_FIBRE, align 4
  %51 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  br label %69

54:                                               ; preds = %36
  %55 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %56 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SUPPORTED_TP, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @ADVERTISED_TP, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @PORT_TP, align 4
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  br label %69

69:                                               ; preds = %54, %43
  %70 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %71 = call i32 @typhoon_do_get_stats(%struct.typhoon* %70)
  %72 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %73 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %79 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %88 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %96

91:                                               ; preds = %69
  %92 = load i32, i32* @AUTONEG_ENABLE, align 4
  %93 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %94 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %101

96:                                               ; preds = %69
  %97 = load i32, i32* @AUTONEG_DISABLE, align 4
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %103 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %105, i32 %106)
  %108 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %109 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %111, i32 %112)
  ret i32 0
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @typhoon_do_get_stats(%struct.typhoon*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
