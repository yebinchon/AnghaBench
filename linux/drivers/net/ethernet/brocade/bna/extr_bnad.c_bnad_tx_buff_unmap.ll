; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_tx_buff_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_tx_buff_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnad_tx_unmap = type { i32, i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@dma_addr = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BFI_TX_MAX_VECTORS_PER_WI = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, %struct.bnad_tx_unmap*, i64, i64)* @bnad_tx_buff_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_tx_buff_unmap(%struct.bnad* %0, %struct.bnad_tx_unmap* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bnad_tx_unmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnad_tx_unmap*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store %struct.bnad_tx_unmap* %1, %struct.bnad_tx_unmap** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %13, i64 %14
  store %struct.bnad_tx_unmap* %15, %struct.bnad_tx_unmap** %9, align 8
  %16 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %17 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %20 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %19, i32 0, i32 2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %23 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %22, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %25 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.bnad*, %struct.bnad** %5, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %31 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* @dma_addr, align 4
  %35 = call i32 @dma_unmap_addr(i32* %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = call i32 @skb_headlen(%struct.sk_buff* %36)
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32* %29, i32 %35, i32 %37, i32 %38)
  %40 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %41 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* @dma_addr, align 4
  %45 = call i32 @dma_unmap_addr_set(i32* %43, i32 %44, i32 0)
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %64, %4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @BFI_TX_MAX_VECTORS_PER_WI, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @BNA_QE_INDX_INC(i64 %58, i64 %59)
  %61 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %61, i64 %62
  store %struct.bnad_tx_unmap* %63, %struct.bnad_tx_unmap** %9, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.bnad*, %struct.bnad** %5, align 8
  %66 = getelementptr inbounds %struct.bnad, %struct.bnad* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %70 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* @dma_addr, align 4
  %76 = call i32 @dma_unmap_addr(i32* %74, i32 %75)
  %77 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %78 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* @dma_len, align 4
  %84 = call i32 @dma_unmap_len(i32* %82, i32 %83)
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_unmap_page(i32* %68, i32 %76, i32 %84, i32 %85)
  %87 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %88 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* @dma_addr, align 4
  %94 = call i32 @dma_unmap_addr_set(i32* %92, i32 %93, i32 0)
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %48

97:                                               ; preds = %48
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @BNA_QE_INDX_INC(i64 %98, i64 %99)
  %101 = load i64, i64* %8, align 8
  ret i64 %101
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(i32*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_addr_set(i32*, i32, i32) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_len(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
