; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_edmac_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_edmac_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.dma_async_tx_descriptor = type { i8*, i32 }

@dw_mci_edmac_start_dma.mszs = internal constant [8 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256], align 16
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@FIFOTH = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to config edmac.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't prepare slave sg.\0A\00", align 1
@dw_mci_dmac_complete_dma = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*, i32)* @dw_mci_edmac_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_edmac_start_dma(%struct.dw_mci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  %13 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %14 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  store %struct.scatterlist* %17, %struct.scatterlist** %8, align 8
  %18 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %19 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %24 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %27 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %31 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 6
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %42 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  %43 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %44 = load i32, i32* @FIFOTH, align 4
  %45 = call i32 @mci_readl(%struct.dw_mci* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 28
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_edmac_start_dma.mszs, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %57 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MMC_DATA_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %2
  %65 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  br label %70

67:                                               ; preds = %2
  %68 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %69 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %72 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dmaengine_slave_config(i32 %75, %struct.dma_slave_config* %6)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %81 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %145

86:                                               ; preds = %70
  %87 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %88 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %93 = load i32, i32* %5, align 4
  %94 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %97 = load i32, i32* @DMA_CTRL_ACK, align 4
  %98 = or i32 %96, %97
  %99 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %91, %struct.scatterlist* %92, i32 %93, i32 %95, i32 %98)
  store %struct.dma_async_tx_descriptor* %99, %struct.dma_async_tx_descriptor** %7, align 8
  %100 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %101 = icmp ne %struct.dma_async_tx_descriptor* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %86
  %103 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %104 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %145

109:                                              ; preds = %86
  %110 = load i32, i32* @dw_mci_dmac_complete_dma, align 4
  %111 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %112 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %114 = bitcast %struct.dw_mci* %113 to i8*
  %115 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %116 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %118 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %117)
  %119 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %120 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %119, i32 0, i32 5
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MMC_DATA_WRITE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %109
  %128 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %129 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %128, i32 0, i32 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @mmc_dev(i32 %132)
  %134 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @DMA_TO_DEVICE, align 4
  %137 = call i32 @dma_sync_sg_for_device(i32 %133, %struct.scatterlist* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %127, %109
  %139 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %140 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dma_async_issue_pending(i32 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %102, %79
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_sync_sg_for_device(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
