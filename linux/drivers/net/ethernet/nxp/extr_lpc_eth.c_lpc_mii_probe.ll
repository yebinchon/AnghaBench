; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdata_local = type { i32, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"using MII interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"using RMII interface\0A\00", align 1
@lpc_handle_link_change = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lpc_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdata_local*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %6)
  store %struct.netdata_local* %7, %struct.netdata_local** %4, align 8
  %8 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %9 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.phy_device* @phy_find_first(i32 %10)
  store %struct.phy_device* %11, %struct.phy_device** %5, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netdev_err(%struct.net_device* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %21 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i64 @lpc_phy_interface_mode(i32* %23)
  %25 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %36 = call i32 @phydev_name(%struct.phy_device* %35)
  %37 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %38 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i64 @lpc_phy_interface_mode(i32* %40)
  %42 = call %struct.phy_device* @phy_connect(%struct.net_device* %34, i32 %36, i32* @lpc_handle_link_change, i64 %41)
  store %struct.phy_device* %42, %struct.phy_device** %5, align 8
  %43 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %44 = call i64 @IS_ERR(%struct.phy_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.phy_device* %49)
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %33
  %52 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %53 = load i32, i32* @SPEED_100, align 4
  %54 = call i32 @phy_set_max_speed(%struct.phy_device* %52, i32 %53)
  %55 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %56 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %58 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.netdata_local*, %struct.netdata_local** %4, align 8
  %60 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %62 = call i32 @phy_attached_info(%struct.phy_device* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %51, %46, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @lpc_phy_interface_mode(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32*, i64) #1

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
