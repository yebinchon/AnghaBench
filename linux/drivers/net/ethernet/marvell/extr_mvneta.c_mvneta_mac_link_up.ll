; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.mvneta_port = type { i32, i64, i64 }

@MVNETA_GMAC_AUTONEG_CONFIG = common dso_local global i32 0, align 4
@MVNETA_GMAC_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MVNETA_GMAC_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, i32, %struct.phy_device*)* @mvneta_mac_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_mac_link_up(%struct.phylink_config* %0, i32 %1, i32 %2, %struct.phy_device* %3) #0 {
  %5 = alloca %struct.phylink_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mvneta_port*, align 8
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
  %17 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %16)
  store %struct.mvneta_port* %17, %struct.mvneta_port** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @phylink_autoneg_inband(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %4
  %22 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %23 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %24 = call i32 @mvreg_read(%struct.mvneta_port* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_DOWN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_PASS, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %33 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mvreg_write(%struct.mvneta_port* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %21, %4
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %38 = call i32 @mvneta_port_up(%struct.mvneta_port* %37)
  %39 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %40 = icmp ne %struct.phy_device* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %43 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %48 = call i64 @phy_init_eee(%struct.phy_device* %47, i32 0)
  %49 = icmp sge i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %52 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %54 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %55 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.mvneta_port*, %struct.mvneta_port** %10, align 8
  %60 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %46
  %64 = phi i1 [ false, %46 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @mvneta_set_eee(%struct.mvneta_port* %53, i32 %65)
  br label %67

67:                                               ; preds = %63, %41, %36
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phylink_autoneg_inband(i32) #1

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_port_up(%struct.mvneta_port*) #1

declare dso_local i64 @phy_init_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @mvneta_set_eee(%struct.mvneta_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
