; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.ionic_lif = type { %struct.ionic* }
%struct.ionic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IONIC_DRV_NAME = common dso_local global i32 0, align 4
@IONIC_DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ionic_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ionic_lif*, align 8
  %6 = alloca %struct.ionic*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %7)
  store %struct.ionic_lif* %8, %struct.ionic_lif** %5, align 8
  %9 = load %struct.ionic_lif*, %struct.ionic_lif** %5, align 8
  %10 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %9, i32 0, i32 0
  %11 = load %struct.ionic*, %struct.ionic** %10, align 8
  store %struct.ionic* %11, %struct.ionic** %6, align 8
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IONIC_DRV_NAME, align 4
  %16 = call i32 @strlcpy(i32 %14, i32 %15, i32 4)
  %17 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IONIC_DRV_VERSION, align 4
  %21 = call i32 @strlcpy(i32 %19, i32 %20, i32 4)
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ionic*, %struct.ionic** %6, align 8
  %26 = getelementptr inbounds %struct.ionic, %struct.ionic* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcpy(i32 %24, i32 %29, i32 4)
  %31 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ionic*, %struct.ionic** %6, align 8
  %35 = call i32 @ionic_bus_info(%struct.ionic* %34)
  %36 = call i32 @strlcpy(i32 %33, i32 %35, i32 4)
  ret void
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ionic_bus_info(%struct.ionic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
