; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_xmit_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_xmit_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nand_chip = type { i32 }
%struct.lpc32xx_nand_host = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dma_async_tx_descriptor = type { i32*, i32 }

@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to map sg list\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to prepare slave sg\0A\00", align 1
@lpc32xx_dma_complete_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i8*, i32, i32)* @lpc32xx_xmit_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_xmit_dma(%struct.mtd_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.lpc32xx_nand_host*, align 8
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %15)
  store %struct.nand_chip* %16, %struct.nand_chip** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %18 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %17)
  store %struct.lpc32xx_nand_host* %18, %struct.lpc32xx_nand_host** %11, align 8
  %19 = load i32, i32* @DMA_CTRL_ACK, align 4
  %20 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %23 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %22, i32 0, i32 0
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @sg_init_one(i32* %23, i8* %24, i32 %25)
  %27 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %35 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %34, i32 0, i32 0
  %36 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %37 = call i32 @dma_map_sg(i32 %33, i32* %35, i32 1, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %4
  %41 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %111

48:                                               ; preds = %4
  %49 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %53 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.TYPE_7__* %51, i32* %53, i32 1, i32 %54, i32 %55)
  store %struct.dma_async_tx_descriptor* %56, %struct.dma_async_tx_descriptor** %12, align 8
  %57 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %58 = icmp ne %struct.dma_async_tx_descriptor* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %48
  %60 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %97

65:                                               ; preds = %48
  %66 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %67 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %66, i32 0, i32 2
  %68 = call i32 @init_completion(i32* %67)
  %69 = load i32, i32* @lpc32xx_dma_complete_func, align 4
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %71 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %73 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %72, i32 0, i32 2
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %77 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %76)
  %78 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %79 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @dma_async_issue_pending(%struct.TYPE_7__* %80)
  %82 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %83 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %82, i32 0, i32 2
  %84 = call i32 @msecs_to_jiffies(i32 1000)
  %85 = call i32 @wait_for_completion_timeout(i32* %83, i32 %84)
  %86 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %87 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %94 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %93, i32 0, i32 0
  %95 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %96 = call i32 @dma_unmap_sg(i32 %92, i32* %94, i32 1, i32 %95)
  store i32 0, i32* %5, align 4
  br label %111

97:                                               ; preds = %59
  %98 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %99 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %106 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %105, i32 0, i32 0
  %107 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %108 = call i32 @dma_unmap_sg(i32 %104, i32* %106, i32 1, i32 %107)
  %109 = load i32, i32* @ENXIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %97, %65, %40
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @sg_init_one(i32*, i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
