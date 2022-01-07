; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32 }
%struct.mmc_data = type { i32 }

@REG_GCTRL = common dso_local global i32 0, align 4
@SDXC_DMA_ENABLE_BIT = common dso_local global i32 0, align 4
@SDXC_DMA_RESET = common dso_local global i32 0, align 4
@REG_DMAC = common dso_local global i32 0, align 4
@SDXC_IDMAC_SOFT_RESET = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@REG_IDIE = common dso_local global i32 0, align 4
@SDXC_IDMAC_RECEIVE_INTERRUPT = common dso_local global i32 0, align 4
@SDXC_IDMAC_FIX_BURST = common dso_local global i32 0, align 4
@SDXC_IDMAC_IDMA_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_mmc_host*, %struct.mmc_data*)* @sunxi_mmc_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_start_dma(%struct.sunxi_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %7 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %8 = call i32 @sunxi_mmc_init_idma_des(%struct.sunxi_mmc_host* %6, %struct.mmc_data* %7)
  %9 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %10 = load i32, i32* @REG_GCTRL, align 4
  %11 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @SDXC_DMA_ENABLE_BIT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %16 = load i32, i32* @REG_GCTRL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @SDXC_DMA_RESET, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %23 = load i32, i32* @REG_GCTRL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %22, i32 %23, i32 %24)
  %26 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %27 = load i32, i32* @REG_DMAC, align 4
  %28 = load i32, i32* @SDXC_IDMAC_SOFT_RESET, align 4
  %29 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %26, i32 %27, i32 %28)
  %30 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MMC_DATA_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %38 = load i32, i32* @REG_IDIE, align 4
  %39 = load i32, i32* @SDXC_IDMAC_RECEIVE_INTERRUPT, align 4
  %40 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %43 = load i32, i32* @REG_DMAC, align 4
  %44 = load i32, i32* @SDXC_IDMAC_FIX_BURST, align 4
  %45 = load i32, i32* @SDXC_IDMAC_IDMA_ON, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %42, i32 %43, i32 %46)
  ret void
}

declare dso_local i32 @sunxi_mmc_init_idma_des(%struct.sunxi_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
