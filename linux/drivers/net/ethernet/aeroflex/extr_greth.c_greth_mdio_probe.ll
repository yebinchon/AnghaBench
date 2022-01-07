; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.greth_private = type { i32, i64, i64, i64, i32 }
%struct.phy_device = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@greth_link_change = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @greth_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_mdio_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.greth_private*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.greth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.greth_private* %8, %struct.greth_private** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %9 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %10 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.phy_device* @phy_find_first(i32 %11)
  store %struct.phy_device* %12, %struct.phy_device** %5, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %17 = call i64 @netif_msg_probe(%struct.greth_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %29 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %30 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @phy_connect_direct(%struct.net_device* %27, %struct.phy_device* %28, i32* @greth_link_change, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %44 = call i64 @netif_msg_ifup(%struct.greth_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %79

52:                                               ; preds = %37
  %53 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %54 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %59 = load i32, i32* @SPEED_1000, align 4
  %60 = call i32 @phy_set_max_speed(%struct.phy_device* %58, i32 %59)
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %63 = load i32, i32* @SPEED_100, align 4
  %64 = call i32 @phy_set_max_speed(%struct.phy_device* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %70 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @linkmode_copy(i32 %68, i32 %71)
  %73 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %74 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %76 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %78 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %65, %50, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i64 @netif_msg_probe(%struct.greth_private*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32*, i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.greth_private*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
