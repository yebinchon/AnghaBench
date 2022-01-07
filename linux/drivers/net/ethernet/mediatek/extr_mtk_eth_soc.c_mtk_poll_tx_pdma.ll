; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_tx_pdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_tx_pdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.mtk_tx_ring }
%struct.mtk_tx_ring = type { i64, i32, i32, %struct.mtk_tx_dma*, %struct.mtk_tx_dma*, %struct.mtk_tx_buf* }
%struct.mtk_tx_dma = type { i32 }
%struct.mtk_tx_buf = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@MT7628_TX_DTX_IDX0 = common dso_local global i32 0, align 4
@MTK_DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i32, i32*, i32*)* @mtk_poll_tx_pdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_poll_tx_pdma(%struct.mtk_eth* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mtk_eth*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mtk_tx_ring*, align 8
  %10 = alloca %struct.mtk_tx_dma*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.mtk_tx_buf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %16 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %15, i32 0, i32 0
  store %struct.mtk_tx_ring* %16, %struct.mtk_tx_ring** %9, align 8
  %17 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %18 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %21 = load i32, i32* @MT7628_TX_DTX_IDX0, align 4
  %22 = call i64 @mtk_r32(%struct.mtk_eth* %20, i32 %21)
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %65, %4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i1 [ false, %23 ], [ %29, %27 ]
  br i1 %31, label %32, label %85

32:                                               ; preds = %30
  %33 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %34 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %33, i32 0, i32 5
  %35 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %35, i64 %36
  store %struct.mtk_tx_buf* %37, %struct.mtk_tx_buf** %12, align 8
  %38 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %12, align 8
  %39 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %38, i32 0, i32 0
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %85

44:                                               ; preds = %32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = load i64, i64* @MTK_DMA_DUMMY_DESC, align 8
  %47 = inttoptr i64 %46 to %struct.sk_buff*
  %48 = icmp ne %struct.sk_buff* %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %49, %44
  %66 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %67 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %12, align 8
  %68 = call i32 @mtk_tx_unmap(%struct.mtk_eth* %66, %struct.mtk_tx_buf* %67)
  %69 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %70 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %69, i32 0, i32 4
  %71 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %71, i64 %72
  store %struct.mtk_tx_dma* %73, %struct.mtk_tx_dma** %10, align 8
  %74 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %10, align 8
  %75 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %76 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %75, i32 0, i32 3
  store %struct.mtk_tx_dma* %74, %struct.mtk_tx_dma** %76, align 8
  %77 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %78 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %77, i32 0, i32 2
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %82 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @NEXT_DESP_IDX(i64 %80, i32 %83)
  store i64 %84, i64* %13, align 8
  br label %23

85:                                               ; preds = %43, %30
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %9, align 8
  %88 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i32 @mtk_tx_unmap(%struct.mtk_eth*, %struct.mtk_tx_buf*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @NEXT_DESP_IDX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
