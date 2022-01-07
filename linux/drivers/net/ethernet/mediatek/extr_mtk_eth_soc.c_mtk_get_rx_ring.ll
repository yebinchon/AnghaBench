; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_get_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_get_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_rx_ring = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_eth = type { %struct.mtk_rx_ring*, i32 }

@MTK_MAX_RX_RING_NUM = common dso_local global i32 0, align 4
@RX_DMA_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_rx_ring* (%struct.mtk_eth*)* @mtk_get_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_rx_ring* @mtk_get_rx_ring(%struct.mtk_eth* %0) #0 {
  %2 = alloca %struct.mtk_rx_ring*, align 8
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_rx_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %7 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %12, i32 0, i32 0
  %14 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %13, align 8
  %15 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %14, i64 0
  store %struct.mtk_rx_ring* %15, %struct.mtk_rx_ring** %2, align 8
  br label %55

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MTK_MAX_RX_RING_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %22, i32 0, i32 0
  %24 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %24, i64 %26
  store %struct.mtk_rx_ring* %27, %struct.mtk_rx_ring** %5, align 8
  %28 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @NEXT_DESP_IDX(i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RX_DMA_DONE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %21
  %47 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %5, align 8
  store %struct.mtk_rx_ring* %49, %struct.mtk_rx_ring** %2, align 8
  br label %55

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %17

54:                                               ; preds = %17
  store %struct.mtk_rx_ring* null, %struct.mtk_rx_ring** %2, align 8
  br label %55

55:                                               ; preds = %54, %46, %11
  %56 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %2, align 8
  ret %struct.mtk_rx_ring* %56
}

declare dso_local i32 @NEXT_DESP_IDX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
