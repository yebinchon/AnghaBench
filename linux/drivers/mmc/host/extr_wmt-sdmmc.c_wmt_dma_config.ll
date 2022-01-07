; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_dma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.wmt_mci_priv = type { i64 }

@DMA_IER_INT_EN = common dso_local global i32 0, align 4
@SDDMA_IER = common dso_local global i64 0, align 8
@SDDMA_DESPR = common dso_local global i64 0, align 8
@SDDMA_CCR = common dso_local global i64 0, align 8
@PDMA_WRITE = common dso_local global i64 0, align 8
@DMA_CCR_IF_TO_PERIPHERAL = common dso_local global i32 0, align 4
@DMA_CCR_PERIPHERAL_TO_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32, i64)* @wmt_dma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_dma_config(%struct.mmc_host* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.wmt_mci_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %9)
  store %struct.wmt_mci_priv* %10, %struct.wmt_mci_priv** %7, align 8
  %11 = load i32, i32* @DMA_IER_INT_EN, align 4
  %12 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %13 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SDDMA_IER, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %20 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SDDMA_DESPR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %26 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SDDMA_CCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @PDMA_WRITE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %3
  %35 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %36 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SDDMA_CCR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @DMA_CCR_IF_TO_PERIPHERAL, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %45 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SDDMA_CCR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  br label %66

50:                                               ; preds = %3
  %51 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %52 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SDDMA_CCR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @DMA_CCR_PERIPHERAL_TO_IF, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %7, align 8
  %61 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SDDMA_CCR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %50, %34
  ret void
}

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
