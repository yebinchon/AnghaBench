; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_send_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_send_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i64, i32, i32, %struct.dma_chan*, %struct.TYPE_2__*, %struct.dma_chan* }
%struct.TYPE_2__ = type { i64 }
%struct.dma_chan = type { i32 }
%struct.mmc_data = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i32, i64 }

@DAVINCI_MMC_DATADIR_WRITE = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@rw_threshold = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DAVINCI_MMCDXR = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate DMA TX descriptor\00", align 1
@DAVINCI_MMCDRR = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate DMA RX descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_davinci_host*, %struct.mmc_data*)* @mmc_davinci_send_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_davinci_send_dma_request(%struct.mmc_davinci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_slave_config, align 8
  %9 = alloca %struct.dma_slave_config, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DAVINCI_MMC_DATADIR_WRITE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  %17 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 1
  %19 = load i32, i32* @rw_threshold, align 4
  %20 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 5
  %26 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 6
  %28 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DAVINCI_MMCDXR, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %27, align 8
  %35 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %35, i32 0, i32 5
  %37 = load %struct.dma_chan*, %struct.dma_chan** %36, align 8
  store %struct.dma_chan* %37, %struct.dma_chan** %5, align 8
  %38 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %38, i32 0, i32 5
  %40 = load %struct.dma_chan*, %struct.dma_chan** %39, align 8
  %41 = call i32 @dmaengine_slave_config(%struct.dma_chan* %40, %struct.dma_slave_config* %8)
  %42 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %42, i32 0, i32 5
  %44 = load %struct.dma_chan*, %struct.dma_chan** %43, align 8
  %45 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %52 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %53 = load i32, i32* @DMA_CTRL_ACK, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %44, i32 %47, i32 %50, i32 %51, i32 %54)
  store %struct.dma_async_tx_descriptor* %55, %struct.dma_async_tx_descriptor** %6, align 8
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %57 = icmp ne %struct.dma_async_tx_descriptor* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %15
  %59 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mmc_dev(i32 %61)
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %120

64:                                               ; preds = %15
  br label %115

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 2
  %69 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %69, i32* %68, align 8
  %70 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 3
  %71 = load i32, i32* @rw_threshold, align 4
  %72 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %70, align 4
  %74 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 4
  %75 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DAVINCI_MMCDRR, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* %74, align 8
  %82 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 5
  %83 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %83, i32* %82, align 8
  %84 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %86 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %85, i32 0, i32 3
  %87 = load %struct.dma_chan*, %struct.dma_chan** %86, align 8
  store %struct.dma_chan* %87, %struct.dma_chan** %5, align 8
  %88 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %89 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %88, i32 0, i32 3
  %90 = load %struct.dma_chan*, %struct.dma_chan** %89, align 8
  %91 = call i32 @dmaengine_slave_config(%struct.dma_chan* %90, %struct.dma_slave_config* %9)
  %92 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %93 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %92, i32 0, i32 3
  %94 = load %struct.dma_chan*, %struct.dma_chan** %93, align 8
  %95 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %102 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %103 = load i32, i32* @DMA_CTRL_ACK, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %94, i32 %97, i32 %100, i32 %101, i32 %104)
  store %struct.dma_async_tx_descriptor* %105, %struct.dma_async_tx_descriptor** %6, align 8
  %106 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %107 = icmp ne %struct.dma_async_tx_descriptor* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %65
  %109 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %110 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mmc_dev(i32 %111)
  %113 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %120

114:                                              ; preds = %65
  br label %115

115:                                              ; preds = %114, %64
  %116 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %117 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %116)
  %118 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %119 = call i32 @dma_async_issue_pending(%struct.dma_chan* %118)
  br label %120

120:                                              ; preds = %115, %108, %58
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
