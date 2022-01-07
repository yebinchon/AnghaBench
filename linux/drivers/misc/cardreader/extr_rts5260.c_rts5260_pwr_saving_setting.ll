; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_pwr_saving_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_pwr_saving_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@ASPM_L1_1_EN = common dso_local global i32 0, align 4
@PM_L1_1_EN = common dso_local global i32 0, align 4
@ASPM_L1_2_EN = common dso_local global i32 0, align 4
@PM_L1_2_EN = common dso_local global i32 0, align 4
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Set parameters for L1.2.\00", align 1
@PWR_GLOBAL_CTRL = common dso_local global i32 0, align 4
@PCIE_L1_2_EN = common dso_local global i32 0, align 4
@RTS5260_DVCC_CTRL = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_EN = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_CL_EN = common dso_local global i32 0, align 4
@PWR_FE_CTL = common dso_local global i32 0, align 4
@PCIE_L1_2_PD_FE_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Set parameters for L1.1.\00", align 1
@PCIE_L1_1_EN = common dso_local global i32 0, align 4
@PCIE_L1_1_PD_FE_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Set parameters for L1.\00", align 1
@PCIE_L1_0_EN = common dso_local global i32 0, align 4
@PCIE_L1_0_PD_FE_EN = common dso_local global i32 0, align 4
@CFG_L1_0_PCIE_DPHY_RET_VALUE = common dso_local global i32 0, align 4
@CFG_L1_0_RET_VALUE_DEFAULT = common dso_local global i32 0, align 4
@CFG_L1_0_PCIE_MAC_RET_VALUE = common dso_local global i32 0, align 4
@CFG_L1_0_CRC_SD30_RET_VALUE = common dso_local global i32 0, align 4
@CFG_L1_0_CRC_SD40_RET_VALUE = common dso_local global i32 0, align 4
@CFG_L1_0_SYS_RET_VALUE = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_0 = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_0_DEFAULT = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_1 = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_1_DEFAULT = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_2 = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_2_DEFAULT = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_3 = common dso_local global i32 0, align 4
@CFG_PCIE_APHY_OFF_3_DEFAULT = common dso_local global i32 0, align 4
@PWC_CDR = common dso_local global i32 0, align 4
@PWC_CDR_DEFAULT = common dso_local global i32 0, align 4
@CFG_LP_FPWM_VALUE = common dso_local global i32 0, align 4
@CFG_LP_FPWM_VALUE_DEFAULT = common dso_local global i32 0, align 4
@CFG_L1_0_CRC_MISC_RET_VALUE = common dso_local global i32 0, align 4
@CFG_L1_0_CRC_MISC_RET_VALUE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5260_pwr_saving_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_pwr_saving_setting(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = load i32, i32* @ASPM_L1_1_EN, align 4
  %7 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %5, i32 %6)
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = load i32, i32* @PM_L1_1_EN, align 4
  %10 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %8, i32 %9)
  %11 = or i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = load i32, i32* @ASPM_L1_2_EN, align 4
  %14 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %12, i32 %13)
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = load i32, i32* @PM_L1_2_EN, align 4
  %17 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %15, i32 %16)
  %18 = or i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %21 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %19, i32 %20, i32 255, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = call i32 @pcr_dbg(%struct.rtsx_pcr* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = load i32, i32* @PWR_GLOBAL_CTRL, align 4
  %29 = load i32, i32* @PCIE_L1_2_EN, align 4
  %30 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %27, i32 %28, i32 255, i32 %29)
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %32 = load i32, i32* @RTS5260_DVCC_CTRL, align 4
  %33 = load i32, i32* @RTS5260_DVCC_OCP_EN, align 4
  %34 = load i32, i32* @RTS5260_DVCC_OCP_CL_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RTS5260_DVCC_OCP_EN, align 4
  %37 = load i32, i32* @RTS5260_DVCC_OCP_CL_EN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %31, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %41 = load i32, i32* @PWR_FE_CTL, align 4
  %42 = load i32, i32* @PCIE_L1_2_PD_FE_EN, align 4
  %43 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %40, i32 %41, i32 255, i32 %42)
  br label %70

44:                                               ; preds = %1
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %49 = call i32 @pcr_dbg(%struct.rtsx_pcr* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %51 = load i32, i32* @PWR_GLOBAL_CTRL, align 4
  %52 = load i32, i32* @PCIE_L1_1_EN, align 4
  %53 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %50, i32 %51, i32 255, i32 %52)
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %55 = load i32, i32* @PWR_FE_CTL, align 4
  %56 = load i32, i32* @PCIE_L1_1_PD_FE_EN, align 4
  %57 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %54, i32 %55, i32 255, i32 %56)
  br label %69

58:                                               ; preds = %44
  %59 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %60 = call i32 @pcr_dbg(%struct.rtsx_pcr* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %62 = load i32, i32* @PWR_GLOBAL_CTRL, align 4
  %63 = load i32, i32* @PCIE_L1_0_EN, align 4
  %64 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %61, i32 %62, i32 255, i32 %63)
  %65 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %66 = load i32, i32* @PWR_FE_CTL, align 4
  %67 = load i32, i32* @PCIE_L1_0_PD_FE_EN, align 4
  %68 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %65, i32 %66, i32 255, i32 %67)
  br label %69

69:                                               ; preds = %58, %47
  br label %70

70:                                               ; preds = %69, %24
  %71 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %72 = load i32, i32* @CFG_L1_0_PCIE_DPHY_RET_VALUE, align 4
  %73 = load i32, i32* @CFG_L1_0_RET_VALUE_DEFAULT, align 4
  %74 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %71, i32 %72, i32 255, i32 %73)
  %75 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %76 = load i32, i32* @CFG_L1_0_PCIE_MAC_RET_VALUE, align 4
  %77 = load i32, i32* @CFG_L1_0_RET_VALUE_DEFAULT, align 4
  %78 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %75, i32 %76, i32 255, i32 %77)
  %79 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %80 = load i32, i32* @CFG_L1_0_CRC_SD30_RET_VALUE, align 4
  %81 = load i32, i32* @CFG_L1_0_RET_VALUE_DEFAULT, align 4
  %82 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %79, i32 %80, i32 255, i32 %81)
  %83 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %84 = load i32, i32* @CFG_L1_0_CRC_SD40_RET_VALUE, align 4
  %85 = load i32, i32* @CFG_L1_0_RET_VALUE_DEFAULT, align 4
  %86 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %83, i32 %84, i32 255, i32 %85)
  %87 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %88 = load i32, i32* @CFG_L1_0_SYS_RET_VALUE, align 4
  %89 = load i32, i32* @CFG_L1_0_RET_VALUE_DEFAULT, align 4
  %90 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %87, i32 %88, i32 255, i32 %89)
  %91 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %92 = load i32, i32* @CFG_PCIE_APHY_OFF_0, align 4
  %93 = load i32, i32* @CFG_PCIE_APHY_OFF_0_DEFAULT, align 4
  %94 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %91, i32 %92, i32 255, i32 %93)
  %95 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %96 = load i32, i32* @CFG_PCIE_APHY_OFF_1, align 4
  %97 = load i32, i32* @CFG_PCIE_APHY_OFF_1_DEFAULT, align 4
  %98 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %95, i32 %96, i32 255, i32 %97)
  %99 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %100 = load i32, i32* @CFG_PCIE_APHY_OFF_2, align 4
  %101 = load i32, i32* @CFG_PCIE_APHY_OFF_2_DEFAULT, align 4
  %102 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %99, i32 %100, i32 255, i32 %101)
  %103 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %104 = load i32, i32* @CFG_PCIE_APHY_OFF_3, align 4
  %105 = load i32, i32* @CFG_PCIE_APHY_OFF_3_DEFAULT, align 4
  %106 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %103, i32 %104, i32 255, i32 %105)
  %107 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %108 = load i32, i32* @PWC_CDR, align 4
  %109 = load i32, i32* @PWC_CDR_DEFAULT, align 4
  %110 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %107, i32 %108, i32 255, i32 %109)
  %111 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %112 = load i32, i32* @CFG_LP_FPWM_VALUE, align 4
  %113 = load i32, i32* @CFG_LP_FPWM_VALUE_DEFAULT, align 4
  %114 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %111, i32 %112, i32 255, i32 %113)
  %115 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %116 = load i32, i32* @CFG_L1_0_CRC_MISC_RET_VALUE, align 4
  %117 = load i32, i32* @CFG_L1_0_CRC_MISC_RET_VALUE_DEFAULT, align 4
  %118 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %115, i32 %116, i32 255, i32 %117)
  ret void
}

declare dso_local i32 @rtsx_check_dev_flag(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
