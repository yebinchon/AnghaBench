; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_submit_data_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_submit_data_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { %struct.TYPE_2__, %struct.dma_chan* }
%struct.TYPE_2__ = type { %struct.dma_async_tx_descriptor* }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mmc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*, %struct.mmc_data*)* @atmci_submit_data_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_submit_data_dma(%struct.atmel_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.atmel_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.atmel_mci* %0, %struct.atmel_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %7 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %7, i32 0, i32 1
  %9 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %9, %struct.dma_chan** %5, align 8
  %10 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  store %struct.dma_async_tx_descriptor* %13, %struct.dma_async_tx_descriptor** %6, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = icmp ne %struct.dma_chan* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %18 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %17)
  %19 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %20 = call i32 @dma_async_issue_pending(%struct.dma_chan* %19)
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
