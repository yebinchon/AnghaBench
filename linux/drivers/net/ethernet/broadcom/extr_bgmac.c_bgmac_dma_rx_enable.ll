; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }
%struct.bgmac_dma_ring = type { i64 }

@BGMAC_DMA_RX_CTL = common dso_local global i64 0, align 8
@BGMAC_DMA_RX_ADDREXT_MASK = common dso_local global i32 0, align 4
@BGMAC_FEAT_RX_MASK_SETUP = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_BL_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_BL_128 = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_BL_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PC_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PC_8 = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PC_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PT_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PT_1 = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PT_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_ENABLE = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_PARITY_DISABLE = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_OVERFLOW_CONT = common dso_local global i32 0, align 4
@BGMAC_RX_FRAME_OFFSET = common dso_local global i32 0, align 4
@BGMAC_DMA_RX_FRAME_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_rx_enable(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %6 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %7 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %8 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BGMAC_DMA_RX_CTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @bgmac_read(%struct.bgmac* %6, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @BGMAC_DMA_RX_ADDREXT_MASK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %17 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BGMAC_FEAT_RX_MASK_SETUP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load i32, i32* @BGMAC_DMA_RX_BL_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @BGMAC_DMA_RX_BL_128, align 4
  %28 = load i32, i32* @BGMAC_DMA_RX_BL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @BGMAC_DMA_RX_PC_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @BGMAC_DMA_RX_PC_8, align 4
  %37 = load i32, i32* @BGMAC_DMA_RX_PC_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @BGMAC_DMA_RX_PT_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @BGMAC_DMA_RX_PT_1, align 4
  %46 = load i32, i32* @BGMAC_DMA_RX_PT_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %22, %2
  %51 = load i32, i32* @BGMAC_DMA_RX_ENABLE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @BGMAC_DMA_RX_PARITY_DISABLE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @BGMAC_DMA_RX_OVERFLOW_CONT, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @BGMAC_RX_FRAME_OFFSET, align 4
  %61 = load i32, i32* @BGMAC_DMA_RX_FRAME_OFFSET_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %66 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %67 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BGMAC_DMA_RX_CTL, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @bgmac_write(%struct.bgmac* %65, i64 %70, i32 %71)
  ret void
}

declare dso_local i32 @bgmac_read(%struct.bgmac*, i64) #1

declare dso_local i32 @bgmac_write(%struct.bgmac*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
