; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, %struct.mtk_tx_ring }
%struct.mtk_tx_ring = type { i32*, i32, i32*, i32, i32* }

@MTK_DMA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*)* @mtk_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_tx_clean(%struct.mtk_eth* %0) #0 {
  %2 = alloca %struct.mtk_eth*, align 8
  %3 = alloca %struct.mtk_tx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %2, align 8
  %5 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %5, i32 0, i32 1
  store %struct.mtk_tx_ring* %6, %struct.mtk_tx_ring** %3, align 8
  %7 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MTK_DMA_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %18 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @mtk_tx_unmap(%struct.mtk_eth* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %34 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %33, i32 0, i32 4
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %42 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MTK_DMA_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dma_free_coherent(i32 %43, i32 %47, i32* %50, i32 %53)
  %55 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %40, %35
  %58 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %59 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %64 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MTK_DMA_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %71 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %74 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dma_free_coherent(i32 %65, i32 %69, i32* %72, i32 %75)
  %77 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %3, align 8
  %78 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @mtk_tx_unmap(%struct.mtk_eth*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
