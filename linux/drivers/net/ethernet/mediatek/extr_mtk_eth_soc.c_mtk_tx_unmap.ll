; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_tx_buf = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@MTK_QDMA = common dso_local global i32 0, align 4
@MTK_TX_FLAGS_SINGLE0 = common dso_local global i32 0, align 4
@dma_addr0 = common dso_local global i32 0, align 4
@dma_len0 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MTK_TX_FLAGS_PAGE0 = common dso_local global i32 0, align 4
@dma_len1 = common dso_local global i32 0, align 4
@dma_addr1 = common dso_local global i32 0, align 4
@MTK_DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*, %struct.mtk_tx_buf*)* @mtk_tx_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_tx_unmap(%struct.mtk_eth* %0, %struct.mtk_tx_buf* %1) #0 {
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca %struct.mtk_tx_buf*, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store %struct.mtk_tx_buf* %1, %struct.mtk_tx_buf** %4, align 8
  %5 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MTK_QDMA, align 4
  %11 = call i64 @MTK_HAS_CAPS(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MTK_TX_FLAGS_SINGLE0, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %22 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %25 = load i32, i32* @dma_addr0, align 4
  %26 = call i32 @dma_unmap_addr(%struct.mtk_tx_buf* %24, i32 %25)
  %27 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %28 = load i32, i32* @dma_len0, align 4
  %29 = call i64 @dma_unmap_len(%struct.mtk_tx_buf* %27, i32 %28)
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @dma_unmap_single(i32 %23, i32 %26, i64 %29, i32 %30)
  br label %52

32:                                               ; preds = %13
  %33 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MTK_TX_FLAGS_PAGE0, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %44 = load i32, i32* @dma_addr0, align 4
  %45 = call i32 @dma_unmap_addr(%struct.mtk_tx_buf* %43, i32 %44)
  %46 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %47 = load i32, i32* @dma_len0, align 4
  %48 = call i64 @dma_unmap_len(%struct.mtk_tx_buf* %46, i32 %47)
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @dma_unmap_page(i32 %42, i32 %45, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %32
  br label %52

52:                                               ; preds = %51, %20
  br label %88

53:                                               ; preds = %2
  %54 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %55 = load i32, i32* @dma_len0, align 4
  %56 = call i64 @dma_unmap_len(%struct.mtk_tx_buf* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %63 = load i32, i32* @dma_addr0, align 4
  %64 = call i32 @dma_unmap_addr(%struct.mtk_tx_buf* %62, i32 %63)
  %65 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %66 = load i32, i32* @dma_len0, align 4
  %67 = call i64 @dma_unmap_len(%struct.mtk_tx_buf* %65, i32 %66)
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @dma_unmap_page(i32 %61, i32 %64, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %53
  %71 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %72 = load i32, i32* @dma_len1, align 4
  %73 = call i64 @dma_unmap_len(%struct.mtk_tx_buf* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %80 = load i32, i32* @dma_addr1, align 4
  %81 = call i32 @dma_unmap_addr(%struct.mtk_tx_buf* %79, i32 %80)
  %82 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %83 = load i32, i32* @dma_len1, align 4
  %84 = call i64 @dma_unmap_len(%struct.mtk_tx_buf* %82, i32 %83)
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_unmap_page(i32 %78, i32 %81, i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %75, %70
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %90 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %91, i32 0, i32 1
  %93 = load %struct.sk_buff*, %struct.sk_buff** %92, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %96, i32 0, i32 1
  %98 = load %struct.sk_buff*, %struct.sk_buff** %97, align 8
  %99 = load i64, i64* @MTK_DMA_DUMMY_DESC, align 8
  %100 = inttoptr i64 %99 to %struct.sk_buff*
  %101 = icmp ne %struct.sk_buff* %98, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %104 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %103, i32 0, i32 1
  %105 = load %struct.sk_buff*, %struct.sk_buff** %104, align 8
  %106 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %105)
  br label %107

107:                                              ; preds = %102, %95, %88
  %108 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %108, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  ret void
}

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.mtk_tx_buf*, i32) #1

declare dso_local i64 @dma_unmap_len(%struct.mtk_tx_buf*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
