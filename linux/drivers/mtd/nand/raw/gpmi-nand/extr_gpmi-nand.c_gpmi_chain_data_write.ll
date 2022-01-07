; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_chain_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.gpmi_nand_data = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan = type { i32 }
%struct.gpmi_transfer = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BV_GPMI_CTRL0_COMMAND_MODE__WRITE = common dso_local global i32 0, align 4
@BM_GPMI_CTRL0_WORD_LENGTH = common dso_local global i32 0, align 4
@LOCK_CS_ENABLE = common dso_local global i32 0, align 4
@BV_GPMI_CTRL0_ADDRESS__NAND_DATA = common dso_local global i32 0, align 4
@BM_GPMI_ECCCTRL_ENABLE_ECC = common dso_local global i32 0, align 4
@BV_GPMI_ECCCTRL_ECC_CMD__BCH_ENCODE = common dso_local global i32 0, align 4
@BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE = common dso_local global i32 0, align 4
@BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY = common dso_local global i32 0, align 4
@DMA_TRANS_NONE = common dso_local global i32 0, align 4
@MXS_DMA_CTRL_WAIT4END = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.gpmi_nand_data*, i8*, i32)* @gpmi_chain_data_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @gpmi_chain_data_write(%struct.gpmi_nand_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.gpmi_nand_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca %struct.gpmi_transfer*, align 8
  %11 = alloca [6 x i32], align 16
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %13 = call %struct.dma_chan* @get_dma_chan(%struct.gpmi_nand_data* %12)
  store %struct.dma_chan* %13, %struct.dma_chan** %8, align 8
  %14 = bitcast [6 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %16 = call %struct.gpmi_transfer* @get_next_transfer(%struct.gpmi_nand_data* %15)
  store %struct.gpmi_transfer* %16, %struct.gpmi_transfer** %10, align 8
  %17 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %10, align 8
  %18 = icmp ne %struct.gpmi_transfer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %112

20:                                               ; preds = %3
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %10, align 8
  %23 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %10, align 8
  %28 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @prepare_data_dma(%struct.gpmi_nand_data* %24, i8* %25, i32 %26, %struct.TYPE_5__* %28, i32 %29)
  %31 = load i32, i32* @BV_GPMI_CTRL0_COMMAND_MODE__WRITE, align 4
  %32 = call i32 @BF_GPMI_CTRL0_COMMAND_MODE(i32 %31)
  %33 = load i32, i32* @BM_GPMI_CTRL0_WORD_LENGTH, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %36 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %40 = call i32 @BF_GPMI_CTRL0_CS(i32 %38, %struct.gpmi_nand_data* %39)
  %41 = or i32 %34, %40
  %42 = load i32, i32* @LOCK_CS_ENABLE, align 4
  %43 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %44 = call i32 @BF_GPMI_CTRL0_LOCK_CS(i32 %42, %struct.gpmi_nand_data* %43)
  %45 = or i32 %41, %44
  %46 = load i32, i32* @BV_GPMI_CTRL0_ADDRESS__NAND_DATA, align 4
  %47 = call i32 @BF_GPMI_CTRL0_ADDRESS(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BF_GPMI_CTRL0_XFER_COUNT(i32 %49)
  %51 = or i32 %48, %50
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %54 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %20
  %58 = load i32, i32* @BM_GPMI_ECCCTRL_ENABLE_ECC, align 4
  %59 = load i32, i32* @BV_GPMI_ECCCTRL_ECC_CMD__BCH_ENCODE, align 4
  %60 = call i32 @BF_GPMI_ECCCTRL_ECC_CMD(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* @BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE, align 4
  %63 = load i32, i32* @BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @BF_GPMI_ECCCTRL_BUFFER_MASK(i32 %64)
  %66 = or i32 %61, %65
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %10, align 8
  %71 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  store i32 %73, i32* %74, align 16
  %75 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %76 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %57, %20
  %80 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %83 = call i32 @ARRAY_SIZE(i32* %82)
  %84 = load i32, i32* @DMA_TRANS_NONE, align 4
  %85 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %86 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @MXS_DMA_CTRL_WAIT4END, align 4
  br label %92

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = call %struct.dma_async_tx_descriptor* @mxs_dmaengine_prep_pio(%struct.dma_chan* %80, i32* %81, i32 %83, i32 %84, i32 %93)
  store %struct.dma_async_tx_descriptor* %94, %struct.dma_async_tx_descriptor** %9, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %96 = icmp ne %struct.dma_async_tx_descriptor* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %112

98:                                               ; preds = %92
  %99 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %5, align 8
  %100 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %98
  %104 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %105 = load %struct.gpmi_transfer*, %struct.gpmi_transfer** %10, align 8
  %106 = getelementptr inbounds %struct.gpmi_transfer, %struct.gpmi_transfer* %105, i32 0, i32 0
  %107 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %108 = load i32, i32* @MXS_DMA_CTRL_WAIT4END, align 4
  %109 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %104, %struct.TYPE_5__* %106, i32 1, i32 %107, i32 %108)
  store %struct.dma_async_tx_descriptor* %109, %struct.dma_async_tx_descriptor** %9, align 8
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  store %struct.dma_async_tx_descriptor* %111, %struct.dma_async_tx_descriptor** %4, align 8
  br label %112

112:                                              ; preds = %110, %97, %19
  %113 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  ret %struct.dma_async_tx_descriptor* %113
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
