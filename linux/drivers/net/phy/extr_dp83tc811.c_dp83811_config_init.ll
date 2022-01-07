; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@MII_DP83811_SGMII_CTRL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@DP83811_SGMII_EN = common dso_local global i32 0, align 4
@DP83811_WOL_MAGIC_EN = common dso_local global i32 0, align 4
@DP83811_WOL_SECURE_ON = common dso_local global i32 0, align 4
@DP83811_WOL_EN = common dso_local global i32 0, align 4
@DP83811_DEVADDR = common dso_local global i32 0, align 4
@MII_DP83811_WOL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83811_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83811_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_DP83811_SGMII_CTRL, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @MII_DP83811_SGMII_CTRL, align 4
  %17 = load i32, i32* @DP83811_SGMII_EN, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @phy_write(%struct.phy_device* %15, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_DP83811_SGMII_CTRL, align 4
  %24 = load i32, i32* @DP83811_SGMII_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @phy_write(%struct.phy_device* %22, i32 %23, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %14
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %29
  %35 = load i32, i32* @DP83811_WOL_MAGIC_EN, align 4
  %36 = load i32, i32* @DP83811_WOL_SECURE_ON, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DP83811_WOL_EN, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = load i32, i32* @DP83811_DEVADDR, align 4
  %42 = load i32, i32* @MII_DP83811_WOL_CFG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @phy_write_mmd(%struct.phy_device* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %32
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
