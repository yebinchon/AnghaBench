; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_prep_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_prep_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { %struct.mxs_mmc_host*, i32 }
%struct.mxs_mmc_host = type { i32, %struct.mmc_data*, %struct.mxs_ssp }
%struct.mmc_data = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.mxs_ssp = type { i32, i32, i32, i64 }

@SSP_PIO_NUM = common dso_local global i32 0, align 4
@mxs_mmc_dma_irq_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.mxs_mmc_host*, i64)* @mxs_mmc_prep_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mxs_mmc_prep_dma(%struct.mxs_mmc_host* %0, i64 %1) #0 {
  %3 = alloca %struct.mxs_mmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mxs_ssp*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  store %struct.mxs_mmc_host* %0, %struct.mxs_mmc_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %10, i32 0, i32 2
  store %struct.mxs_ssp* %11, %struct.mxs_ssp** %5, align 8
  %12 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %12, i32 0, i32 1
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %7, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %16 = icmp ne %struct.mmc_data* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mmc_dev(i32 %20)
  %22 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 1
  %24 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %25 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %29 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_map_sg(i32 %21, %struct.scatterlist* %24, i32 %27, i32 %30)
  %32 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %33 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %32, i32 0, i32 1
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  store %struct.scatterlist* %34, %struct.scatterlist** %8, align 8
  %35 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %40 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.scatterlist*
  store %struct.scatterlist* %42, %struct.scatterlist** %8, align 8
  %43 = load i32, i32* @SSP_PIO_NUM, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %17
  %45 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %46 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %51 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %4, align 8
  %54 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %47, %struct.scatterlist* %48, i32 %49, i32 %52, i64 %53)
  store %struct.dma_async_tx_descriptor* %54, %struct.dma_async_tx_descriptor** %6, align 8
  %55 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %56 = icmp ne %struct.dma_async_tx_descriptor* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load i32, i32* @mxs_mmc_dma_irq_callback, align 4
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %63 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %62, i32 0, i32 0
  store %struct.mxs_mmc_host* %61, %struct.mxs_mmc_host** %63, align 8
  br label %83

64:                                               ; preds = %44
  %65 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %66 = icmp ne %struct.mmc_data* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mmc_dev(i32 %70)
  %72 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 1
  %74 = load %struct.scatterlist*, %struct.scatterlist** %73, align 8
  %75 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %79 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dma_unmap_sg(i32 %71, %struct.scatterlist* %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %67, %64
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %84
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
