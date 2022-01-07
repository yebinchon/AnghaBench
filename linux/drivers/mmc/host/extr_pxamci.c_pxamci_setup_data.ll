; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_setup_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { i64, i32, i32, i32, i32, i32, %struct.dma_chan*, %struct.dma_chan*, %struct.TYPE_3__*, i64, %struct.mmc_data* }
%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.dma_async_tx_descriptor = type { %struct.pxamci_host*, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i64, i64, i8*, i8* }

@MMC_NOB = common dso_local global i64 0, align 8
@MMC_BLKLEN = common dso_local global i64 0, align 8
@MMC_RDTO = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@MMC_RXFIFO = common dso_local global i64 0, align 8
@MMC_TXFIFO = common dso_local global i64 0, align 8
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dma slave config failed\0A\00", align 1
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"prep_slave_sg() failed\0A\00", align 1
@pxamci_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxamci_host*, %struct.mmc_data*)* @pxamci_setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxamci_setup_data(%struct.pxamci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.pxamci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_slave_config, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pxamci_host* %0, %struct.pxamci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %18 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %17, i32 0, i32 10
  store %struct.mmc_data* %16, %struct.mmc_data** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %21 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMC_NOB, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %30 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMC_BLKLEN, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %39 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %37, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @do_div(i64 %42, i64 1000000000)
  %44 = load i64, i64* %10, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %50 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %48, %51
  %53 = add i32 %45, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 255
  %56 = udiv i32 %55, 256
  %57 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %58 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %57, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MMC_RDTO, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = call i32 @memset(%struct.dma_slave_config* %7, i32 0, i32 48)
  %64 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %65 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 6
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %67 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 5
  store i8* %66, i8** %67, align 8
  %68 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %69 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %68, i32 0, i32 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MMC_RXFIFO, align 8
  %74 = add nsw i64 %72, %73
  %75 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 4
  store i64 %74, i64* %75, align 8
  %76 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %77 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %76, i32 0, i32 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MMC_TXFIFO, align 8
  %82 = add nsw i64 %80, %81
  %83 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  store i32 32, i32* %84, align 8
  %85 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 1
  store i32 32, i32* %85, align 4
  %86 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MMC_DATA_READ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %2
  %93 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %94 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %95 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %96, i32* %6, align 4
  %97 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %98 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %97, i32 0, i32 7
  %99 = load %struct.dma_chan*, %struct.dma_chan** %98, align 8
  store %struct.dma_chan* %99, %struct.dma_chan** %8, align 8
  br label %108

100:                                              ; preds = %2
  %101 = load i32, i32* @DMA_TO_DEVICE, align 4
  %102 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %103 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %104, i32* %6, align 4
  %105 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %106 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %105, i32 0, i32 6
  %107 = load %struct.dma_chan*, %struct.dma_chan** %106, align 8
  store %struct.dma_chan* %107, %struct.dma_chan** %8, align 8
  br label %108

108:                                              ; preds = %100, %92
  %109 = load i32, i32* %6, align 4
  %110 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 2
  store i32 %109, i32* %110, align 8
  %111 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %112 = call i32 @dmaengine_slave_config(%struct.dma_chan* %111, %struct.dma_slave_config* %7)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %117 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @mmc_dev(i32 %118)
  %120 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %188

121:                                              ; preds = %108
  %122 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %123 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %128 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %131 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %134 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dma_map_sg(i32 %126, i32 %129, i32 %132, i32 %135)
  %137 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %138 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %140 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %141 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %144 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %148 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %139, i32 %142, i32 %145, i32 %146, i32 %147)
  store %struct.dma_async_tx_descriptor* %148, %struct.dma_async_tx_descriptor** %5, align 8
  %149 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %150 = icmp ne %struct.dma_async_tx_descriptor* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %121
  %152 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %153 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @mmc_dev(i32 %154)
  %156 = call i32 @dev_err(i32 %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %188

157:                                              ; preds = %121
  %158 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %159 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MMC_DATA_READ, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %157
  %165 = load i32, i32* @pxamci_dma_irq, align 4
  %166 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %167 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %169 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %170 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %169, i32 0, i32 0
  store %struct.pxamci_host* %168, %struct.pxamci_host** %170, align 8
  br label %171

171:                                              ; preds = %164, %157
  %172 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %173 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %172)
  %174 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %175 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = call i32 (...) @cpu_is_pxa27x()
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %180 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @MMC_DATA_READ, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178, %171
  %186 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %187 = call i32 @dma_async_issue_pending(%struct.dma_chan* %186)
  br label %188

188:                                              ; preds = %115, %151, %185, %178
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @cpu_is_pxa27x(...) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
