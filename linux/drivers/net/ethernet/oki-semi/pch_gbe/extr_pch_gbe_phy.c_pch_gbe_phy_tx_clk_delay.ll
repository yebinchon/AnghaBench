; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_tx_clk_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_tx_clk_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Configuring AR803X PHY for 2ns TX clock delay\0A\00", align 1
@PHY_AR8031_DBG_OFF = common dso_local global i32 0, align 4
@PHY_AR8031_SERDES = common dso_local global i32 0, align 4
@PHY_AR8031_DBG_DAT = common dso_local global i32 0, align 4
@PHY_AR8031_SERDES_TX_CLK_DLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unknown PHY (%x), could not set TX clock delay\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Could not configure tx clock delay for PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_hw*)* @pch_gbe_phy_tx_clk_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_phy_tx_clk_delay(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  %7 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %8 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %39 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_dbg(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %19 = load i32, i32* @PHY_AR8031_DBG_OFF, align 4
  %20 = call i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %18, i32 %19, i32* %5)
  %21 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %22 = load i32, i32* @PHY_AR8031_DBG_OFF, align 4
  %23 = load i32, i32* @PHY_AR8031_SERDES, align 4
  %24 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %50

28:                                               ; preds = %13
  %29 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %30 = load i32, i32* @PHY_AR8031_DBG_DAT, align 4
  %31 = call i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %29, i32 %30, i32* %5)
  %32 = load i32, i32* @PHY_AR8031_SERDES_TX_CLK_DLY, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %36 = load i32, i32* @PHY_AR8031_DBG_DAT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %50

39:                                               ; preds = %1
  %40 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @netdev_err(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %60

50:                                               ; preds = %28, %27
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @netdev_err(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %39
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i32, i32*) #1

declare dso_local i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
