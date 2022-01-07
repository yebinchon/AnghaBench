; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_transfer_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_transfer_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i64, i32, i32, i32 }
%struct.moxart_host = type { i64, i64, i32, i32, %struct.dma_async_tx_descriptor*, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_async_tx_descriptor = type { %struct.moxart_host*, i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dma_map_sg returned zero length\0A\00", align 1
@moxart_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_data*, %struct.moxart_host*)* @moxart_transfer_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_transfer_dma(%struct.mmc_data* %0, %struct.moxart_host* %1) #0 {
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca %struct.moxart_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  store %struct.mmc_data* %0, %struct.mmc_data** %3, align 8
  store %struct.moxart_host* %1, %struct.moxart_host** %4, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  %10 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %11 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MMC_DATA_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %27 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %26, i32 0, i32 7
  %28 = load %struct.dma_chan*, %struct.dma_chan** %27, align 8
  store %struct.dma_chan* %28, %struct.dma_chan** %9, align 8
  %29 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  store i64 %29, i64* %6, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %32 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %31, i32 0, i32 6
  %33 = load %struct.dma_chan*, %struct.dma_chan** %32, align 8
  store %struct.dma_chan* %33, %struct.dma_chan** %9, align 8
  %34 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %37 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %48 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %47)
  %49 = call i64 @dma_map_sg(i32 %40, i32 %43, i32 %46, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %35
  %53 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %54 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %60 = load i32, i32* @DMA_CTRL_ACK, align 4
  %61 = or i32 %59, %60
  %62 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %53, i32 %56, i64 %57, i64 %58, i32 %61)
  store %struct.dma_async_tx_descriptor* %62, %struct.dma_async_tx_descriptor** %8, align 8
  br label %69

63:                                               ; preds = %35
  %64 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %65 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mmc_dev(i32 %66)
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %52
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %71 = icmp ne %struct.dma_async_tx_descriptor* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %74 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %75 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %74, i32 0, i32 4
  store %struct.dma_async_tx_descriptor* %73, %struct.dma_async_tx_descriptor** %75, align 8
  %76 = load i32, i32* @moxart_dma_complete, align 4
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %80 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %81 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %80, i32 0, i32 0
  store %struct.moxart_host* %79, %struct.moxart_host** %81, align 8
  %82 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %83 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %82)
  %84 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %85 = call i32 @dma_async_issue_pending(%struct.dma_chan* %84)
  br label %86

86:                                               ; preds = %72, %69
  %87 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %88 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %91 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %95 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %94, i32 0, i32 3
  %96 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %97 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @wait_for_completion_interruptible_timeout(i32* %95, i32 %98)
  store i64 %99, i64* %7, align 8
  %100 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %101 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %106 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %109 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %112 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %111)
  %113 = call i32 @dma_unmap_sg(i32 %104, i32 %107, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %86, %17
  ret void
}

declare dso_local i64 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i64, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
