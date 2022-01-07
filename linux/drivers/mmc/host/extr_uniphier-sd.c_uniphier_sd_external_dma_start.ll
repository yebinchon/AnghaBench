; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_external_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_external_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32, i32, i32 }
%struct.mmc_data = type { i32 }
%struct.uniphier_sd_priv = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.tmio_mmc_host*, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@uniphier_sd_external_dma_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.mmc_data*)* @uniphier_sd_external_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_external_dma_start(%struct.tmio_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.uniphier_sd_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %11 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %10)
  store %struct.uniphier_sd_priv* %11, %struct.uniphier_sd_priv** %5, align 8
  %12 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %13 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MMC_DATA_READ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %27 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %17
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_dev(i32 %37)
  %39 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %46 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_map_sg(i32 %38, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %96

52:                                               ; preds = %34
  %53 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %54 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @DMA_CTRL_ACK, align 4
  %62 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %55, i32 %58, i32 %59, i32 %60, i32 %61)
  store %struct.dma_async_tx_descriptor* %62, %struct.dma_async_tx_descriptor** %7, align 8
  %63 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %64 = icmp ne %struct.dma_async_tx_descriptor* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  br label %81

66:                                               ; preds = %52
  %67 = load i32, i32* @uniphier_sd_external_dma_callback, align 4
  %68 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %69 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %72 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %71, i32 0, i32 0
  store %struct.tmio_mmc_host* %70, %struct.tmio_mmc_host** %72, align 8
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %74 = call i64 @dmaengine_submit(%struct.dma_async_tx_descriptor* %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %81

78:                                               ; preds = %66
  %79 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %80 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %99

81:                                               ; preds = %77, %65
  %82 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mmc_dev(i32 %84)
  %86 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %90 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %93 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dma_unmap_sg(i32 %85, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %81, %51, %16
  %97 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %98 = call i32 @uniphier_sd_dma_endisable(%struct.tmio_mmc_host* %97, i32 0)
  br label %99

99:                                               ; preds = %96, %78
  ret void
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i64 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @uniphier_sd_dma_endisable(%struct.tmio_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
