; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_davinci_abort_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_davinci_abort_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i64, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }

@DAVINCI_MMC_DATADIR_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*)* @davinci_abort_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_abort_dma(%struct.mmc_davinci_host* %0) #0 {
  %2 = alloca %struct.mmc_davinci_host*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %2, align 8
  %4 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DAVINCI_MMC_DATADIR_READ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %10, i32 0, i32 2
  %12 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  store %struct.dma_chan* %12, %struct.dma_chan** %3, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %14, i32 0, i32 1
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  store %struct.dma_chan* %16, %struct.dma_chan** %3, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %19 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %18)
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
