; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_direct_read_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_direct_read_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.cqspi_flash_pdata* }
%struct.cqspi_flash_pdata = type { %struct.cqspi_st* }
%struct.cqspi_st = type { i32, i32, i64, i64 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.cqspi_st*, i32 }

@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dma mapping failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"device_prep_dma_memcpy error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@cqspi_rx_dma_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"dma_submit_error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DMA wait_for_completion_timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32*, i64, i64)* @cqspi_direct_read_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_direct_read_execute(%struct.spi_nor* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cqspi_flash_pdata*, align 8
  %11 = alloca %struct.cqspi_st*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_async_tx_descriptor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %19 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %18, i32 0, i32 1
  %20 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %19, align 8
  store %struct.cqspi_flash_pdata* %20, %struct.cqspi_flash_pdata** %10, align 8
  %21 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %10, align 8
  %22 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %21, i32 0, i32 0
  %23 = load %struct.cqspi_st*, %struct.cqspi_st** %22, align 8
  store %struct.cqspi_st* %23, %struct.cqspi_st** %11, align 8
  %24 = load i32, i32* @DMA_CTRL_ACK, align 4
  %25 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %28 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %32 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %33 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @virt_addr_valid(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36, %4
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %43 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy_fromio(i32* %41, i64 %46, i64 %47)
  store i32 0, i32* %5, align 4
  br label %147

49:                                               ; preds = %36
  %50 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %51 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i64 @dma_map_single(i32 %52, i32* %53, i64 %54, i32 %55)
  store i64 %56, i64* %17, align 8
  %57 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %58 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i64 @dma_mapping_error(i32 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %65 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %147

70:                                               ; preds = %49
  %71 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %72 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(i32 %73, i64 %74, i64 %75, i64 %76, i32 %77)
  store %struct.dma_async_tx_descriptor* %78, %struct.dma_async_tx_descriptor** %15, align 8
  %79 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %80 = icmp ne %struct.dma_async_tx_descriptor* %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %70
  %82 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %83 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %138

88:                                               ; preds = %70
  %89 = load i32, i32* @cqspi_rx_dma_callback, align 4
  %90 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %93 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %94 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %93, i32 0, i32 1
  store %struct.cqspi_st* %92, %struct.cqspi_st** %94, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %96 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %95, i32 0, i32 0
  %97 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %96, align 8
  %98 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %99 = call i32 %97(%struct.dma_async_tx_descriptor* %98)
  store i32 %99, i32* %16, align 4
  %100 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %101 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %100, i32 0, i32 1
  %102 = call i32 @reinit_completion(i32* %101)
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @dma_submit_error(i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %88
  %108 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %109 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %14, align 4
  br label %138

115:                                              ; preds = %88
  %116 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %117 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dma_async_issue_pending(i32 %118)
  %120 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %121 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %120, i32 0, i32 1
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @msecs_to_jiffies(i64 %122)
  %124 = call i32 @wait_for_completion_timeout(i32* %121, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %115
  %127 = load %struct.cqspi_st*, %struct.cqspi_st** %11, align 8
  %128 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dmaengine_terminate_sync(i32 %129)
  %131 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %132 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @ETIMEDOUT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %14, align 4
  br label %138

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %137, %126, %107, %81
  %139 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %140 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %145 = call i32 @dma_unmap_single(i32 %141, i64 %142, i64 %143, i32 %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %138, %63, %40
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @virt_addr_valid(i32*) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i64) #1

declare dso_local i64 @dma_map_single(i32, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(i32, i64, i64, i64, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
