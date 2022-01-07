; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_reset_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_reset_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@REG_WOL_CTRL = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_SEVER = common dso_local global i64 0, align 8
@PCI_ERR_UNC_DLP = common dso_local global i32 0, align 4
@PCI_ERR_UNC_FCP = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA_NFED = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA_FED = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA_CED = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA_URD = common dso_local global i32 0, align 4
@REG_LTSSM_ID_CTRL = common dso_local global i32 0, align 4
@LTSSM_ID_EN_WRO = common dso_local global i32 0, align 4
@ATL1C_PCIE_L0S_L1_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_hw*, i32)* @atl1c_reset_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_reset_pcie(%struct.atl1c_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %10 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %15 = load i32, i32* @PCI_COMMAND, align 4
  %16 = call i32 @AT_READ_REG(%struct.atl1c_hw* %14, i32 %15, i32* %6)
  %17 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %22 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PCI_COMMAND_IO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %29 = load i32, i32* @PCI_COMMAND, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = load i32, i32* @PCI_D3hot, align 4
  %34 = call i32 @pci_enable_wake(%struct.pci_dev* %32, i32 %33, i32 0)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = load i32, i32* @PCI_D3cold, align 4
  %37 = call i32 @pci_enable_wake(%struct.pci_dev* %35, i32 %36, i32 0)
  %38 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %39 = load i32, i32* @REG_WOL_CTRL, align 4
  %40 = call i32 @AT_READ_REG(%struct.atl1c_hw* %38, i32 %39, i32* %5)
  %41 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %42 = load i32, i32* @REG_WOL_CTRL, align 4
  %43 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %41, i32 %42, i32 0)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %45 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %46 = call i32 @pci_find_ext_capability(%struct.pci_dev* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %2
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i64 %54, i32* %5)
  %56 = load i32, i32* @PCI_ERR_UNC_DLP, align 4
  %57 = load i32, i32* @PCI_ERR_UNC_FCP, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @pci_write_config_dword(%struct.pci_dev* %62, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %49, %2
  %70 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %71 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %72 = load i32, i32* @PCI_EXP_DEVSTA_NFED, align 4
  %73 = load i32, i32* @PCI_EXP_DEVSTA_FED, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PCI_EXP_DEVSTA_CED, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @PCI_EXP_DEVSTA_URD, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @pcie_capability_write_word(%struct.pci_dev* %70, i32 %71, i32 %78)
  %80 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %81 = load i32, i32* @REG_LTSSM_ID_CTRL, align 4
  %82 = call i32 @AT_READ_REG(%struct.atl1c_hw* %80, i32 %81, i32* %5)
  %83 = load i32, i32* @LTSSM_ID_EN_WRO, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %88 = load i32, i32* @REG_LTSSM_ID_CTRL, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %87, i32 %88, i32 %89)
  %91 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %92 = call i32 @atl1c_pcie_patch(%struct.atl1c_hw* %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ATL1C_PCIE_L0S_L1_DISABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %69
  %98 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %99 = call i32 @atl1c_disable_l0s_l1(%struct.atl1c_hw* %98)
  br label %100

100:                                              ; preds = %97, %69
  %101 = call i32 @msleep(i32 5)
  ret void
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @atl1c_pcie_patch(%struct.atl1c_hw*) #1

declare dso_local i32 @atl1c_disable_l0s_l1(%struct.atl1c_hw*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
