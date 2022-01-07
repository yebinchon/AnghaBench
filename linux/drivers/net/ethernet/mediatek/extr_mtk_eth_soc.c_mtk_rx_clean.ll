; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_rx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32 }
%struct.mtk_rx_ring = type { i32, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*, %struct.mtk_rx_ring*)* @mtk_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_rx_clean(%struct.mtk_eth* %0, %struct.mtk_rx_ring* %1) #0 {
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca %struct.mtk_rx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store %struct.mtk_rx_ring* %1, %struct.mtk_rx_ring** %4, align 8
  %6 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %78

10:                                               ; preds = %2
  %11 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %68, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %68

32:                                               ; preds = %22
  %33 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %68

43:                                               ; preds = %32
  %44 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32 %46, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @skb_free_frag(i32 %66)
  br label %68

68:                                               ; preds = %43, %42, %31
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %16

71:                                               ; preds = %16
  %72 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %10, %2
  %79 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp ne %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %85 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %94 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_free_coherent(i32 %86, i32 %92, %struct.TYPE_2__* %95, i32 %98)
  %100 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %4, align 8
  %101 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %100, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %101, align 8
  br label %102

102:                                              ; preds = %83, %78
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_free_frag(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
