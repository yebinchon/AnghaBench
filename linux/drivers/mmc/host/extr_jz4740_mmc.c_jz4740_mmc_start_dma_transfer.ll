; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_start_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_start_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_data = type { i32, i64, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_slave_config = type { i64, i64, i64, i32, i32, i32, i32 }

@JZ4740_MMC_FIFO_HALF_SIZE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@JZ_REG_MMC_TXFIFO = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@JZ_REG_MMC_RXFIFO = common dso_local global i64 0, align 8
@COOKIE_MAPPED = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate DMA %s descriptor\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_mmc_host*, %struct.mmc_data*)* @jz4740_mmc_start_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_mmc_start_dma_transfer(%struct.jz4740_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4740_mmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_slave_config, align 8
  %9 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %10 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %12 = call %struct.dma_chan* @jz4740_mmc_get_dma_chan(%struct.jz4740_mmc_host* %10, %struct.mmc_data* %11)
  store %struct.dma_chan* %12, %struct.dma_chan** %6, align 8
  %13 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  %17 = load i32, i32* @JZ4740_MMC_FIFO_HALF_SIZE, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 4
  %19 = load i32, i32* @JZ4740_MMC_FIFO_HALF_SIZE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 5
  %21 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 6
  %23 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MMC_DATA_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %32 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %34 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @JZ_REG_MMC_TXFIFO, align 8
  %39 = add nsw i64 %37, %38
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  br label %52

41:                                               ; preds = %2
  %42 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %43 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @JZ_REG_MMC_RXFIFO, align 8
  %50 = add nsw i64 %48, %49
  %51 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %41, %30
  %53 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %54 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %55 = load i64, i64* @COOKIE_MAPPED, align 8
  %56 = call i32 @jz4740_mmc_prepare_dma_data(%struct.jz4740_mmc_host* %53, %struct.mmc_data* %54, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %107

61:                                               ; preds = %52
  %62 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %63 = call i32 @dmaengine_slave_config(%struct.dma_chan* %62, %struct.dma_slave_config* %8)
  %64 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %65 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %66 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %72 = load i32, i32* @DMA_CTRL_ACK, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %64, i32 %67, i32 %68, i64 %70, i32 %73)
  store %struct.dma_async_tx_descriptor* %74, %struct.dma_async_tx_descriptor** %7, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %76 = icmp ne %struct.dma_async_tx_descriptor* %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %61
  %78 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %79 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @mmc_dev(i32 %80)
  %82 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %88 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %87)
  br label %94

89:                                               ; preds = %61
  %90 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %91 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %90)
  %92 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %93 = call i32 @dma_async_issue_pending(%struct.dma_chan* %92)
  store i32 0, i32* %3, align 4
  br label %107

94:                                               ; preds = %77
  %95 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @COOKIE_MAPPED, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %4, align 8
  %102 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %103 = call i32 @jz4740_mmc_dma_unmap(%struct.jz4740_mmc_host* %101, %struct.mmc_data* %102)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %89, %59
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.dma_chan* @jz4740_mmc_get_dma_chan(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @jz4740_mmc_prepare_dma_data(%struct.jz4740_mmc_host*, %struct.mmc_data*, i64) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @jz4740_mmc_dma_unmap(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
