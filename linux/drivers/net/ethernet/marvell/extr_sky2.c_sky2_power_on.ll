; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i64, i32 }

@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_OFF = common dso_local global i32 0, align 4
@PC_VCC_ON = common dso_local global i32 0, align 4
@B2_Y2_CLK_CTRL = common dso_local global i32 0, align 4
@Y2_CLK_DIV_DIS = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@CHIP_REV_YU_XL_A1 = common dso_local global i64 0, align 8
@B2_Y2_CLK_GATE = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK2_DIS = common dso_local global i32 0, align 4
@SKY2_HW_ADV_POWER_CTL = common dso_local global i32 0, align 4
@PCI_DEV_REG3 = common dso_local global i32 0, align 4
@PCI_DEV_REG4 = common dso_local global i32 0, align 4
@P_ASPM_CONTROL_MSK = common dso_local global i32 0, align 4
@PCI_DEV_REG5 = common dso_local global i32 0, align 4
@P_CTL_TIM_VMAIN_AV_MSK = common dso_local global i32 0, align 4
@PCI_CFG_REG_1 = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_HW_WOL_ON = common dso_local global i32 0, align 4
@B2_GP_IO = common dso_local global i32 0, align 4
@GLB_GPIO_STAT_RACE_DIS = common dso_local global i32 0, align 4
@Y2_LED_STAT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_power_on(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %4 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %5 = load i32, i32* @B0_POWER_CTRL, align 4
  %6 = load i32, i32* @PC_VAUX_ENA, align 4
  %7 = load i32, i32* @PC_VCC_ENA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PC_VAUX_OFF, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PC_VCC_ON, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @sky2_write8(%struct.sky2_hw* %4, i32 %5, i32 %12)
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %15 = load i32, i32* @B2_Y2_CLK_CTRL, align 4
  %16 = load i32, i32* @Y2_CLK_DIV_DIS, align 4
  %17 = call i32 @sky2_write32(%struct.sky2_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %19 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %25 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_REV_YU_XL_A1, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %31 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %32 = load i32, i32* @Y2_PCI_CLK_LNK1_DIS, align 4
  %33 = load i32, i32* @Y2_COR_CLK_LNK1_DIS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @Y2_CLK_GAT_LNK1_DIS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @Y2_PCI_CLK_LNK2_DIS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @Y2_COR_CLK_LNK2_DIS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @Y2_CLK_GAT_LNK2_DIS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @sky2_write8(%struct.sky2_hw* %30, i32 %31, i32 %42)
  br label %48

44:                                               ; preds = %23, %1
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %46 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %47 = call i32 @sky2_write8(%struct.sky2_hw* %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44, %29
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %50 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SKY2_HW_ADV_POWER_CTL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %48
  %56 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %57 = load i32, i32* @PCI_DEV_REG3, align 4
  %58 = call i32 @sky2_pci_write32(%struct.sky2_hw* %56, i32 %57, i32 0)
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %60 = load i32, i32* @PCI_DEV_REG4, align 4
  %61 = call i32 @sky2_pci_read32(%struct.sky2_hw* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @P_ASPM_CONTROL_MSK, align 4
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %66 = load i32, i32* @PCI_DEV_REG4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @sky2_pci_write32(%struct.sky2_hw* %65, i32 %66, i32 %67)
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %70 = load i32, i32* @PCI_DEV_REG5, align 4
  %71 = call i32 @sky2_pci_read32(%struct.sky2_hw* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @P_CTL_TIM_VMAIN_AV_MSK, align 4
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %76 = load i32, i32* @PCI_DEV_REG5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @sky2_pci_write32(%struct.sky2_hw* %75, i32 %76, i32 %77)
  %79 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %80 = load i32, i32* @PCI_CFG_REG_1, align 4
  %81 = call i32 @sky2_pci_write32(%struct.sky2_hw* %79, i32 %80, i32 0)
  %82 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %83 = load i32, i32* @B0_CTST, align 4
  %84 = load i32, i32* @Y2_HW_WOL_ON, align 4
  %85 = call i32 @sky2_write16(%struct.sky2_hw* %82, i32 %83, i32 %84)
  %86 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %87 = load i32, i32* @B2_GP_IO, align 4
  %88 = call i32 @sky2_read32(%struct.sky2_hw* %86, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @GLB_GPIO_STAT_RACE_DIS, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %93 = load i32, i32* @B2_GP_IO, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @sky2_write32(%struct.sky2_hw* %92, i32 %93, i32 %94)
  %96 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %97 = load i32, i32* @B2_GP_IO, align 4
  %98 = call i32 @sky2_read32(%struct.sky2_hw* %96, i32 %97)
  br label %99

99:                                               ; preds = %55, %48
  %100 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %101 = load i32, i32* @B0_CTST, align 4
  %102 = load i32, i32* @Y2_LED_STAT_ON, align 4
  %103 = call i32 @sky2_write16(%struct.sky2_hw* %100, i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_pci_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
