; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_pll_workaround_i210.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_pll_workaround_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_WUC = common dso_local global i32 0, align 4
@E1000_MDICNFG = common dso_local global i32 0, align 4
@E1000_MDICNFG_EXT_MDIO = common dso_local global i32 0, align 4
@E1000_INVM_AUTOLOAD = common dso_local global i32 0, align 4
@E1000_INVM_DEFAULT_AL = common dso_local global i32 0, align 4
@E1000_INVM_PLL_WO_VAL = common dso_local global i32 0, align 4
@I347AT4_PAGE_SELECT = common dso_local global i32 0, align 4
@E1000_PHY_PLL_FREQ_PAGE = common dso_local global i32 0, align 4
@E1000_PHY_PLL_UNCONF = common dso_local global i32 0, align 4
@E1000_MAX_PLL_TRIES = common dso_local global i32 0, align 4
@E1000_PHY_PLL_FREQ_REG = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PHYPDEN = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDLPE = common dso_local global i32 0, align 4
@E1000_EEARBC_I210 = common dso_local global i32 0, align 4
@E1000_PCI_PMCSR = common dso_local global i32 0, align 4
@E1000_PCI_PMCSR_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_pll_workaround_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %14 = load i32, i32* @E1000_WUC, align 4
  %15 = call i32 @rd32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @E1000_MDICNFG, align 4
  %17 = call i32 @rd32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @E1000_MDICNFG_EXT_MDIO, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @E1000_MDICNFG, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @wr32(i32 %22, i32 %23)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = load i32, i32* @E1000_INVM_AUTOLOAD, align 4
  %27 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %25, i32 %26, i32* %9)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @E1000_INVM_DEFAULT_AL, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %1
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @E1000_INVM_PLL_WO_VAL, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %38 = load i32, i32* @E1000_PHY_PLL_FREQ_PAGE, align 4
  %39 = call i32 @igb_write_phy_reg_82580(%struct.e1000_hw* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @E1000_PHY_PLL_UNCONF, align 4
  store i32 %40, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %114, %32
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @E1000_MAX_PLL_TRIES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %117

45:                                               ; preds = %41
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = load i32, i32* @E1000_PHY_PLL_FREQ_REG, align 4
  %48 = call i32 @igb_read_phy_reg_82580(%struct.e1000_hw* %46, i32 %47, i32* %10)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @E1000_PHY_PLL_UNCONF, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @E1000_PHY_PLL_UNCONF, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %117

55:                                               ; preds = %45
  %56 = load i32, i32* @E1000_ERR_PHY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @E1000_CTRL, align 4
  %60 = call i32 @rd32(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @E1000_CTRL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @wr32(i32 %61, i32 %64)
  %66 = load i32, i32* @E1000_CTRL_EXT, align 4
  %67 = call i32 @rd32(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @E1000_CTRL_EXT_PHYPDEN, align 4
  %69 = load i32, i32* @E1000_CTRL_EXT_SDLPE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @E1000_CTRL_EXT, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @wr32(i32 %73, i32 %74)
  %76 = load i32, i32* @E1000_WUC, align 4
  %77 = call i32 @wr32(i32 %76, i32 0)
  %78 = load i32, i32* @E1000_INVM_AUTOLOAD, align 4
  %79 = shl i32 %78, 4
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @E1000_EEARBC_I210, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @wr32(i32 %83, i32 %84)
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %87 = load i32, i32* @E1000_PCI_PMCSR, align 4
  %88 = call i32 @igb_read_pci_cfg(%struct.e1000_hw* %86, i32 %87, i32* %11)
  %89 = load i32, i32* @E1000_PCI_PMCSR_D3, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = load i32, i32* @E1000_PCI_PMCSR, align 4
  %94 = call i32 @igb_write_pci_cfg(%struct.e1000_hw* %92, i32 %93, i32* %11)
  %95 = call i32 @usleep_range(i32 1000, i32 2000)
  %96 = load i32, i32* @E1000_PCI_PMCSR_D3, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = load i32, i32* @E1000_PCI_PMCSR, align 4
  %102 = call i32 @igb_write_pci_cfg(%struct.e1000_hw* %100, i32 %101, i32* %11)
  %103 = load i32, i32* @E1000_INVM_AUTOLOAD, align 4
  %104 = shl i32 %103, 4
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 %105, 16
  %107 = or i32 %104, %106
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* @E1000_EEARBC_I210, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @wr32(i32 %108, i32 %109)
  %111 = load i32, i32* @E1000_WUC, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @wr32(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %58
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %41

117:                                              ; preds = %54, %41
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %119 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %120 = call i32 @igb_write_phy_reg_82580(%struct.e1000_hw* %118, i32 %119, i32 0)
  %121 = load i32, i32* @E1000_MDICNFG, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @wr32(i32 %121, i32 %122)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_read_invm_word_i210(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @igb_write_phy_reg_82580(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @igb_read_phy_reg_82580(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @igb_read_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @igb_write_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
