; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.phy_device = type { i32 }

@PHY_INTERFACE_MODE_RMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@fs_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fs_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_init_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fs_enet_private*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fs_enet_private* %8, %struct.fs_enet_private** %4, align 8
  %9 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %10 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %12 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %14 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %16 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %29 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %27, i32 %32, i32* @fs_adjust_link, i32 0, i32 %33)
  store %struct.phy_device* %34, %struct.phy_device** %5, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %36 = icmp ne %struct.phy_device* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %25
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
