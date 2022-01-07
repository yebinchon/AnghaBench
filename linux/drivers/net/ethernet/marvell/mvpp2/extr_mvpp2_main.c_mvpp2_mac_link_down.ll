; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_mac_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_mac_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i64 }

@MVPP22_XLG_CTRL0_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL0_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MVPP2_GMAC_AUTONEG_CONFIG = common dso_local global i64 0, align 8
@MVPP2_GMAC_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@MVPP2_GMAC_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, i32)* @mvpp2_mac_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_mac_link_down(%struct.phylink_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mvpp2_port*, align 8
  %9 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.phylink_config*, %struct.phylink_config** %4, align 8
  %11 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @to_net_dev(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %14)
  store %struct.mvpp2_port* %15, %struct.mvpp2_port** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @phylink_autoneg_inband(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %66, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @mvpp2_is_xlg(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %25 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @MVPP22_XLG_CTRL0_FORCE_LINK_PASS, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @MVPP22_XLG_CTRL0_FORCE_LINK_DOWN, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  br label %65

44:                                               ; preds = %19
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %46 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_PASS, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_DOWN, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %60 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  br label %65

65:                                               ; preds = %44, %23
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %67)
  %69 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %70 = call i32 @mvpp2_egress_disable(%struct.mvpp2_port* %69)
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %72 = call i32 @mvpp2_ingress_disable(%struct.mvpp2_port* %71)
  %73 = load %struct.mvpp2_port*, %struct.mvpp2_port** %8, align 8
  %74 = call i32 @mvpp2_port_disable(%struct.mvpp2_port* %73)
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phylink_autoneg_inband(i32) #1

declare dso_local i64 @mvpp2_is_xlg(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @mvpp2_egress_disable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_ingress_disable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_port_disable(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
