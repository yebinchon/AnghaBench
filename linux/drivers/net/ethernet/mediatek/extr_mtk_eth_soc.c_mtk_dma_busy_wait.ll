; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_dma_busy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_dma_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MTK_QDMA = common dso_local global i32 0, align 4
@MTK_QDMA_GLO_CFG = common dso_local global i32 0, align 4
@MTK_RX_DMA_BUSY = common dso_local global i32 0, align 4
@MTK_TX_DMA_BUSY = common dso_local global i32 0, align 4
@MTK_PDMA_GLO_CFG = common dso_local global i32 0, align 4
@MTK_DMA_BUSY_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"DMA init timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_dma_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dma_busy_wait(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i64, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  store i64 %5, i64* %4, align 8
  br label %6

6:                                                ; preds = %1, %45
  %7 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MTK_QDMA, align 4
  %13 = call i64 @MTK_HAS_CAPS(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %17 = load i32, i32* @MTK_QDMA_GLO_CFG, align 4
  %18 = call i32 @mtk_r32(%struct.mtk_eth* %16, i32 %17)
  %19 = load i32, i32* @MTK_RX_DMA_BUSY, align 4
  %20 = load i32, i32* @MTK_TX_DMA_BUSY, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %51

25:                                               ; preds = %15
  br label %37

26:                                               ; preds = %6
  %27 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %28 = load i32, i32* @MTK_PDMA_GLO_CFG, align 4
  %29 = call i32 @mtk_r32(%struct.mtk_eth* %27, i32 %28)
  %30 = load i32, i32* @MTK_RX_DMA_BUSY, align 4
  %31 = load i32, i32* @MTK_TX_DMA_BUSY, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %51

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @MTK_DMA_BUSY_TIMEOUT, align 8
  %41 = add i64 %39, %40
  %42 = call i64 @time_after(i64 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %46

45:                                               ; preds = %37
  br label %6

46:                                               ; preds = %44
  %47 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %35, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
