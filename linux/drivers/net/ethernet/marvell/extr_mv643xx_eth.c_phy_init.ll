; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32, i32)* @phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_init(%struct.mv643xx_eth_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.phy_device*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load i32, i32* @AUTONEG_ENABLE, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @linkmode_copy(i32 %27, i32 %30)
  %32 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @linkmode_set_bit(i32 %32, i32 %35)
  br label %51

37:                                               ; preds = %3
  %38 = load i32, i32* @AUTONEG_DISABLE, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @linkmode_zero(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %47 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %37, %17
  %52 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %53 = call i32 @phy_start_aneg(%struct.phy_device* %52)
  ret void
}

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
