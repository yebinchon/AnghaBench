; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_txd_to_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_txd_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tx_ring = type { i64 }
%struct.mtk_tx_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_tx_ring*, %struct.mtk_tx_dma*)* @txd_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txd_to_idx(%struct.mtk_tx_ring* %0, %struct.mtk_tx_dma* %1) #0 {
  %3 = alloca %struct.mtk_tx_ring*, align 8
  %4 = alloca %struct.mtk_tx_dma*, align 8
  store %struct.mtk_tx_ring* %0, %struct.mtk_tx_ring** %3, align 8
  store %struct.mtk_tx_dma* %1, %struct.mtk_tx_dma** %4, align 8
  %5 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %4, align 8
  %6 = bitcast %struct.mtk_tx_dma* %5 to i8*
  %7 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = ptrtoint i8* %6 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
