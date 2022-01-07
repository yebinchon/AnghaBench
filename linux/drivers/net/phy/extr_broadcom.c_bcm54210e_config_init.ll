; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm54210e_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm54210e_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_AUXCTL_SHDWSEL_MISC = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_MISC_WREN = common dso_local global i32 0, align 4
@BCM54810_SHD_CLK_CTL = common dso_local global i32 0, align 4
@BCM54810_SHD_CLK_CTL_GTXCLK_EN = common dso_local global i32 0, align 4
@PHY_BRCM_EN_MASTER_MODE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@CTL1000_AS_MASTER = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm54210e_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54210e_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %6 = call i32 @bcm54xx_auxctl_read(%struct.phy_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MII_BCM54XX_AUXCTL_MISC_WREN, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %15 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %14, i32 %15, i32 %16)
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = load i32, i32* @BCM54810_SHD_CLK_CTL, align 4
  %20 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @BCM54810_SHD_CLK_CTL_GTXCLK_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = load i32, i32* @BCM54810_SHD_CLK_CTL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %25, i32 %26, i32 %27)
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PHY_BRCM_EN_MASTER_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %37 = load i32, i32* @MII_CTRL1000, align 4
  %38 = call i32 @phy_read(%struct.phy_device* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @CTL1000_AS_MASTER, align 4
  %40 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %45 = load i32, i32* @MII_CTRL1000, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @phy_write(%struct.phy_device* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %1
  ret i32 0
}

declare dso_local i32 @bcm54xx_auxctl_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm54xx_auxctl_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm_phy_read_shadow(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_shadow(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
