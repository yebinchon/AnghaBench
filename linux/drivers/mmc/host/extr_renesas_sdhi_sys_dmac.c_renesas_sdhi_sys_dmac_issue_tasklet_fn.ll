; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_issue_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_issue_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.dma_chan*, %struct.dma_chan*, %struct.TYPE_2__* }
%struct.dma_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@TMIO_STAT_DATAEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @renesas_sdhi_sys_dmac_issue_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_sys_dmac_issue_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %6, %struct.tmio_mmc_host** %3, align 8
  store %struct.dma_chan* null, %struct.dma_chan** %4, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MMC_DATA_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %24, i32 0, i32 2
  %26 = load %struct.dma_chan*, %struct.dma_chan** %25, align 8
  store %struct.dma_chan* %26, %struct.dma_chan** %4, align 8
  br label %31

27:                                               ; preds = %14
  %28 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %28, i32 0, i32 1
  %30 = load %struct.dma_chan*, %struct.dma_chan** %29, align 8
  store %struct.dma_chan* %30, %struct.dma_chan** %4, align 8
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %37 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %38 = call i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host* %36, i32 %37)
  %39 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %40 = icmp ne %struct.dma_chan* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %43 = call i32 @dma_async_issue_pending(%struct.dma_chan* %42)
  br label %44

44:                                               ; preds = %41, %32
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
