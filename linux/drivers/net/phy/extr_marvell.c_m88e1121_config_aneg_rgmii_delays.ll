; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1121_config_aneg_rgmii_delays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1121_config_aneg_rgmii_delays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@MII_88E1121_PHY_MSCR_RX_DELAY = common dso_local global i32 0, align 4
@MII_88E1121_PHY_MSCR_TX_DELAY = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@MII_MARVELL_MSCR_PAGE = common dso_local global i32 0, align 4
@MII_88E1121_PHY_MSCR_REG = common dso_local global i32 0, align 4
@MII_88E1121_PHY_MSCR_DELAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1121_config_aneg_rgmii_delays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1121_config_aneg_rgmii_delays(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @MII_88E1121_PHY_MSCR_RX_DELAY, align 4
  %11 = load i32, i32* @MII_88E1121_PHY_MSCR_TX_DELAY, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @MII_88E1121_PHY_MSCR_RX_DELAY, align 4
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @MII_88E1121_PHY_MSCR_TX_DELAY, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %34 = load i32, i32* @MII_MARVELL_MSCR_PAGE, align 4
  %35 = load i32, i32* @MII_88E1121_PHY_MSCR_REG, align 4
  %36 = load i32, i32* @MII_88E1121_PHY_MSCR_DELAY_MASK, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @phy_modify_paged(%struct.phy_device* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @phy_modify_paged(%struct.phy_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
