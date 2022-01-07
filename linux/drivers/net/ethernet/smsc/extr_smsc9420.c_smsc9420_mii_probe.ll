; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no PHY found at address 1\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@smsc9420_phy_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.smsc9420_pdata* %7, %struct.smsc9420_pdata** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %13 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.phy_device* @mdiobus_get_phy(i32 %14, i32 1)
  store %struct.phy_device* %15, %struct.phy_device** %5, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = icmp ne %struct.phy_device* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netdev_err(%struct.net_device* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %26 = call i32 @phydev_name(%struct.phy_device* %25)
  %27 = load i32, i32* @smsc9420_phy_adjust_link, align 4
  %28 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %29 = call %struct.phy_device* @phy_connect(%struct.net_device* %24, i32 %26, i32 %27, i32 %28)
  store %struct.phy_device* %29, %struct.phy_device** %5, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %31 = call i64 @IS_ERR(%struct.phy_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.phy_device* %36)
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %23
  %39 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %40 = load i32, i32* @SPEED_100, align 4
  %41 = call i32 @phy_set_max_speed(%struct.phy_device* %39, i32 %40)
  %42 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %43 = call i32 @phy_support_asym_pause(%struct.phy_device* %42)
  %44 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %45 = call i32 @phy_attached_info(%struct.phy_device* %44)
  %46 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %47 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 4
  %48 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %49 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %38, %33, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
