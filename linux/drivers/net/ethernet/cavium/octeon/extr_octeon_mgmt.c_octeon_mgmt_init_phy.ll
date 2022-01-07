; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_mgmt = type { i32* }
%struct.phy_device = type { i32 }

@octeon_mgmt_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @octeon_mgmt_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_init_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.octeon_mgmt*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %6)
  store %struct.octeon_mgmt* %7, %struct.octeon_mgmt** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %8 = call i64 (...) @octeon_is_simulation()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %12 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netif_carrier_on(%struct.net_device* %16)
  store i32 0, i32* %2, align 4
  br label %32

18:                                               ; preds = %10
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %21 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @octeon_mgmt_adjust_link, align 4
  %24 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %25 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %19, i32* %22, i32 %23, i32 0, i32 %24)
  store %struct.phy_device* %25, %struct.phy_device** %5, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %27 = icmp ne %struct.phy_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @octeon_is_simulation(...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
