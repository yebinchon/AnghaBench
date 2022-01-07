; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_free_dma_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_free_dma_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32*, i32*, i32*, i32, i32, i32*, i32 }

@DMA_TX_RING_SZ = common dso_local global i32 0, align 4
@DMA_RX_RING_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgmac_priv*)* @xgmac_free_dma_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_free_dma_desc_rings(%struct.xgmac_priv* %0) #0 {
  %2 = alloca %struct.xgmac_priv*, align 8
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %2, align 8
  %3 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %4 = call i32 @xgmac_free_rx_skbufs(%struct.xgmac_priv* %3)
  %5 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %6 = call i32 @xgmac_free_tx_skbufs(%struct.xgmac_priv* %5)
  %7 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %13 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %20 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %23 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dma_free_coherent(i32 %14, i32 %18, i32* %21, i32 %24)
  %26 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %27 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %11, %1
  %29 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %30 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %35 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %42 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %45 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_free_coherent(i32 %36, i32 %40, i32* %43, i32 %46)
  %48 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %49 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %33, %28
  %51 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %52 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %56 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %58 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %62 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  ret void
}

declare dso_local i32 @xgmac_free_rx_skbufs(%struct.xgmac_priv*) #1

declare dso_local i32 @xgmac_free_tx_skbufs(%struct.xgmac_priv*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
