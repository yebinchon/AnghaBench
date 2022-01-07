; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm54xx_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm54xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_ECR = common dso_local global i32 0, align 4
@MII_BCM54XX_ECR_IM = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_DUPLEX = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_SPEED = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_LINK = common dso_local global i32 0, align 4
@MII_BCM54XX_IMR = common dso_local global i32 0, align 4
@PHY_ID_BCM50610 = common dso_local global i64 0, align 8
@PHY_ID_BCM50610M = common dso_local global i64 0, align 8
@PHY_BRCM_CLEAR_RGMII_MODE = common dso_local global i32 0, align 4
@BCM54XX_SHD_RGMII_MODE = common dso_local global i32 0, align 4
@PHY_BRCM_RX_REFCLK_UNUSED = common dso_local global i32 0, align 4
@PHY_BRCM_DIS_TXCRXC_NOENRGY = common dso_local global i32 0, align 4
@PHY_BRCM_AUTO_PWRDWN_ENABLE = common dso_local global i32 0, align 4
@PHY_ID_BCM54210E = common dso_local global i64 0, align 8
@PHY_ID_BCM54612E = common dso_local global i64 0, align 8
@PHY_ID_BCM54810 = common dso_local global i64 0, align 8
@BCM54810_EXP_BROADREACH_LRE_MISC_CTL = common dso_local global i32 0, align 4
@BCM54810_EXP_BROADREACH_LRE_MISC_CTL_EN = common dso_local global i32 0, align 4
@BCM_LED_SRC_MULTICOLOR1 = common dso_local global i32 0, align 4
@BCM5482_SHD_LEDS1 = common dso_local global i32 0, align 4
@BCM_LED_MULTICOLOR_IN_PHASE = common dso_local global i32 0, align 4
@BCM_LED_MULTICOLOR_LINK_ACT = common dso_local global i32 0, align 4
@BCM_EXP_MULTICOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm54xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @MII_BCM54XX_ECR, align 4
  %9 = call i32 @phy_read(%struct.phy_device* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %159

14:                                               ; preds = %1
  %15 = load i32, i32* @MII_BCM54XX_ECR_IM, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @MII_BCM54XX_ECR, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @phy_write(%struct.phy_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %159

26:                                               ; preds = %14
  %27 = load i32, i32* @MII_BCM54XX_INT_DUPLEX, align 4
  %28 = load i32, i32* @MII_BCM54XX_INT_SPEED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MII_BCM54XX_INT_LINK, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = load i32, i32* @MII_BCM54XX_IMR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @phy_write(%struct.phy_device* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %159

41:                                               ; preds = %26
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %42)
  %44 = load i64, i64* @PHY_ID_BCM50610, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %47)
  %49 = load i64, i64* @PHY_ID_BCM50610M, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46, %41
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHY_BRCM_CLEAR_RGMII_MODE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = load i32, i32* @BCM54XX_SHD_RGMII_MODE, align 4
  %61 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58, %51, %46
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PHY_BRCM_RX_REFCLK_UNUSED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %62
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PHY_BRCM_DIS_TXCRXC_NOENRGY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PHY_BRCM_AUTO_PWRDWN_ENABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76, %69, %62
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = call i32 @bcm54xx_adjust_rxrefclk(%struct.phy_device* %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %87)
  %89 = load i64, i64* @PHY_ID_BCM54210E, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %93 = call i32 @bcm54210e_config_init(%struct.phy_device* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %159

98:                                               ; preds = %91
  br label %136

99:                                               ; preds = %86
  %100 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %101 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %100)
  %102 = load i64, i64* @PHY_ID_BCM54612E, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %106 = call i32 @bcm54612e_config_init(%struct.phy_device* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %159

111:                                              ; preds = %104
  br label %135

112:                                              ; preds = %99
  %113 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %114 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %113)
  %115 = load i64, i64* @PHY_ID_BCM54810, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %119 = load i32, i32* @BCM54810_EXP_BROADREACH_LRE_MISC_CTL, align 4
  %120 = call i32 @bcm_phy_read_exp(%struct.phy_device* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @BCM54810_EXP_BROADREACH_LRE_MISC_CTL_EN, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %126 = load i32, i32* @BCM54810_EXP_BROADREACH_LRE_MISC_CTL, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @bcm_phy_write_exp(%struct.phy_device* %125, i32 %126, i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %159

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %111
  br label %136

136:                                              ; preds = %135, %98
  %137 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %138 = call i32 @bcm54xx_phydsp_config(%struct.phy_device* %137)
  %139 = load i32, i32* @BCM_LED_SRC_MULTICOLOR1, align 4
  %140 = call i32 @BCM5482_SHD_LEDS1_LED1(i32 %139)
  %141 = load i32, i32* @BCM_LED_SRC_MULTICOLOR1, align 4
  %142 = call i32 @BCM5482_SHD_LEDS1_LED3(i32 %141)
  %143 = or i32 %140, %142
  store i32 %143, i32* %6, align 4
  %144 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %145 = load i32, i32* @BCM5482_SHD_LEDS1, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %144, i32 %145, i32 %146)
  %148 = load i32, i32* @BCM_LED_MULTICOLOR_IN_PHASE, align 4
  %149 = load i32, i32* @BCM_LED_MULTICOLOR_LINK_ACT, align 4
  %150 = call i32 @BCM5482_SHD_LEDS1_LED1(i32 %149)
  %151 = or i32 %148, %150
  %152 = load i32, i32* @BCM_LED_MULTICOLOR_LINK_ACT, align 4
  %153 = call i32 @BCM5482_SHD_LEDS1_LED3(i32 %152)
  %154 = or i32 %151, %153
  store i32 %154, i32* %6, align 4
  %155 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %156 = load i32, i32* @BCM_EXP_MULTICOLOR, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @bcm_phy_write_exp(%struct.phy_device* %155, i32 %156, i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %136, %131, %109, %96, %39, %24, %12
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @BRCM_PHY_MODEL(%struct.phy_device*) #1

declare dso_local i32 @bcm_phy_write_shadow(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm54xx_adjust_rxrefclk(%struct.phy_device*) #1

declare dso_local i32 @bcm54210e_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm54612e_config_init(%struct.phy_device*) #1

declare dso_local i32 @bcm_phy_read_exp(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_exp(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm54xx_phydsp_config(%struct.phy_device*) #1

declare dso_local i32 @BCM5482_SHD_LEDS1_LED1(i32) #1

declare dso_local i32 @BCM5482_SHD_LEDS1_LED3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
