; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32 }
%struct.bgmac_dma_ring = type { i64 }

@BGMAC_DMA_TX_CTL = common dso_local global i64 0, align 8
@BGMAC_FEAT_TX_MASK_SETUP = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_BL_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_BL_128 = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_BL_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_MR_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_MR_2 = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_MR_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PC_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PC_16 = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PC_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PT_MASK = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PT_8 = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PT_SHIFT = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_ENABLE = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_PARITY_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*, %struct.bgmac_dma_ring*)* @bgmac_dma_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_dma_tx_enable(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1) #0 {
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bgmac_dma_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %4, align 8
  %6 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %7 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %8 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BGMAC_DMA_TX_CTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @bgmac_read(%struct.bgmac* %6, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %14 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BGMAC_FEAT_TX_MASK_SETUP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @BGMAC_DMA_TX_BL_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @BGMAC_DMA_TX_BL_128, align 4
  %25 = load i32, i32* @BGMAC_DMA_TX_BL_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @BGMAC_DMA_TX_MR_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @BGMAC_DMA_TX_MR_2, align 4
  %34 = load i32, i32* @BGMAC_DMA_TX_MR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @BGMAC_DMA_TX_PC_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @BGMAC_DMA_TX_PC_16, align 4
  %43 = load i32, i32* @BGMAC_DMA_TX_PC_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @BGMAC_DMA_TX_PT_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @BGMAC_DMA_TX_PT_8, align 4
  %52 = load i32, i32* @BGMAC_DMA_TX_PT_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %19, %2
  %57 = load i32, i32* @BGMAC_DMA_TX_ENABLE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @BGMAC_DMA_TX_PARITY_DISABLE, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %64 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %4, align 8
  %65 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BGMAC_DMA_TX_CTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @bgmac_write(%struct.bgmac* %63, i64 %68, i32 %69)
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
