; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_idmac_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_idmac_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@SDMMC_CTRL_USE_IDMAC = common dso_local global i32 0, align 4
@SDMMC_CTRL_DMA_RESET = common dso_local global i32 0, align 4
@BMOD = common dso_local global i32 0, align 4
@SDMMC_IDMAC_ENABLE = common dso_local global i32 0, align 4
@SDMMC_IDMAC_FB = common dso_local global i32 0, align 4
@SDMMC_IDMAC_SWRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*)* @dw_mci_idmac_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_idmac_stop_dma(%struct.dw_mci* %0) #0 {
  %2 = alloca %struct.dw_mci*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %2, align 8
  %4 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %5 = load i32, i32* @CTRL, align 4
  %6 = call i32 @mci_readl(%struct.dw_mci* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SDMMC_CTRL_USE_IDMAC, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SDMMC_CTRL_DMA_RESET, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %15 = load i32, i32* @CTRL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mci_writel(%struct.dw_mci* %14, i32 %15, i32 %16)
  %18 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %19 = load i32, i32* @BMOD, align 4
  %20 = call i32 @mci_readl(%struct.dw_mci* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @SDMMC_IDMAC_ENABLE, align 4
  %22 = load i32, i32* @SDMMC_IDMAC_FB, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @SDMMC_IDMAC_SWRESET, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %31 = load i32, i32* @BMOD, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @mci_writel(%struct.dw_mci* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
