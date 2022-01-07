; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i32*, i64, i32, i64, i32*, i32, i64* }

@MTK_MAC_COUNT = common dso_local global i32 0, align 4
@MTK_DMA_SIZE = common dso_local global i32 0, align 4
@MTK_MAX_RX_RING_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*)* @mtk_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dma_free(%struct.mtk_eth* %0) #0 {
  %2 = alloca %struct.mtk_eth*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MTK_MAC_COUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %9, i32 0, i32 7
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %19 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %18, i32 0, i32 7
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @netdev_reset_queue(i64 %24)
  br label %26

26:                                               ; preds = %17, %8
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  %31 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %32 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %37 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MTK_DMA_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %44 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %47 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dma_free_coherent(i32 %38, i32 %42, i32* %45, i64 %48)
  %50 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %51 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %50, i32 0, i32 5
  store i32* null, i32** %51, align 8
  %52 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %53 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %35, %30
  %55 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %56 = call i32 @mtk_tx_clean(%struct.mtk_eth* %55)
  %57 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %58 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %59 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @mtk_rx_clean(%struct.mtk_eth* %57, i32* %61)
  %63 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %64 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %65 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %64, i32 0, i32 3
  %66 = call i32 @mtk_rx_clean(%struct.mtk_eth* %63, i32* %65)
  %67 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %68 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %54
  %72 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %73 = call i32 @mtk_hwlro_rx_uninit(%struct.mtk_eth* %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %87, %71
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @MTK_MAX_RX_RING_NUM, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %80 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %81 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @mtk_rx_clean(%struct.mtk_eth* %79, i32* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %74

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %54
  %92 = load %struct.mtk_eth*, %struct.mtk_eth** %2, align 8
  %93 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @kfree(i32 %94)
  ret void
}

declare dso_local i32 @netdev_reset_queue(i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @mtk_tx_clean(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_rx_clean(%struct.mtk_eth*, i32*) #1

declare dso_local i32 @mtk_hwlro_rx_uninit(%struct.mtk_eth*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
