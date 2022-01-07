; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.ocelot_port = type { i32, i32, i32 }

@DEV_MAC_ENA_CFG = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE_PORT_ENA = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ocelot_port_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ocelot_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %4)
  store %struct.ocelot_port* %5, %struct.ocelot_port** %3, align 8
  %6 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %7 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @phy_disconnect(i32 %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %13 = load i32, i32* @DEV_MAC_ENA_CFG, align 4
  %14 = call i32 @ocelot_port_writel(%struct.ocelot_port* %12, i32 0, i32 %13)
  %15 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %16 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QSYS_SWITCH_PORT_MODE_PORT_ENA, align 4
  %19 = load i32, i32* @QSYS_SWITCH_PORT_MODE, align 4
  %20 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %21 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ocelot_rmw_rix(i32 %17, i32 0, i32 %18, i32 %19, i32 %22)
  ret i32 0
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @ocelot_port_writel(%struct.ocelot_port*, i32, i32) #1

declare dso_local i32 @ocelot_rmw_rix(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
