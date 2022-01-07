; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.gpmi_nand_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dma_chan = type { i32 }
%struct.gpmi_transfer = type { i32, i32, i32* }

@BV_GPMI_CTRL0_COMMAND_MODE__WRITE = common dso_local global i32 0, align 4
@BM_GPMI_CTRL0_WORD_LENGTH = common dso_local global i32 0, align 4
@LOCK_CS_ENABLE = common dso_local global i32 0, align 4
@BV_GPMI_CTRL0_ADDRESS__NAND_CLE = common dso_local global i32 0, align 4
@BM_GPMI_CTRL0_ADDRESS_INCREMENT = common dso_local global i32 0, align 4
@DMA_TRANS_NONE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@MXS_DMA_CTRL_WAIT4END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.gpmi_nand_data*, i32, i32*, i32)* @gpmi_chain_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @gpmi_chain_command(%struct.gpmi_nand_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.gpmi_nand_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca %struct.dma_async_tx_descriptor*, align 8
  %12 = alloca %struct.gpmi_transfer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %16 = call %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data* %15)
  store %struct.dma_chan* %16, %struct.dma_chan** %10, align 8
  %17 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %18 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @BV_GPMI_CTRL0_COMMAND_MODE__WRITE, align 4
  %22 = call i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32 %21)
  %23 = load i32, i32* @BM_GPMI_CTRL0_WORD_LENGTH, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %27 = call i32 @BF_GPMI_CTRL0_CS(i32 %25, %struct.gpmi_nand_data* %26)
  %28 = or i32 %24, %27
  %29 = load i32, i32* @LOCK_CS_ENABLE, align 4
  %30 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %31 = call i32 @BF_GPMI_CTRL0_LOCK_CS(i32 %29, %struct.gpmi_nand_data* %30)
  %32 = or i32 %28, %31
  %33 = load i32, i32* @BV_GPMI_CTRL0_ADDRESS__NAND_CLE, align 4
  %34 = call i32 @BF_GPMI_CTRL0_ADDRESS(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @BM_GPMI_CTRL0_ADDRESS_INCREMENT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @BF_GPMI_CTRL0_XFER_COUNT(i32 %39)
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %44, align 4
  %45 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = load i32, i32* @DMA_TRANS_NONE, align 4
  %50 = call %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan* %45, i32* %46, i32 %48, i32 %49, i32 0)
  store %struct.dma_async_tx_descriptor* %50, %struct.dma_async_tx_descriptor** %11, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %52 = icmp ne %struct.dma_async_tx_descriptor* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %5, align 8
  br label %102

54:                                               ; preds = %4
  %55 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %56 = call %struct.gpmi_transfer* @get_next_transfer(%struct.gpmi_nand_data* %55)
  store %struct.gpmi_transfer* %56, %struct.gpmi_transfer** %12, align 8
  %57 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %58 = icmp ne %struct.gpmi_transfer* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %5, align 8
  br label %102

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %63 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %70 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %60
  %77 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %78 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %77, i32 0, i32 0
  %79 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %80 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @sg_init_one(i32* %78, i32* %81, i32 %83)
  %85 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %86 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %89 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %88, i32 0, i32 0
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_map_sg(i32 %87, i32* %89, i32 1, i32 %90)
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %94 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %96 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %97 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %96, i32 0, i32 0
  %98 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %99 = load i32, i32* @MXS_DMA_CTRL_WAIT4END, align 4
  %100 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %95, i32* %97, i32 1, i32 %98, i32 %99)
  store %struct.dma_async_tx_descriptor* %100, %struct.dma_async_tx_descriptor** %11, align 8
  %101 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  store %struct.dma_async_tx_descriptor* %101, %struct.dma_async_tx_descriptor** %5, align 8
  br label %102

102:                                              ; preds = %76, %59, %53
  %103 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  ret %struct.dma_async_tx_descriptor* %103
}

declare dso_local %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_CS(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_LOCK_CS(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_ADDRESS(i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_XFER_COUNT(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.gpmi_transfer* @get_next_transfer(%struct.gpmi_nand_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
