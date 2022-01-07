; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.stmmac_priv = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STMMAC_PCS_RGMII = common dso_local global i32 0, align 4
@STMMAC_PCS_SGMII = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @stmmac_ethtool_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_ethtool_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %6, align 8
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %11 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @STMMAC_PCS_RGMII, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STMMAC_PCS_SGMII, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %18, %2
  %28 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %29 = load i32, i32* @ADVERTISED_Pause, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUTONEG_ENABLE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %27
  %41 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %42 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @stmmac_pcs_ctrl_ane(%struct.stmmac_priv* %57, i32 %60, i32 1, i32 %65, i32 0)
  %67 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %68 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %76

70:                                               ; preds = %18
  %71 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %72 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %75 = call i32 @phylink_ethtool_ksettings_set(i32 %73, %struct.ethtool_link_ksettings* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %40, %37
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stmmac_pcs_ctrl_ane(%struct.stmmac_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phylink_ethtool_ksettings_set(i32, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
