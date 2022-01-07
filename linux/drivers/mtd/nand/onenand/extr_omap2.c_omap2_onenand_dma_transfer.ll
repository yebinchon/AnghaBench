; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_omap2.c_omap2_onenand_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_omap2.c_omap2_onenand_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap2_onenand = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to prepare DMA memcpy\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@omap2_onenand_dma_complete_func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to do DMA tx_submit\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap2_onenand*, i32, i32, i64)* @omap2_onenand_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_onenand_dma_transfer(%struct.omap2_onenand* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap2_onenand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.omap2_onenand* %0, %struct.omap2_onenand** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %13 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(i32 %14, i32 %15, i32 %16, i64 %17, i32 0)
  store %struct.dma_async_tx_descriptor* %18, %struct.dma_async_tx_descriptor** %10, align 8
  %19 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %20 = icmp ne %struct.dma_async_tx_descriptor* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %23 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %74

29:                                               ; preds = %4
  %30 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %31 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %30, i32 0, i32 1
  %32 = call i32 @reinit_completion(i32* %31)
  %33 = load i32, i32* @omap2_onenand_dma_complete_func, align 4
  %34 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %35 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %37 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %36, i32 0, i32 1
  %38 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %41 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %40, i32 0, i32 0
  %42 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %41, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %44 = call i32 %42(%struct.dma_async_tx_descriptor* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @dma_submit_error(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %29
  %49 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %50 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %74

56:                                               ; preds = %29
  %57 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %58 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_async_issue_pending(i32 %59)
  %61 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %62 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %61, i32 0, i32 1
  %63 = call i32 @msecs_to_jiffies(i32 20)
  %64 = call i32 @wait_for_completion_io_timeout(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %56
  %67 = load %struct.omap2_onenand*, %struct.omap2_onenand** %6, align 8
  %68 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dmaengine_terminate_sync(i32 %69)
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %66, %48, %21
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(i32, i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @wait_for_completion_io_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
