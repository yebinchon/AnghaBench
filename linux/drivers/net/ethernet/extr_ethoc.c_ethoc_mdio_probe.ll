; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ethoc_mdio_poll = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ethoc_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_mdio_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethoc*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ethoc* @netdev_priv(%struct.net_device* %7)
  store %struct.ethoc* %8, %struct.ethoc** %4, align 8
  %9 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %10 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %15 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %18 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.phy_device* @mdiobus_get_phy(i32 %16, i32 %19)
  store %struct.phy_device* %20, %struct.phy_device** %5, align 8
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %23 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.phy_device* @phy_find_first(i32 %24)
  store %struct.phy_device* %25, %struct.phy_device** %5, align 8
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %28 = icmp ne %struct.phy_device* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %26
  %36 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %37 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %39 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %42 = load i32, i32* @ethoc_mdio_poll, align 4
  %43 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %44 = call i32 @phy_connect_direct(%struct.net_device* %40, %struct.phy_device* %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %35
  %53 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %54 = load i32, i32* @SPEED_100, align 4
  %55 = call i32 @phy_set_max_speed(%struct.phy_device* %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %47, %29
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
