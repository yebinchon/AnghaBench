; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_desc_unmap_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_desc_unmap_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.wil_tx_desc = type { i32 }
%struct.wil_ctx = type { i32 }
%struct.wil_tx_enhanced_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)* @wil_tx_desc_unmap_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_tx_desc_unmap_edma(%struct.device* %0, %union.wil_tx_desc* %1, %struct.wil_ctx* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %union.wil_tx_desc*, align 8
  %6 = alloca %struct.wil_ctx*, align 8
  %7 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %union.wil_tx_desc* %1, %union.wil_tx_desc** %5, align 8
  store %struct.wil_ctx* %2, %struct.wil_ctx** %6, align 8
  %10 = load %union.wil_tx_desc*, %union.wil_tx_desc** %5, align 8
  %11 = bitcast %union.wil_tx_desc* %10 to %struct.wil_tx_enhanced_desc*
  store %struct.wil_tx_enhanced_desc* %11, %struct.wil_tx_enhanced_desc** %7, align 8
  %12 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %13 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %12, i32 0, i32 0
  %14 = call i32 @wil_tx_desc_get_addr_edma(%struct.TYPE_2__* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %7, align 8
  %16 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.wil_ctx*, %struct.wil_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 128, label %23
    i32 129, label %29
  ]

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(%struct.device* %24, i32 %25, i32 %26, i32 %27)
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DMA_TO_DEVICE, align 4
  %34 = call i32 @dma_unmap_page(%struct.device* %30, i32 %31, i32 %32, i32 %33)
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %29, %23
  ret void
}

declare dso_local i32 @wil_tx_desc_get_addr_edma(%struct.TYPE_2__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
