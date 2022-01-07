; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_set_pll_refclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_set_pll_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmCPU_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmCPU_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmCPU_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmCPU_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@mmIC_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmIC_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmIC_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmIC_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@mmMC_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmMC_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmMC_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmMC_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@mmPSOC_MME_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmPSOC_MME_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmPSOC_MME_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmPSOC_MME_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@mmPSOC_EMMC_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmPSOC_EMMC_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmPSOC_EMMC_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmPSOC_EMMC_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@mmTPC_PLL_DIV_SEL_0 = common dso_local global i32 0, align 4
@mmTPC_PLL_DIV_SEL_1 = common dso_local global i32 0, align 4
@mmTPC_PLL_DIV_SEL_2 = common dso_local global i32 0, align 4
@mmTPC_PLL_DIV_SEL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_set_pll_refclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_set_pll_refclk(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %3 = load i32, i32* @mmCPU_PLL_DIV_SEL_0, align 4
  %4 = call i32 @WREG32(i32 %3, i32 0)
  %5 = load i32, i32* @mmCPU_PLL_DIV_SEL_1, align 4
  %6 = call i32 @WREG32(i32 %5, i32 0)
  %7 = load i32, i32* @mmCPU_PLL_DIV_SEL_2, align 4
  %8 = call i32 @WREG32(i32 %7, i32 0)
  %9 = load i32, i32* @mmCPU_PLL_DIV_SEL_3, align 4
  %10 = call i32 @WREG32(i32 %9, i32 0)
  %11 = load i32, i32* @mmIC_PLL_DIV_SEL_0, align 4
  %12 = call i32 @WREG32(i32 %11, i32 0)
  %13 = load i32, i32* @mmIC_PLL_DIV_SEL_1, align 4
  %14 = call i32 @WREG32(i32 %13, i32 0)
  %15 = load i32, i32* @mmIC_PLL_DIV_SEL_2, align 4
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* @mmIC_PLL_DIV_SEL_3, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* @mmMC_PLL_DIV_SEL_0, align 4
  %20 = call i32 @WREG32(i32 %19, i32 0)
  %21 = load i32, i32* @mmMC_PLL_DIV_SEL_1, align 4
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* @mmMC_PLL_DIV_SEL_2, align 4
  %24 = call i32 @WREG32(i32 %23, i32 0)
  %25 = load i32, i32* @mmMC_PLL_DIV_SEL_3, align 4
  %26 = call i32 @WREG32(i32 %25, i32 0)
  %27 = load i32, i32* @mmPSOC_MME_PLL_DIV_SEL_0, align 4
  %28 = call i32 @WREG32(i32 %27, i32 0)
  %29 = load i32, i32* @mmPSOC_MME_PLL_DIV_SEL_1, align 4
  %30 = call i32 @WREG32(i32 %29, i32 0)
  %31 = load i32, i32* @mmPSOC_MME_PLL_DIV_SEL_2, align 4
  %32 = call i32 @WREG32(i32 %31, i32 0)
  %33 = load i32, i32* @mmPSOC_MME_PLL_DIV_SEL_3, align 4
  %34 = call i32 @WREG32(i32 %33, i32 0)
  %35 = load i32, i32* @mmPSOC_PCI_PLL_DIV_SEL_0, align 4
  %36 = call i32 @WREG32(i32 %35, i32 0)
  %37 = load i32, i32* @mmPSOC_PCI_PLL_DIV_SEL_1, align 4
  %38 = call i32 @WREG32(i32 %37, i32 0)
  %39 = load i32, i32* @mmPSOC_PCI_PLL_DIV_SEL_2, align 4
  %40 = call i32 @WREG32(i32 %39, i32 0)
  %41 = load i32, i32* @mmPSOC_PCI_PLL_DIV_SEL_3, align 4
  %42 = call i32 @WREG32(i32 %41, i32 0)
  %43 = load i32, i32* @mmPSOC_EMMC_PLL_DIV_SEL_0, align 4
  %44 = call i32 @WREG32(i32 %43, i32 0)
  %45 = load i32, i32* @mmPSOC_EMMC_PLL_DIV_SEL_1, align 4
  %46 = call i32 @WREG32(i32 %45, i32 0)
  %47 = load i32, i32* @mmPSOC_EMMC_PLL_DIV_SEL_2, align 4
  %48 = call i32 @WREG32(i32 %47, i32 0)
  %49 = load i32, i32* @mmPSOC_EMMC_PLL_DIV_SEL_3, align 4
  %50 = call i32 @WREG32(i32 %49, i32 0)
  %51 = load i32, i32* @mmTPC_PLL_DIV_SEL_0, align 4
  %52 = call i32 @WREG32(i32 %51, i32 0)
  %53 = load i32, i32* @mmTPC_PLL_DIV_SEL_1, align 4
  %54 = call i32 @WREG32(i32 %53, i32 0)
  %55 = load i32, i32* @mmTPC_PLL_DIV_SEL_2, align 4
  %56 = call i32 @WREG32(i32 %55, i32 0)
  %57 = load i32, i32* @mmTPC_PLL_DIV_SEL_3, align 4
  %58 = call i32 @WREG32(i32 %57, i32 0)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
