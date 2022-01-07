; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }

@ETHTOOL_GWOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not attach PHY: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*)* @mvneta_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_mdio_probe(%struct.mvneta_port* %0) #0 {
  %2 = alloca %struct.mvneta_port*, align 8
  %3 = alloca %struct.ethtool_wolinfo, align 4
  %4 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %2, align 8
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %3, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %3, i32 0, i32 1
  %7 = load i32, i32* @ETHTOOL_GWOL, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %12 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @phylink_of_phy_connect(i32 %10, i32 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %19 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @netdev_err(%struct.TYPE_2__* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %25 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @phylink_ethtool_get_wol(i32 %26, %struct.ethtool_wolinfo* %3)
  %28 = load %struct.mvneta_port*, %struct.mvneta_port** %2, align 8
  %29 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @device_set_wakeup_capable(i32* %31, i32 %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @phylink_of_phy_connect(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @phylink_ethtool_get_wol(i32, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
