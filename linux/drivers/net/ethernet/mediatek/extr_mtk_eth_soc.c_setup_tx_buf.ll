; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_setup_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_setup_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_tx_buf = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mtk_tx_dma = type { i32, i8*, i8* }

@MTK_QDMA = common dso_local global i32 0, align 4
@dma_addr0 = common dso_local global i32 0, align 4
@dma_len0 = common dso_local global i32 0, align 4
@dma_addr1 = common dso_local global i32 0, align 4
@dma_len1 = common dso_local global i32 0, align 4
@MTK_DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*, %struct.mtk_tx_buf*, %struct.mtk_tx_dma*, i8*, i64, i32)* @setup_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tx_buf(%struct.mtk_eth* %0, %struct.mtk_tx_buf* %1, %struct.mtk_tx_dma* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.mtk_eth*, align 8
  %8 = alloca %struct.mtk_tx_buf*, align 8
  %9 = alloca %struct.mtk_tx_dma*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %7, align 8
  store %struct.mtk_tx_buf* %1, %struct.mtk_tx_buf** %8, align 8
  store %struct.mtk_tx_dma* %2, %struct.mtk_tx_dma** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %14 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MTK_QDMA, align 4
  %19 = call i64 @MTK_HAS_CAPS(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %23 = load i32, i32* @dma_addr0, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @dma_unmap_addr_set(%struct.mtk_tx_buf* %22, i32 %23, i8* %24)
  %26 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %27 = load i32, i32* @dma_len0, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @dma_unmap_len_set(%struct.mtk_tx_buf* %26, i32 %27, i64 %28)
  br label %73

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %9, align 8
  %37 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @TX_DMA_PLEN1(i64 %38)
  %40 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %9, align 8
  %41 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %45 = load i32, i32* @dma_addr1, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @dma_unmap_addr_set(%struct.mtk_tx_buf* %44, i32 %45, i8* %46)
  %48 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %49 = load i32, i32* @dma_len1, align 4
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @dma_unmap_len_set(%struct.mtk_tx_buf* %48, i32 %49, i64 %50)
  br label %72

52:                                               ; preds = %30
  %53 = load i64, i64* @MTK_DMA_DUMMY_DESC, align 8
  %54 = inttoptr i64 %53 to %struct.sk_buff*
  %55 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %56 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %55, i32 0, i32 0
  store %struct.sk_buff* %54, %struct.sk_buff** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %9, align 8
  %59 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @TX_DMA_PLEN0(i64 %60)
  %62 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %9, align 8
  %63 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %65 = load i32, i32* @dma_addr0, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @dma_unmap_addr_set(%struct.mtk_tx_buf* %64, i32 %65, i8* %66)
  %68 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %8, align 8
  %69 = load i32, i32* @dma_len0, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @dma_unmap_len_set(%struct.mtk_tx_buf* %68, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %52, %34
  br label %73

73:                                               ; preds = %72, %21
  ret void
}

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.mtk_tx_buf*, i32, i8*) #1

declare dso_local i32 @dma_unmap_len_set(%struct.mtk_tx_buf*, i32, i64) #1

declare dso_local i32 @TX_DMA_PLEN1(i64) #1

declare dso_local i32 @TX_DMA_PLEN0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
