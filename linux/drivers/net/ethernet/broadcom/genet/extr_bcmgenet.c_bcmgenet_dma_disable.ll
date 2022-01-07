; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_dma_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_dma_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32 }

@DESC_INDEX = common dso_local global i32 0, align 4
@DMA_RING_BUF_EN_SHIFT = common dso_local global i32 0, align 4
@DMA_EN = common dso_local global i32 0, align 4
@DMA_CTRL = common dso_local global i32 0, align 4
@UMAC_TX_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_dma_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_dma_disable(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  %5 = load i32, i32* @DESC_INDEX, align 4
  %6 = load i32, i32* @DMA_RING_BUF_EN_SHIFT, align 4
  %7 = add nsw i32 %5, %6
  %8 = shl i32 1, %7
  %9 = load i32, i32* @DMA_EN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %12 = load i32, i32* @DMA_CTRL, align 4
  %13 = call i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DMA_CTRL, align 4
  %21 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %23 = load i32, i32* @DMA_CTRL, align 4
  %24 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DMA_CTRL, align 4
  %32 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %34 = load i32, i32* @UMAC_TX_FLUSH, align 4
  %35 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %33, i32 1, i32 %34)
  %36 = call i32 @udelay(i32 10)
  %37 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %38 = load i32, i32* @UMAC_TX_FLUSH, align 4
  %39 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %37, i32 0, i32 %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
