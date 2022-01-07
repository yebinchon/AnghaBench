; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32*, i32 }

@finished = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to prepare a buffer for DMA access\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to prepare DMA memcpy\0A\00", align 1
@atmel_nand_dma_transfer_finished = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to do DMA tx_submit\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Fall back to CPU I/O\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand_controller*, i8*, i32, i64, i32)* @atmel_nand_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_dma_transfer(%struct.atmel_nand_controller* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_nand_controller*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_async_tx_descriptor*, align 8
  %16 = alloca i32, align 4
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @finished, align 4
  %18 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %17)
  %19 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %20 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @dma_map_single(i32 %21, i8* %22, i64 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %27 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @dma_mapping_error(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %34 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %95

37:                                               ; preds = %5
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %13, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %49 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @DMA_CTRL_ACK, align 4
  %55 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %56 = or i32 %54, %55
  %57 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(i32 %50, i32 %51, i32 %52, i64 %53, i32 %56)
  store %struct.dma_async_tx_descriptor* %57, %struct.dma_async_tx_descriptor** %15, align 8
  %58 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %59 = icmp ne %struct.dma_async_tx_descriptor* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %47
  %61 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %62 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %87

65:                                               ; preds = %47
  %66 = load i32, i32* @atmel_nand_dma_transfer_finished, align 4
  %67 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %69, i32 0, i32 0
  store i32* @finished, i32** %70, align 8
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %72 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @dma_submit_error(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %78 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %83 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dma_async_issue_pending(i32 %84)
  %86 = call i32 @wait_for_completion(i32* @finished)
  store i32 0, i32* %6, align 4
  br label %102

87:                                               ; preds = %76, %60
  %88 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %89 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dma_unmap_single(i32 %90, i32 %91, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %32
  %96 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %7, align 8
  %97 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %95, %81
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(i32, i32, i32, i64, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
