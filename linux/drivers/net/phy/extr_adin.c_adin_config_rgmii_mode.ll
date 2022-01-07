; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_config_rgmii_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_config_rgmii_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@ADIN1300_GE_RGMII_CFG_REG = common dso_local global i32 0, align 4
@ADIN1300_GE_RGMII_EN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@ADIN1300_GE_RGMII_RXID_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adi,rx-internal-delay-ps\00", align 1
@adin_rgmii_delays = common dso_local global i32 0, align 4
@ADIN1300_RGMII_2_00_NS = common dso_local global i32 0, align 4
@ADIN1300_GE_RGMII_RX_MSK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@ADIN1300_GE_RGMII_TXID_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"adi,tx-internal-delay-ps\00", align 1
@ADIN1300_GE_RGMII_GTX_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @adin_config_rgmii_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_config_rgmii_mode(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @phy_interface_is_rgmii(%struct.phy_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %12 = load i32, i32* @ADIN1300_GE_RGMII_CFG_REG, align 4
  %13 = load i32, i32* @ADIN1300_GE_RGMII_EN, align 4
  %14 = call i32 @phy_clear_bits_mmd(%struct.phy_device* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %18 = load i32, i32* @ADIN1300_GE_RGMII_CFG_REG, align 4
  %19 = call i32 @phy_read_mmd(%struct.phy_device* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %99

24:                                               ; preds = %15
  %25 = load i32, i32* @ADIN1300_GE_RGMII_EN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33, %24
  %40 = load i32, i32* @ADIN1300_GE_RGMII_RXID_EN, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @adin_rgmii_delays, align 4
  %45 = load i32, i32* @ADIN1300_RGMII_2_00_NS, align 4
  %46 = call i32 @adin_get_reg_value(%struct.phy_device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @ADIN1300_GE_RGMII_RX_MSK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ADIN1300_GE_RGMII_RX_SEL(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %60

55:                                               ; preds = %33
  %56 = load i32, i32* @ADIN1300_GE_RGMII_RXID_EN, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %39
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @ADIN1300_GE_RGMII_TXID_EN, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = load i32, i32* @adin_rgmii_delays, align 4
  %78 = load i32, i32* @ADIN1300_RGMII_2_00_NS, align 4
  %79 = call i32 @adin_get_reg_value(%struct.phy_device* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @ADIN1300_GE_RGMII_GTX_MSK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ADIN1300_GE_RGMII_GTX_SEL(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %93

88:                                               ; preds = %66
  %89 = load i32, i32* @ADIN1300_GE_RGMII_TXID_EN, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %72
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %96 = load i32, i32* @ADIN1300_GE_RGMII_CFG_REG, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @phy_write_mmd(%struct.phy_device* %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %22, %9
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @phy_clear_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @adin_get_reg_value(%struct.phy_device*, i8*, i32, i32) #1

declare dso_local i32 @ADIN1300_GE_RGMII_RX_SEL(i32) #1

declare dso_local i32 @ADIN1300_GE_RGMII_GTX_SEL(i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
