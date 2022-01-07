; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.gpmi_nand_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dma_chan = type { i32 }

@BV_GPMI_CTRL0_COMMAND_MODE__WAIT_FOR_READY = common dso_local global i32 0, align 4
@BM_GPMI_CTRL0_WORD_LENGTH = common dso_local global i32 0, align 4
@LOCK_CS_ENABLE = common dso_local global i32 0, align 4
@BV_GPMI_CTRL0_ADDRESS__NAND_DATA = common dso_local global i32 0, align 4
@DMA_TRANS_NONE = common dso_local global i32 0, align 4
@MXS_DMA_CTRL_WAIT4END = common dso_local global i32 0, align 4
@MXS_DMA_CTRL_WAIT4RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.gpmi_nand_data*)* @gpmi_chain_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @gpmi_chain_wait_ready(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca %struct.gpmi_nand_data*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %2, align 8
  %5 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %6 = call %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data* %5)
  store %struct.dma_chan* %6, %struct.dma_chan** %3, align 8
  %7 = load i32, i32* @BV_GPMI_CTRL0_COMMAND_MODE__WAIT_FOR_READY, align 4
  %8 = call i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32 %7)
  %9 = load i32, i32* @BM_GPMI_CTRL0_WORD_LENGTH, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %12 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %16 = call i32 @BF_GPMI_CTRL0_CS(i32 %14, %struct.gpmi_nand_data* %15)
  %17 = or i32 %10, %16
  %18 = load i32, i32* @LOCK_CS_ENABLE, align 4
  %19 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %20 = call i32 @BF_GPMI_CTRL0_LOCK_CS(i32 %18, %struct.gpmi_nand_data* %19)
  %21 = or i32 %17, %20
  %22 = load i32, i32* @BV_GPMI_CTRL0_ADDRESS__NAND_DATA, align 4
  %23 = call i32 @BF_GPMI_CTRL0_ADDRESS(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @BF_GPMI_CTRL0_XFER_COUNT(i32 0)
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %31 = load i32, i32* @DMA_TRANS_NONE, align 4
  %32 = load i32, i32* @MXS_DMA_CTRL_WAIT4END, align 4
  %33 = load i32, i32* @MXS_DMA_CTRL_WAIT4RDY, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan* %29, i32* %30, i32 2, i32 %31, i32 %34)
  ret %struct.dma_async_tx_descriptor* %35
}

declare dso_local %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_CS(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_LOCK_CS(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_ADDRESS(i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_XFER_COUNT(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
