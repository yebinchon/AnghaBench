; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, %struct.dma_chan*, %struct.dma_chan*, i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mmc_data = type { i32, i32, i64, i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_data*, i32)* @mmc_omap_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_release_dma(%struct.mmc_omap_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_omap_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.device* @mmc_dev(i32 %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_DATA_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %22, i32 0, i32 2
  %24 = load %struct.dma_chan*, %struct.dma_chan** %23, align 8
  store %struct.dma_chan* %24, %struct.dma_chan** %9, align 8
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %27, i32 0, i32 1
  %29 = load %struct.dma_chan*, %struct.dma_chan** %28, align 8
  store %struct.dma_chan* %29, %struct.dma_chan** %9, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %32 = icmp ne %struct.dma_chan* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %40 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %39)
  %41 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %45 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.device*, %struct.device** %47, align 8
  store %struct.device* %48, %struct.device** %8, align 8
  br label %49

49:                                               ; preds = %43, %30
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dma_unmap_sg(%struct.device* %50, i32 %53, i32 %56, i32 %57)
  ret void
}

declare dso_local %struct.device* @mmc_dev(i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
