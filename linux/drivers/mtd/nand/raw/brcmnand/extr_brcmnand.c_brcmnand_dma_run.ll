; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_dma_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_dma_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32, i32, i32 }

@FLASH_DMA_FIRST_DESC = common dso_local global i32 0, align 4
@FLASH_DMA_FIRST_DESC_EXT = common dso_local global i32 0, align 4
@FLASH_DMA_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"timeout waiting for DMA; status %#x, error status %#x\0A\00", align 1
@FLASH_DMA_STATUS = common dso_local global i32 0, align 4
@FLASH_DMA_ERROR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmnand_host*, i32)* @brcmnand_dma_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_dma_run(%struct.brcmnand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmnand_controller*, align 8
  %6 = alloca i64, align 8
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %8 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %7, i32 0, i32 0
  %9 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %8, align 8
  store %struct.brcmnand_controller* %9, %struct.brcmnand_controller** %5, align 8
  %10 = call i64 @msecs_to_jiffies(i32 100)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %12 = load i32, i32* @FLASH_DMA_FIRST_DESC, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @lower_32_bits(i32 %13)
  %15 = call i32 @flash_dma_writel(%struct.brcmnand_controller* %11, i32 %12, i32 %14)
  %16 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %17 = load i32, i32* @FLASH_DMA_FIRST_DESC, align 4
  %18 = call i32 @flash_dma_readl(%struct.brcmnand_controller* %16, i32 %17)
  %19 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %20 = load i32, i32* @FLASH_DMA_FIRST_DESC_EXT, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @upper_32_bits(i32 %21)
  %23 = call i32 @flash_dma_writel(%struct.brcmnand_controller* %19, i32 %20, i32 %22)
  %24 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %25 = load i32, i32* @FLASH_DMA_FIRST_DESC_EXT, align 4
  %26 = call i32 @flash_dma_readl(%struct.brcmnand_controller* %24, i32 %25)
  %27 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %28 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = call i32 (...) @mb()
  %30 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %31 = load i32, i32* @FLASH_DMA_CTRL, align 4
  %32 = call i32 @flash_dma_writel(%struct.brcmnand_controller* %30, i32 %31, i32 3)
  %33 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %34 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %33, i32 0, i32 2
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @wait_for_completion_timeout(i32* %34, i64 %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %40 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %43 = load i32, i32* @FLASH_DMA_STATUS, align 4
  %44 = call i32 @flash_dma_readl(%struct.brcmnand_controller* %42, i32 %43)
  %45 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %46 = load i32, i32* @FLASH_DMA_ERROR_STATUS, align 4
  %47 = call i32 @flash_dma_readl(%struct.brcmnand_controller* %45, i32 %46)
  %48 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %2
  %50 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %51 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %53 = load i32, i32* @FLASH_DMA_CTRL, align 4
  %54 = call i32 @flash_dma_writel(%struct.brcmnand_controller* %52, i32 %53, i32 0)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @flash_dma_writel(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @flash_dma_readl(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
