; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.et131x_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@et131x_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@ET131X_PCI_DEVICE_ID_FAST = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @et131x_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.et131x_adapter*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.et131x_adapter* %7, %struct.et131x_adapter** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.phy_device* @phy_find_first(i32 %10)
  store %struct.phy_device* %11, %struct.phy_device** %5, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %25 = call i32 @phydev_name(%struct.phy_device* %24)
  %26 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %27 = call %struct.phy_device* @phy_connect(%struct.net_device* %23, i32 %25, i32* @et131x_adjust_link, i32 %26)
  store %struct.phy_device* %27, %struct.phy_device** %5, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %29 = call i64 @IS_ERR(%struct.phy_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %38 = call i32 @PTR_ERR(%struct.phy_device* %37)
  store i32 %38, i32* %2, align 4
  br label %60

39:                                               ; preds = %22
  %40 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %41 = load i32, i32* @SPEED_100, align 4
  %42 = call i32 @phy_set_max_speed(%struct.phy_device* %40, i32 %41)
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ET131X_PCI_DEVICE_ID_FAST, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %52 = load i32, i32* @SPEED_1000, align 4
  %53 = call i32 @phy_set_max_speed(%struct.phy_device* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i32, i32* @AUTONEG_ENABLE, align 4
  %56 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %59 = call i32 @phy_attached_info(%struct.phy_device* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %31, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
