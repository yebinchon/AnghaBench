; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_idmac_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_idmac_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32 }

@SDMMC_CTRL_DMA_RESET = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@SDMMC_CTRL_USE_IDMAC = common dso_local global i32 0, align 4
@BMOD = common dso_local global i32 0, align 4
@SDMMC_IDMAC_ENABLE = common dso_local global i32 0, align 4
@SDMMC_IDMAC_FB = common dso_local global i32 0, align 4
@PLDMND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*, i32)* @dw_mci_idmac_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_idmac_start_dma(%struct.dw_mci* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %13 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dw_mci_prepare_desc64(%struct.dw_mci* %12, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %20 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %21 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dw_mci_prepare_desc32(%struct.dw_mci* %19, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %11
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %62

29:                                               ; preds = %25
  %30 = call i32 (...) @wmb()
  %31 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %32 = load i32, i32* @SDMMC_CTRL_DMA_RESET, align 4
  %33 = call i32 @dw_mci_ctrl_reset(%struct.dw_mci* %31, i32 %32)
  %34 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %35 = call i32 @dw_mci_idmac_reset(%struct.dw_mci* %34)
  %36 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %37 = load i32, i32* @CTRL, align 4
  %38 = call i32 @mci_readl(%struct.dw_mci* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @SDMMC_CTRL_USE_IDMAC, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %43 = load i32, i32* @CTRL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mci_writel(%struct.dw_mci* %42, i32 %43, i32 %44)
  %46 = call i32 (...) @wmb()
  %47 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %48 = load i32, i32* @BMOD, align 4
  %49 = call i32 @mci_readl(%struct.dw_mci* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @SDMMC_IDMAC_ENABLE, align 4
  %51 = load i32, i32* @SDMMC_IDMAC_FB, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %56 = load i32, i32* @BMOD, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mci_writel(%struct.dw_mci* %55, i32 %56, i32 %57)
  %59 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %60 = load i32, i32* @PLDMND, align 4
  %61 = call i32 @mci_writel(%struct.dw_mci* %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %29, %28
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @dw_mci_prepare_desc64(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @dw_mci_prepare_desc32(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dw_mci_ctrl_reset(%struct.dw_mci*, i32) #1

declare dso_local i32 @dw_mci_idmac_reset(%struct.dw_mci*) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
