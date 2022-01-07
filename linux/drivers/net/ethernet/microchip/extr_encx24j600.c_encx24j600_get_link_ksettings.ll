; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.encx24j600_priv = type { i64, i64, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @encx24j600_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.encx24j600_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.encx24j600_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.encx24j600_priv* %8, %struct.encx24j600_priv** %5, align 8
  %9 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %10 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_TP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %23, i32 %24)
  %26 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %27 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %33 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @DUPLEX_FULL, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @DUPLEX_HALF, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @PORT_TP, align 4
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %50 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  ret i32 0
}

declare dso_local %struct.encx24j600_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
