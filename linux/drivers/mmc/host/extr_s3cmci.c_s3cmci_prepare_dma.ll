; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.s3cmci_host*, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i64, i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@BOTH_DIR = common dso_local global i32 0, align 4
@S3C2410_SDIPRE = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@s3cmci_dma_done_callback = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3cmci_host*, %struct.mmc_data*)* @s3cmci_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_prepare_dma(%struct.s3cmci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3cmci_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_slave_config, align 8
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MMC_DATA_WRITE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 1
  %16 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 2
  %18 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  %20 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %21 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %26 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %19, align 8
  %29 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 4
  %30 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %31 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %36 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %29, align 8
  %39 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BOTH_DIR, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @BOTH_DIR, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %49 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %52 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @S3C2410_SDIPRE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %2
  %60 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  br label %65

62:                                               ; preds = %2
  %63 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %64 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %67 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mmc_dev(i32 %68)
  %70 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %77 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %76)
  %78 = call i32 @dma_map_sg(i32 %69, i32 %72, i32 %75, i32 %77)
  %79 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %80 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dmaengine_slave_config(i32 %81, %struct.dma_slave_config* %8)
  %83 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %84 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DMA_CTRL_ACK, align 4
  %95 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %96 = or i32 %94, %95
  %97 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %85, i32 %88, i32 %91, i32 %93, i32 %96)
  store %struct.dma_async_tx_descriptor* %97, %struct.dma_async_tx_descriptor** %7, align 8
  %98 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %99 = icmp ne %struct.dma_async_tx_descriptor* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %65
  br label %114

101:                                              ; preds = %65
  %102 = load i32, i32* @s3cmci_dma_done_callback, align 4
  %103 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %104 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %106 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %107 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %106, i32 0, i32 0
  store %struct.s3cmci_host* %105, %struct.s3cmci_host** %107, align 8
  %108 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %109 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %108)
  %110 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %111 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dma_async_issue_pending(i32 %112)
  store i32 0, i32* %3, align 4
  br label %130

114:                                              ; preds = %100
  %115 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %116 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @mmc_dev(i32 %117)
  %119 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %120 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %126 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %125)
  %127 = call i32 @dma_unmap_sg(i32 %118, i32 %121, i32 %124, i32 %126)
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %114, %101
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
