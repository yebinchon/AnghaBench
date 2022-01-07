; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_enable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32 }

@DMA_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*, i32)* @bcmgenet_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_enable_dma(%struct.bcmgenet_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %7 = load i32, i32* @DMA_CTRL, align 4
  %8 = call i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DMA_CTRL, align 4
  %15 = call i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv* %12, i32 %13, i32 %14)
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %17 = load i32, i32* @DMA_CTRL, align 4
  %18 = call i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DMA_CTRL, align 4
  %25 = call i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @bcmgenet_rdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_tdma_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_tdma_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
