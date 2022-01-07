; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NET_IP_ALIGN = common dso_local global i32 0, align 4
@MTK_RX_2B_OFFSET = common dso_local global i32 0, align 4
@MTK_QDMA = common dso_local global i32 0, align 4
@MTK_TX_WB_DDONE = common dso_local global i32 0, align 4
@MTK_TX_DMA_EN = common dso_local global i32 0, align 4
@MTK_DMA_SIZE_16DWORDS = common dso_local global i32 0, align 4
@MTK_NDP_CO_PRO = common dso_local global i32 0, align 4
@MTK_RX_DMA_EN = common dso_local global i32 0, align 4
@MTK_RX_BT_32DWORDS = common dso_local global i32 0, align 4
@MTK_QDMA_GLO_CFG = common dso_local global i32 0, align 4
@MTK_MULTI_EN = common dso_local global i32 0, align 4
@MTK_PDMA_GLO_CFG = common dso_local global i32 0, align 4
@MTK_PDMA_SIZE_8DWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_start_dma(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %6 = load i32, i32* @NET_IP_ALIGN, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @MTK_RX_2B_OFFSET, align 4
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %14 = call i32 @mtk_dma_init(%struct.mtk_eth* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %19 = call i32 @mtk_dma_free(%struct.mtk_eth* %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %11
  %22 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MTK_QDMA, align 4
  %28 = call i64 @MTK_HAS_CAPS(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %21
  %31 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %32 = load i32, i32* @MTK_TX_WB_DDONE, align 4
  %33 = load i32, i32* @MTK_TX_DMA_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MTK_DMA_SIZE_16DWORDS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MTK_NDP_CO_PRO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MTK_RX_DMA_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MTK_RX_2B_OFFSET, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MTK_RX_BT_32DWORDS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MTK_QDMA_GLO_CFG, align 4
  %46 = call i32 @mtk_w32(%struct.mtk_eth* %31, i32 %44, i32 %45)
  %47 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %48 = load i32, i32* @MTK_RX_DMA_EN, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MTK_RX_BT_32DWORDS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MTK_MULTI_EN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MTK_PDMA_GLO_CFG, align 4
  %56 = call i32 @mtk_w32(%struct.mtk_eth* %47, i32 %54, i32 %55)
  br label %70

57:                                               ; preds = %21
  %58 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %59 = load i32, i32* @MTK_TX_WB_DDONE, align 4
  %60 = load i32, i32* @MTK_TX_DMA_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MTK_RX_DMA_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MTK_MULTI_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MTK_PDMA_SIZE_8DWORDS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MTK_PDMA_GLO_CFG, align 4
  %69 = call i32 @mtk_w32(%struct.mtk_eth* %58, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %57, %30
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @mtk_dma_init(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_dma_free(%struct.mtk_eth*) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
