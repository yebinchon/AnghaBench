; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_free_dma_rx_desc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_free_dma_rx_desc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, %struct.stmmac_rx_queue*, %struct.TYPE_2__* }
%struct.stmmac_rx_queue = type { i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@DMA_RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @free_dma_rx_desc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dma_rx_desc_resources(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_rx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %77, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %11
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 2
  %18 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %18, i64 %19
  store %struct.stmmac_rx_queue* %20, %struct.stmmac_rx_queue** %5, align 8
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @dma_free_rx_skbufs(%struct.stmmac_priv* %21, i64 %22)
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %15
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DMA_RX_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %37 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %40 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_free_coherent(i32 %31, i32 %35, i32 %38, i32 %41)
  br label %58

43:                                               ; preds = %15
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %45 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_RX_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %52 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %55 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dma_free_coherent(i32 %46, i32 %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %43, %28
  %59 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %60 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kfree(i32 %61)
  %63 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %64 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %69 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @page_pool_request_shutdown(i64 %70)
  %72 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %73 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @page_pool_destroy(i64 %74)
  br label %76

76:                                               ; preds = %67, %58
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %4, align 8
  br label %11

80:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dma_free_rx_skbufs(%struct.stmmac_priv*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @page_pool_request_shutdown(i64) #1

declare dso_local i32 @page_pool_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
