; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ftmac100_txdes*, %struct.ftmac100_rxdes* }
%struct.ftmac100_txdes = type { i32 }
%struct.ftmac100_rxdes = type { i32 }
%struct.page = type { i32 }
%struct.sk_buff = type { i32 }

@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftmac100*)* @ftmac100_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftmac100_free_buffers(%struct.ftmac100* %0) #0 {
  %2 = alloca %struct.ftmac100*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftmac100_rxdes*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ftmac100_txdes*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %16 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ftmac100_rxdes, %struct.ftmac100_rxdes* %19, i64 %21
  store %struct.ftmac100_rxdes* %22, %struct.ftmac100_rxdes** %4, align 8
  %23 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %24 = call %struct.page* @ftmac100_rxdes_get_page(%struct.ftmac100_rxdes* %23)
  store %struct.page* %24, %struct.page** %5, align 8
  %25 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %26 = call i32 @ftmac100_rxdes_get_dma_addr(%struct.ftmac100_rxdes* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  br label %40

30:                                               ; preds = %14
  %31 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %32 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @RX_BUF_SIZE, align 4
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = call i32 @dma_unmap_page(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @__free_page(%struct.page* %38)
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %10

43:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %50 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ftmac100_txdes, %struct.ftmac100_txdes* %53, i64 %55
  store %struct.ftmac100_txdes* %56, %struct.ftmac100_txdes** %7, align 8
  %57 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %7, align 8
  %58 = call %struct.sk_buff* @ftmac100_txdes_get_skb(%struct.ftmac100_txdes* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %8, align 8
  %59 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %7, align 8
  %60 = call i32 @ftmac100_txdes_get_dma_addr(%struct.ftmac100_txdes* %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %48
  br label %75

64:                                               ; preds = %48
  %65 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %66 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @skb_headlen(%struct.sk_buff* %69)
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_unmap_single(i32 %67, i32 %68, i32 %70, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @dev_kfree_skb(%struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %64, %63
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %44

78:                                               ; preds = %44
  %79 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %80 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %83 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %86 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dma_free_coherent(i32 %81, i32 4, %struct.TYPE_2__* %84, i32 %87)
  ret void
}

declare dso_local %struct.page* @ftmac100_rxdes_get_page(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_get_dma_addr(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local %struct.sk_buff* @ftmac100_txdes_get_skb(%struct.ftmac100_txdes*) #1

declare dso_local i32 @ftmac100_txdes_get_dma_addr(%struct.ftmac100_txdes*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
