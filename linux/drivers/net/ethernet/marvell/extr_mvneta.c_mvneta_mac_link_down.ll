; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.net_device = type { i32 }
%struct.mvneta_port = type { i32 }

@MVNETA_GMAC_AUTONEG_CONFIG = common dso_local global i32 0, align 4
@MVNETA_GMAC_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@MVNETA_GMAC_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, i32)* @mvneta_mac_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_mac_link_down(%struct.phylink_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mvneta_port*, align 8
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
  %15 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %14)
  store %struct.mvneta_port* %15, %struct.mvneta_port** %8, align 8
  %16 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %17 = call i32 @mvneta_port_down(%struct.mvneta_port* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @phylink_autoneg_inband(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %3
  %22 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %23 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %24 = call i32 @mvreg_read(%struct.mvneta_port* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_PASS, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_DOWN, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %33 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mvreg_write(%struct.mvneta_port* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %21, %3
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %38 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %40 = call i32 @mvneta_set_eee(%struct.mvneta_port* %39, i32 0)
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvneta_port_down(%struct.mvneta_port*) #1

declare dso_local i32 @phylink_autoneg_inband(i32) #1

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_set_eee(%struct.mvneta_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
