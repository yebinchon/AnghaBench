; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i64 }

@MVPP22_XLG_CTRL0_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL0_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@MVPP2_GMAC_AUTONEG_CONFIG = common dso_local global i64 0, align 8
@MVPP2_GMAC_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MVPP2_GMAC_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, i32, %struct.phy_device*)* @mvpp2_mac_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_mac_link_up(%struct.phylink_config* %0, i32 %1, i32 %2, %struct.phy_device* %3) #0 {
  %5 = alloca %struct.phylink_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mvpp2_port*, align 8
  %11 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phy_device* %3, %struct.phy_device** %8, align 8
  %12 = load %struct.phylink_config*, %struct.phylink_config** %5, align 8
  %13 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_device* @to_net_dev(i32 %14)
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %16)
  store %struct.mvpp2_port* %17, %struct.mvpp2_port** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @phylink_autoneg_inband(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %68, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @mvpp2_is_xlg(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @MVPP22_XLG_CTRL0_FORCE_LINK_DOWN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @MVPP22_XLG_CTRL0_FORCE_LINK_PASS, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %41 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  br label %67

46:                                               ; preds = %21
  %47 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %48 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_DOWN, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_PASS, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %62 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %46, %25
  br label %68

68:                                               ; preds = %67, %4
  %69 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %70 = call i32 @mvpp2_port_enable(%struct.mvpp2_port* %69)
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %72 = call i32 @mvpp2_egress_enable(%struct.mvpp2_port* %71)
  %73 = load %struct.mvpp2_port*, %struct.mvpp2_port** %10, align 8
  %74 = call i32 @mvpp2_ingress_enable(%struct.mvpp2_port* %73)
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %75)
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phylink_autoneg_inband(i32) #1

declare dso_local i64 @mvpp2_is_xlg(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mvpp2_port_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_egress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_ingress_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
