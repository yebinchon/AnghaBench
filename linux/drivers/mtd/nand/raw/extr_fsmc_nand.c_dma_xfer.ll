; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsmc_nand_data = type { i32, i32, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i64)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.fsmc_nand_data*, i32 }

@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"device_prep_dma_memcpy error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@dma_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dma_submit_error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"wait_for_completion_timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsmc_nand_data*, i8*, i32, i32)* @dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_xfer(%struct.fsmc_nand_data* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsmc_nand_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca %struct.dma_device*, align 8
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.fsmc_nand_data* %0, %struct.fsmc_nand_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i64, i64* @DMA_CTRL_ACK, align 8
  %21 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %22 = or i64 %20, %21
  store i64 %22, i64* %17, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %28 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %27, i32 0, i32 4
  %29 = load %struct.dma_chan*, %struct.dma_chan** %28, align 8
  store %struct.dma_chan* %29, %struct.dma_chan** %10, align 8
  br label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %36 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %35, i32 0, i32 3
  %37 = load %struct.dma_chan*, %struct.dma_chan** %36, align 8
  store %struct.dma_chan* %37, %struct.dma_chan** %10, align 8
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %135

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %44 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %43, i32 0, i32 0
  %45 = load %struct.dma_device*, %struct.dma_device** %44, align 8
  store %struct.dma_device* %45, %struct.dma_device** %11, align 8
  %46 = load %struct.dma_device*, %struct.dma_device** %11, align 8
  %47 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dma_map_single(i32 %48, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %59 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %13, align 4
  br label %66

61:                                               ; preds = %42
  %62 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %63 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.dma_device*, %struct.dma_device** %11, align 8
  %68 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %67, i32 0, i32 1
  %69 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i32, i64)** %68, align 8
  %70 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %17, align 8
  %75 = call %struct.dma_async_tx_descriptor* %69(%struct.dma_chan* %70, i32 %71, i32 %72, i32 %73, i64 %74)
  store %struct.dma_async_tx_descriptor* %75, %struct.dma_async_tx_descriptor** %12, align 8
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %77 = icmp ne %struct.dma_async_tx_descriptor* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %66
  %79 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %80 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %126

85:                                               ; preds = %66
  %86 = load i32, i32* @dma_complete, align 4
  %87 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %88 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %90 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %90, i32 0, i32 1
  store %struct.fsmc_nand_data* %89, %struct.fsmc_nand_data** %91, align 8
  %92 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %93 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %92, i32 0, i32 0
  %94 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %93, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %96 = call i32 %94(%struct.dma_async_tx_descriptor* %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @dma_submit_error(i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %85
  %102 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %103 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %126

107:                                              ; preds = %85
  %108 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %109 = call i32 @dma_async_issue_pending(%struct.dma_chan* %108)
  %110 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %111 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %110, i32 0, i32 1
  %112 = call i32 @msecs_to_jiffies(i32 3000)
  %113 = call i64 @wait_for_completion_timeout(i32* %111, i32 %112)
  store i64 %113, i64* %19, align 8
  %114 = load i64, i64* %19, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %118 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %117)
  %119 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %120 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %18, align 4
  br label %126

125:                                              ; preds = %107
  store i32 0, i32* %18, align 4
  br label %126

126:                                              ; preds = %125, %116, %101, %78
  %127 = load %struct.dma_device*, %struct.dma_device** %11, align 8
  %128 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @dma_unmap_single(i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %126, %38
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
