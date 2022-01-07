; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_update_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_update_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }
%struct.bgmac_dma_ring = type { i32, i64, i64 }

@BGMAC_DMA_RX_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_rx_update_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_rx_update_index(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %5 = call i32 (...) @dma_wmb()
  %6 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %7 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %8 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BGMAC_DMA_RX_INDEX, align 8
  %11 = add nsw i64 %9, %10
  %12 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %13 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %16 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %14, %19
  %21 = call i32 @bgmac_write(%struct.bgmac* %6, i64 %11, i64 %20)
  ret void
}

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @bgmac_write(%struct.bgmac*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
