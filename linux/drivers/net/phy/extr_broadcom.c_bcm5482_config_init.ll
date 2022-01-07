; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm5482_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm5482_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32 }

@PHY_BCM_FLAGS_MODE_1000BX = common dso_local global i32 0, align 4
@BCM5482_SHD_SSD = common dso_local global i32 0, align 4
@BCM5482_SHD_SSD_LEDM = common dso_local global i32 0, align 4
@BCM5482_SHD_SSD_EN = common dso_local global i32 0, align 4
@BCM5482_SSD_SGMII_SLAVE = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_SEL_SSD = common dso_local global i32 0, align 4
@BCM5482_SSD_SGMII_SLAVE_EN = common dso_local global i32 0, align 4
@BCM5482_SSD_SGMII_SLAVE_AD = common dso_local global i32 0, align 4
@BCM5482_SSD_1000BX_CTL = common dso_local global i32 0, align 4
@BCM5482_SSD_1000BX_CTL_PWRDOWN = common dso_local global i32 0, align 4
@BCM5482_SHD_MODE = common dso_local global i32 0, align 4
@BCM5482_SHD_MODE_1000BX = common dso_local global i32 0, align 4
@BCM5482_SHD_LEDS1 = common dso_local global i32 0, align 4
@BCM_LED_SRC_ACTIVITYLED = common dso_local global i32 0, align 4
@BCM_LED_SRC_LINKSPD2 = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm5482_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5482_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @bcm54xx_config_init(%struct.phy_device* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PHY_BCM_FLAGS_MODE_1000BX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %99

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @BCM5482_SHD_SSD, align 4
  %17 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @BCM5482_SHD_SSD, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BCM5482_SHD_SSD_LEDM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BCM5482_SHD_SSD_EN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %18, i32 %19, i32 %24)
  %26 = load i32, i32* @BCM5482_SSD_SGMII_SLAVE, align 4
  %27 = load i32, i32* @MII_BCM54XX_EXP_SEL_SSD, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bcm_phy_read_exp(%struct.phy_device* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %101

36:                                               ; preds = %14
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BCM5482_SSD_SGMII_SLAVE_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BCM5482_SSD_SGMII_SLAVE_AD, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @bcm_phy_write_exp(%struct.phy_device* %37, i32 %38, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %36
  %50 = load i32, i32* @BCM5482_SSD_1000BX_CTL, align 4
  %51 = load i32, i32* @MII_BCM54XX_EXP_SEL_SSD, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @bcm_phy_read_exp(%struct.phy_device* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %101

60:                                               ; preds = %49
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BCM5482_SSD_1000BX_CTL_PWRDOWN, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @bcm_phy_write_exp(%struct.phy_device* %61, i32 %62, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %101

72:                                               ; preds = %60
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = load i32, i32* @BCM5482_SHD_MODE, align 4
  %75 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = load i32, i32* @BCM5482_SHD_MODE, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @BCM5482_SHD_MODE_1000BX, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %76, i32 %77, i32 %80)
  %82 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %83 = load i32, i32* @BCM5482_SHD_LEDS1, align 4
  %84 = load i32, i32* @BCM_LED_SRC_ACTIVITYLED, align 4
  %85 = call i32 @BCM5482_SHD_LEDS1_LED1(i32 %84)
  %86 = load i32, i32* @BCM_LED_SRC_LINKSPD2, align 4
  %87 = call i32 @BCM5482_SHD_LEDS1_LED3(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %82, i32 %83, i32 %88)
  %90 = load i32, i32* @AUTONEG_DISABLE, align 4
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @SPEED_1000, align 4
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DUPLEX_FULL, align 4
  %97 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %98 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %72, %1
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %70, %58, %47, %34
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @bcm54xx_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm_phy_read_shadow(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_shadow(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm_phy_read_exp(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_exp(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @BCM5482_SHD_LEDS1_LED1(i32) #1

declare dso_local i32 @BCM5482_SHD_LEDS1_LED3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
