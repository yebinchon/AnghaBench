; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, i32 }
%struct.brcmf_core = type { i32 }

@BRCMF_PCIE_CFGREG_STATUS_CMD = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_PM_CSR = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_MSI_CAP = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_MSI_ADDR_L = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_MSI_ADDR_H = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_MSI_DATA = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_LINK_STATUS_CTRL2 = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_RBAR_CTRL = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_PML1_SUB_CTRL1 = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_REG_BAR2_CONFIG = common dso_local global i64 0, align 8
@BRCMF_PCIE_CFGREG_REG_BAR3_CONFIG = common dso_local global i64 0, align 8
@BCMA_CORE_PCIE2 = common dso_local global i32 0, align 4
@BRCMF_PCIE_REG_LINK_STATUS_CTRL = common dso_local global i32 0, align 4
@BRCMF_PCIE_LINK_STATUS_CTRL_ASPM_ENAB = common dso_local global i64 0, align 8
@BCMA_CORE_CHIPCOMMON = common dso_local global i32 0, align 4
@watchdog = common dso_local global i32 0, align 4
@BRCMF_PCIE_PCIE2REG_CONFIGADDR = common dso_local global i32 0, align 4
@BRCMF_PCIE_PCIE2REG_CONFIGDATA = common dso_local global i32 0, align 4
@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"config offset 0x%04x, value 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*)* @brcmf_pcie_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_reset_device(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca %struct.brcmf_pciedev_info*, align 8
  %3 = alloca %struct.brcmf_core*, align 8
  %4 = alloca [11 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %2, align 8
  %8 = getelementptr inbounds [11 x i64], [11 x i64]* %4, i64 0, i64 0
  %9 = load i64, i64* @BRCMF_PCIE_CFGREG_STATUS_CMD, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 1
  %11 = load i64, i64* @BRCMF_PCIE_CFGREG_PM_CSR, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i64, i64* @BRCMF_PCIE_CFGREG_MSI_CAP, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* @BRCMF_PCIE_CFGREG_MSI_ADDR_L, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 1
  %17 = load i64, i64* @BRCMF_PCIE_CFGREG_MSI_ADDR_H, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @BRCMF_PCIE_CFGREG_MSI_DATA, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @BRCMF_PCIE_CFGREG_LINK_STATUS_CTRL2, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 1
  %23 = load i64, i64* @BRCMF_PCIE_CFGREG_RBAR_CTRL, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  %25 = load i64, i64* @BRCMF_PCIE_CFGREG_PML1_SUB_CTRL1, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 1
  %27 = load i64, i64* @BRCMF_PCIE_CFGREG_REG_BAR2_CONFIG, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 1
  %29 = load i64, i64* @BRCMF_PCIE_CFGREG_REG_BAR3_CONFIG, align 8
  store i64 %29, i64* %28, align 8
  %30 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %31 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %109

35:                                               ; preds = %1
  %36 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %37 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %38 = call i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info* %36, i32 %37)
  %39 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %40 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BRCMF_PCIE_REG_LINK_STATUS_CTRL, align 4
  %43 = call i32 @pci_read_config_dword(i32 %41, i32 %42, i64* %7)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @BRCMF_PCIE_LINK_STATUS_CTRL_ASPM_ENAB, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  store i64 %47, i64* %6, align 8
  %48 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %49 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BRCMF_PCIE_REG_LINK_STATUS_CTRL, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @pci_write_config_dword(i32 %50, i32 %51, i64 %52)
  %54 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %55 = load i32, i32* @BCMA_CORE_CHIPCOMMON, align 4
  %56 = call i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info* %54, i32 %55)
  %57 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %58 = load i32, i32* @watchdog, align 4
  %59 = call i32 @WRITECC32(%struct.brcmf_pciedev_info* %57, i32 %58, i32 4)
  %60 = call i32 @msleep(i32 100)
  %61 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %62 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %63 = call i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info* %61, i32 %62)
  %64 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %65 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BRCMF_PCIE_REG_LINK_STATUS_CTRL, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @pci_write_config_dword(i32 %66, i32 %67, i64 %68)
  %70 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %71 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %74 = call %struct.brcmf_core* @brcmf_chip_get_core(i32 %72, i32 %73)
  store %struct.brcmf_core* %74, %struct.brcmf_core** %3, align 8
  %75 = load %struct.brcmf_core*, %struct.brcmf_core** %3, align 8
  %76 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %77, 13
  br i1 %78, label %79, label %109

79:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds [11 x i64], [11 x i64]* %4, i64 0, i64 0
  %83 = call i64 @ARRAY_SIZE(i64* %82)
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %87 = load i32, i32* @BRCMF_PCIE_PCIE2REG_CONFIGADDR, align 4
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds [11 x i64], [11 x i64]* %4, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info* %86, i32 %87, i64 %90)
  %92 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %93 = load i32, i32* @BRCMF_PCIE_PCIE2REG_CONFIGDATA, align 4
  %94 = call i64 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info* %92, i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load i32, i32* @PCIE, align 4
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds [11 x i64], [11 x i64]* %4, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @brcmf_dbg(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %99)
  %101 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %102 = load i32, i32* @BRCMF_PCIE_PCIE2REG_CONFIGDATA, align 4
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info* %101, i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %85
  %106 = load i64, i64* %5, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %5, align 8
  br label %80

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %34, %108, %35
  ret void
}

declare dso_local i32 @brcmf_pcie_select_core(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i64*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @WRITECC32(%struct.brcmf_pciedev_info*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.brcmf_core* @brcmf_chip_get_core(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info*, i32, i64) #1

declare dso_local i64 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
