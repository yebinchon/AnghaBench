; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_free_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_free_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.stmmac_tx_queue* }
%struct.stmmac_tx_queue = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64, i32)* @stmmac_free_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_free_tx_buffer(%struct.stmmac_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmmac_tx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 1
  %10 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %10, i64 %11
  store %struct.stmmac_tx_queue* %12, %struct.stmmac_tx_queue** %7, align 8
  %13 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %14 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %3
  %23 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %24 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %22
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %37 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %45 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i32 @dma_unmap_page(i32 %35, i64 %43, i32 %51, i32 %52)
  br label %76

54:                                               ; preds = %22
  %55 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %56 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %59 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %67 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @dma_unmap_single(i32 %57, i64 %65, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %54, %32
  br label %77

77:                                               ; preds = %76, %3
  %78 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %79 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %115

86:                                               ; preds = %77
  %87 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %88 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @dev_kfree_skb_any(i32* %93)
  %95 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %96 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  store i32* null, i32** %100, align 8
  %101 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %102 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %109 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %86, %77
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
