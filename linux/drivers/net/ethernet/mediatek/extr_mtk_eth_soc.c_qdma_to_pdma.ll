; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_qdma_to_pdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_qdma_to_pdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tx_ring = type { i32, i32 }
%struct.mtk_tx_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_tx_dma* (%struct.mtk_tx_ring*, %struct.mtk_tx_dma*)* @qdma_to_pdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_tx_dma* @qdma_to_pdma(%struct.mtk_tx_ring* %0, %struct.mtk_tx_dma* %1) #0 {
  %3 = alloca %struct.mtk_tx_ring*, align 8
  %4 = alloca %struct.mtk_tx_dma*, align 8
  store %struct.mtk_tx_ring* %0, %struct.mtk_tx_ring** %3, align 8
  store %struct.mtk_tx_dma* %1, %struct.mtk_tx_dma** %4, align 8
  %5 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  %12 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %4, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %12, i64 %13
  ret %struct.mtk_tx_dma* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
