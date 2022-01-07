; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_phy_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_phy_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i64, i32 }

@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_DEV_REG1 = common dso_local global i32 0, align 4
@phy_power = common dso_local global i32* null, align 8
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@CHIP_REV_YU_XL_A1 = common dso_local global i64 0, align 8
@coma_mode = common dso_local global i32* null, align 8
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_FE = common dso_local global i64 0, align 8
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@PHY_CT_ANE = common dso_local global i32 0, align 4
@SKY2_HW_ADV_POWER_CTL = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_phy_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_phy_power_up(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %7 = load i32, i32* @B2_TST_CTRL1, align 4
  %8 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %9 = call i32 @sky2_write8(%struct.sky2_hw* %6, i32 %7, i32 %8)
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %11 = load i32, i32* @PCI_DEV_REG1, align 4
  %12 = call i32 @sky2_pci_read32(%struct.sky2_hw* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** @phy_power, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %22 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %28 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_REV_YU_XL_A1, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32*, i32** @coma_mode, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %26, %2
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %42 = load i32, i32* @PCI_DEV_REG1, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @sky2_pci_write32(%struct.sky2_hw* %41, i32 %42, i32 %43)
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %46 = load i32, i32* @B2_TST_CTRL1, align 4
  %47 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %48 = call i32 @sky2_write8(%struct.sky2_hw* %45, i32 %46, i32 %47)
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %50 = load i32, i32* @PCI_DEV_REG1, align 4
  %51 = call i32 @sky2_pci_read32(%struct.sky2_hw* %49, i32 %50)
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %53 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_ID_YUKON_FE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %40
  %58 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PHY_MARV_CTRL, align 4
  %61 = load i32, i32* @PHY_CT_ANE, align 4
  %62 = call i32 @gm_phy_write(%struct.sky2_hw* %58, i32 %59, i32 %60, i32 %61)
  br label %78

63:                                               ; preds = %40
  %64 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %65 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SKY2_HW_ADV_POWER_CTL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @GPHY_CTRL, align 4
  %74 = call i32 @SK_REG(i32 %72, i32 %73)
  %75 = load i32, i32* @GPC_RST_CLR, align 4
  %76 = call i32 @sky2_write8(%struct.sky2_hw* %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77, %57
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
