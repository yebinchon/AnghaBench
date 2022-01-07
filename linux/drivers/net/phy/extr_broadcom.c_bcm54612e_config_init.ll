; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm54612e_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm54612e_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32 }

@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MASK = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_MISC_WREN = common dso_local global i32 0, align 4
@PHY_BRCM_RX_REFCLK_UNUSED = common dso_local global i32 0, align 4
@BCM54612E_EXP_SPARE0 = common dso_local global i32 0, align 4
@BCM54612E_LED4_CLK125OUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm54612e_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54612e_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %18, i32 3, i32 0)
  br label %20

20:                                               ; preds = %17, %11, %1
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %35 = call i32 @bcm54xx_auxctl_read(%struct.phy_device* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %46 = load i32, i32* @MII_BCM54XX_AUXCTL_MISC_WREN, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %32, %26, %20
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PHY_BRCM_RX_REFCLK_UNUSED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %50
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = load i32, i32* @BCM54612E_EXP_SPARE0, align 4
  %60 = call i32 @bcm_phy_read_exp(%struct.phy_device* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = load i32, i32* @BCM54612E_EXP_SPARE0, align 4
  %63 = load i32, i32* @BCM54612E_LED4_CLK125OUT_EN, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @bcm_phy_write_exp(%struct.phy_device* %61, i32 %62, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %50
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @bcm_phy_write_shadow(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm54xx_auxctl_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm54xx_auxctl_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm_phy_read_exp(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_exp(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
