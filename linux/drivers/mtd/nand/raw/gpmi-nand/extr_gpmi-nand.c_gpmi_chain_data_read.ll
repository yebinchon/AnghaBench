; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.gpmi_nand_data = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan = type { i32 }
%struct.gpmi_transfer = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BV_GPMI_CTRL0_COMMAND_MODE__READ = common dso_local global i32 0, align 4
@BM_GPMI_CTRL0_WORD_LENGTH = common dso_local global i32 0, align 4
@LOCK_CS_ENABLE = common dso_local global i32 0, align 4
@BV_GPMI_CTRL0_ADDRESS__NAND_DATA = common dso_local global i32 0, align 4
@BM_GPMI_ECCCTRL_ENABLE_ECC = common dso_local global i32 0, align 4
@BV_GPMI_ECCCTRL_ECC_CMD__BCH_DECODE = common dso_local global i32 0, align 4
@BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE = common dso_local global i32 0, align 4
@BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY = common dso_local global i32 0, align 4
@DMA_TRANS_NONE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@MXS_DMA_CTRL_WAIT4END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.gpmi_nand_data*, i8*, i32, i32*)* @gpmi_chain_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @gpmi_chain_data_read(%struct.gpmi_nand_data* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.gpmi_nand_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca %struct.dma_chan*, align 8
  %12 = alloca %struct.gpmi_transfer*, align 8
  %13 = alloca [6 x i32], align 16
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %15 = call %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data* %14)
  store %struct.dma_chan* %15, %struct.dma_chan** %11, align 8
  %16 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %18 = call %struct.gpmi_transfer* @get_next_transfer(%struct.gpmi_nand_data* %17)
  store %struct.gpmi_transfer* %18, %struct.gpmi_transfer** %12, align 8
  %19 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %20 = icmp ne %struct.gpmi_transfer* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %5, align 8
  br label %106

22:                                               ; preds = %4
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %25 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %30 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %29, i32 0, i32 0
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = call i32 @prepare_data_dma(%struct.gpmi_nand_data* %26, i8* %27, i32 %28, %struct.TYPE_5__* %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @BV_GPMI_CTRL0_COMMAND_MODE__READ, align 4
  %35 = call i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32 %34)
  %36 = load i32, i32* @BM_GPMI_CTRL0_WORD_LENGTH, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %39 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %43 = call i32 @BF_GPMI_CTRL0_CS(i32 %41, %struct.gpmi_nand_data* %42)
  %44 = or i32 %37, %43
  %45 = load i32, i32* @LOCK_CS_ENABLE, align 4
  %46 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %47 = call i32 @BF_GPMI_CTRL0_LOCK_CS(i32 %45, %struct.gpmi_nand_data* %46)
  %48 = or i32 %44, %47
  %49 = load i32, i32* @BV_GPMI_CTRL0_ADDRESS__NAND_DATA, align 4
  %50 = call i32 @BF_GPMI_CTRL0_ADDRESS(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @BF_GPMI_CTRL0_XFER_COUNT(i32 %52)
  %54 = or i32 %51, %53
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %54, i32* %55, align 16
  %56 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %57 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %22
  %61 = load i32, i32* @BM_GPMI_ECCCTRL_ENABLE_ECC, align 4
  %62 = load i32, i32* @BV_GPMI_ECCCTRL_ECC_CMD__BCH_DECODE, align 4
  %63 = call i32 @BF_GPMI_ECCCTRL_ECC_CMD(i32 %62)
  %64 = or i32 %61, %63
  %65 = load i32, i32* @BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE, align 4
  %66 = load i32, i32* @BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @BF_GPMI_ECCCTRL_BUFFER_MASK(i32 %67)
  %69 = or i32 %64, %68
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %74 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %76, i32* %77, align 16
  %78 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %79 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %60, %22
  %83 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = load i32, i32* @DMA_TRANS_NONE, align 4
  %88 = call %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan* %83, i32* %84, i32 %86, i32 %87, i32 0)
  store %struct.dma_async_tx_descriptor* %88, %struct.dma_async_tx_descriptor** %10, align 8
  %89 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %90 = icmp ne %struct.dma_async_tx_descriptor* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %5, align 8
  br label %106

92:                                               ; preds = %82
  %93 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %6, align 8
  %94 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %99 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %12, align 8
  %100 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %99, i32 0, i32 0
  %101 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %102 = load i32, i32* @MXS_DMA_CTRL_WAIT4END, align 4
  %103 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %98, %struct.TYPE_5__* %100, i32 1, i32 %101, i32 %102)
  store %struct.dma_async_tx_descriptor* %103, %struct.dma_async_tx_descriptor** %10, align 8
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  store %struct.dma_async_tx_descriptor* %105, %struct.dma_async_tx_descriptor** %5, align 8
  br label %106

106:                                              ; preds = %104, %91, %21
  %107 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  ret %struct.dma_async_tx_descriptor* %107
}

declare dso_local %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.gpmi_transfer* @get_next_transfer(%struct.gpmi_nand_data*) #1

declare dso_local i32 @prepare_data_dma(%struct.gpmi_nand_data*, i8*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_CS(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_LOCK_CS(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_GPMI_CTRL0_ADDRESS(i32) #1

declare dso_local i32 @BF_GPMI_CTRL0_XFER_COUNT(i32) #1

declare dso_local i32 @BF_GPMI_ECCCTRL_ECC_CMD(i32) #1

declare dso_local i32 @BF_GPMI_ECCCTRL_BUFFER_MASK(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
