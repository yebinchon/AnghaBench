; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_setup_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_setup_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i64 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.omap_hsmmc_host*, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i64 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@OMAP_HSMMC_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"prep_slave_sg() failed\0A\00", align 1
@omap_hsmmc_dma_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, %struct.mmc_request*)* @omap_hsmmc_setup_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_setup_dma_transfer(%struct.omap_hsmmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_data*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca %struct.dma_slave_config, align 8
  %12 = alloca %struct.scatterlist*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 0
  %15 = load %struct.mmc_data*, %struct.mmc_data** %14, align 8
  store %struct.mmc_data* %15, %struct.mmc_data** %9, align 8
  %16 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  %17 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 4
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 1
  %22 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 2
  %27 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 3
  %29 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 4
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OMAP_HSMMC_DATA, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %30, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 5
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OMAP_HSMMC_DATA, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %36, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %67, %2
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 3
  %51 = load %struct.scatterlist*, %struct.scatterlist** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i64 %53
  store %struct.scatterlist* %54, %struct.scatterlist** %12, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %56 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = srem i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %147

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %42

70:                                               ; preds = %42
  %71 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %72 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = srem i32 %73, 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %147

79:                                               ; preds = %70
  %80 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %81 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %87 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %88 = call %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host* %86, %struct.mmc_data* %87)
  store %struct.dma_chan* %88, %struct.dma_chan** %10, align 8
  %89 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %90 = call i32 @dmaengine_slave_config(%struct.dma_chan* %89, %struct.dma_slave_config* %11)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %147

95:                                               ; preds = %79
  %96 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %97 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %98 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %99 = call i32 @omap_hsmmc_pre_dma_transfer(%struct.omap_hsmmc_host* %96, %struct.mmc_data* %97, i32* null, %struct.dma_chan* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %147

104:                                              ; preds = %95
  %105 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %106 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 3
  %108 = load %struct.scatterlist*, %struct.scatterlist** %107, align 8
  %109 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %110 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %113 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MMC_DATA_WRITE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %122

120:                                              ; preds = %104
  %121 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %125 = load i32, i32* @DMA_CTRL_ACK, align 4
  %126 = or i32 %124, %125
  %127 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %105, %struct.scatterlist* %108, i32 %111, i32 %123, i32 %126)
  store %struct.dma_async_tx_descriptor* %127, %struct.dma_async_tx_descriptor** %6, align 8
  %128 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %129 = icmp ne %struct.dma_async_tx_descriptor* %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %122
  %131 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %132 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mmc_dev(i32 %133)
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %147

136:                                              ; preds = %122
  %137 = load i32, i32* @omap_hsmmc_dma_callback, align 4
  %138 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %139 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %141 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %142 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %141, i32 0, i32 0
  store %struct.omap_hsmmc_host* %140, %struct.omap_hsmmc_host** %142, align 8
  %143 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %144 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %143)
  %145 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %146 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %136, %130, %102, %93, %76, %63
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dma_chan* @omap_hsmmc_get_dma_chan(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i32 @omap_hsmmc_pre_dma_transfer(%struct.omap_hsmmc_host*, %struct.mmc_data*, i32*, %struct.dma_chan*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
