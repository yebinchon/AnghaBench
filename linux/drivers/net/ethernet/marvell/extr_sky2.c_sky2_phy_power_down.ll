; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_phy_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_phy_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i64 }

@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@SKY2_HW_NEWER_PHY = common dso_local global i32 0, align 4
@PHY_MARV_EXT_ADR = common dso_local global i32 0, align 4
@PHY_MARV_PHY_CTRL = common dso_local global i32 0, align 4
@PHY_M_MAC_GMIF_PUP = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_FL_PASS = common dso_local global i32 0, align 4
@GM_GPCR_SPEED_100 = common dso_local global i32 0, align 4
@GM_GPCR_AU_DUP_DIS = common dso_local global i32 0, align 4
@GM_GPCR_AU_FCT_DIS = common dso_local global i32 0, align 4
@GM_GPCR_AU_SPD_DIS = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@PHY_M_PC_POW_D_ENA = common dso_local global i32 0, align 4
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@PHY_CT_PDOWN = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_DEV_REG1 = common dso_local global i32 0, align 4
@phy_power = common dso_local global i32* null, align 8
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_phy_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_phy_power_down(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GPHY_CTRL, align 4
  %10 = call i32 @SK_REG(i32 %8, i32 %9)
  %11 = load i32, i32* @GPC_RST_CLR, align 4
  %12 = call i32 @sky2_write8(%struct.sky2_hw* %7, i32 %10, i32 %11)
  %13 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GMAC_CTRL, align 4
  %16 = call i32 @SK_REG(i32 %14, i32 %15)
  %17 = load i32, i32* @GMC_RST_CLR, align 4
  %18 = call i32 @sky2_write8(%struct.sky2_hw* %13, i32 %16, i32 %17)
  %19 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %20 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SKY2_HW_NEWER_PHY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %29 = call i32 @gm_phy_write(%struct.sky2_hw* %26, i32 %27, i32 %28, i32 2)
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %33 = call i32 @gm_phy_read(%struct.sky2_hw* %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @PHY_M_MAC_GMIF_PUP, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @gm_phy_write(%struct.sky2_hw* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %46 = call i32 @gm_phy_write(%struct.sky2_hw* %43, i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %25, %2
  %48 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @GM_GP_CTRL, align 4
  %51 = load i32, i32* @GM_GPCR_FL_PASS, align 4
  %52 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @GM_GPCR_AU_DUP_DIS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @GM_GPCR_AU_FCT_DIS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @GM_GPCR_AU_SPD_DIS, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @gma_write16(%struct.sky2_hw* %48, i32 %49, i32 %50, i32 %59)
  %61 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %62 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHIP_ID_YUKON_EC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %47
  %67 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %68 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %76 = call i32 @gm_phy_write(%struct.sky2_hw* %73, i32 %74, i32 %75, i32 2)
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %80 = call i32 @gm_phy_read(%struct.sky2_hw* %77, i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @PHY_M_PC_POW_D_ENA, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @gm_phy_write(%struct.sky2_hw* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %92 = call i32 @gm_phy_write(%struct.sky2_hw* %89, i32 %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %72, %66
  %94 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @PHY_MARV_CTRL, align 4
  %97 = load i32, i32* @PHY_CT_PDOWN, align 4
  %98 = call i32 @gm_phy_write(%struct.sky2_hw* %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %47
  %100 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %101 = load i32, i32* @B2_TST_CTRL1, align 4
  %102 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %103 = call i32 @sky2_write8(%struct.sky2_hw* %100, i32 %101, i32 %102)
  %104 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %105 = load i32, i32* @PCI_DEV_REG1, align 4
  %106 = call i32 @sky2_pci_read32(%struct.sky2_hw* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** @phy_power, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %115 = load i32, i32* @PCI_DEV_REG1, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @sky2_pci_write32(%struct.sky2_hw* %114, i32 %115, i32 %116)
  %118 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %119 = load i32, i32* @B2_TST_CTRL1, align 4
  %120 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %121 = call i32 @sky2_write8(%struct.sky2_hw* %118, i32 %119, i32 %120)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
