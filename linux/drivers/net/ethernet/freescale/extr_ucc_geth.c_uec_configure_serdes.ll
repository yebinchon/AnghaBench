; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_uec_configure_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_uec_configure_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucc_geth_private = type { %struct.ucc_geth_info* }
%struct.ucc_geth_info = type { i32 }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"SGMII mode requires that the device tree specify a tbi-handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error: Could not get TBI device\0A\00", align 1
@ENET_TBI_MII_SR = common dso_local global i32 0, align 4
@TBISR_LSTATUS = common dso_local global i32 0, align 4
@ENET_TBI_MII_ANA = common dso_local global i32 0, align 4
@TBIANA_SETTINGS = common dso_local global i32 0, align 4
@ENET_TBI_MII_TBICON = common dso_local global i32 0, align 4
@TBICON_CLK_SELECT = common dso_local global i32 0, align 4
@ENET_TBI_MII_CR = common dso_local global i32 0, align 4
@TBICR_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @uec_configure_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uec_configure_serdes(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ucc_geth_private*, align 8
  %4 = alloca %struct.ucc_geth_info*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ucc_geth_private* %7, %struct.ucc_geth_private** %3, align 8
  %8 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %9 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %8, i32 0, i32 0
  %10 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %9, align 8
  store %struct.ucc_geth_info* %10, %struct.ucc_geth_info** %4, align 8
  %11 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %4, align 8
  %12 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %59

19:                                               ; preds = %1
  %20 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %4, align 8
  %21 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.phy_device* @of_phy_find_device(i32 %22)
  store %struct.phy_device* %23, %struct.phy_device** %5, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %25 = icmp ne %struct.phy_device* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %59

30:                                               ; preds = %19
  %31 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %32 = load i32, i32* @ENET_TBI_MII_SR, align 4
  %33 = call i32 @phy_read(%struct.phy_device* %31, i32 %32)
  %34 = load i32, i32* @TBISR_LSTATUS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @put_device(i32* %40)
  br label %59

42:                                               ; preds = %30
  %43 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %44 = load i32, i32* @ENET_TBI_MII_ANA, align 4
  %45 = load i32, i32* @TBIANA_SETTINGS, align 4
  %46 = call i32 @phy_write(%struct.phy_device* %43, i32 %44, i32 %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %48 = load i32, i32* @ENET_TBI_MII_TBICON, align 4
  %49 = load i32, i32* @TBICON_CLK_SELECT, align 4
  %50 = call i32 @phy_write(%struct.phy_device* %47, i32 %48, i32 %49)
  %51 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %52 = load i32, i32* @ENET_TBI_MII_CR, align 4
  %53 = load i32, i32* @TBICR_SETTINGS, align 4
  %54 = call i32 @phy_write(%struct.phy_device* %51, i32 %52, i32 %53)
  %55 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @put_device(i32* %57)
  br label %59

59:                                               ; preds = %42, %37, %26, %15
  ret void
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.phy_device* @of_phy_find_device(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
