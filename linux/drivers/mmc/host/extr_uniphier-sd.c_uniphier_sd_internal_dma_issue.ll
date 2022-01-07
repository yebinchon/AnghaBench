; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_internal_dma_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_internal_dma_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64, i32 }

@TMIO_STAT_DATAEND = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_CTL_START = common dso_local global i32 0, align 4
@UNIPHIER_SD_DMA_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @uniphier_sd_internal_dma_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_internal_dma_issue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %7, %struct.tmio_mmc_host** %3, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %13 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %14 = call i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host* %12, i32 %13)
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %20 = call i32 @uniphier_sd_dma_endisable(%struct.tmio_mmc_host* %19, i32 1)
  %21 = load i32, i32* @UNIPHIER_SD_DMA_CTL_START, align 4
  %22 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UNIPHIER_SD_DMA_CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uniphier_sd_dma_endisable(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
