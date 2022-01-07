; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c___ath10k_htt_rx_ring_fill_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c___ath10k_htt_rx_ring_fill_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i64, i32, %struct.sk_buff** }
%struct.TYPE_7__ = type { i8** }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.htt_rx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.ath10k_skb_rxcb = type { i32, i32 }

@HTT_RX_RING_FILL_LEVEL = common dso_local global i32 0, align 4
@HTT_RX_RING_SIZE = common dso_local global i32 0, align 4
@HTT_RX_BUF_SIZE = common dso_local global i64 0, align 8
@HTT_RX_DESC_ALIGN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, i32)* @__ath10k_htt_rx_ring_fill_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_htt_rx_ring_fill_n(%struct.ath10k_htt* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.htt_rx_desc*, align 8
  %6 = alloca %struct.ath10k_skb_rxcb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @HTT_RX_RING_FILL_LEVEL, align 4
  %12 = load i32, i32* @HTT_RX_RING_SIZE, align 4
  %13 = sdiv i32 %12, 2
  %14 = icmp sge i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @__le32_to_cpu(i8* %22)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %133, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %144

27:                                               ; preds = %24
  %28 = load i64, i64* @HTT_RX_BUF_SIZE, align 8
  %29 = load i64, i64* @HTT_RX_DESC_ALIGN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call %struct.sk_buff* @dev_alloc_skb(i64 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %145

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HTT_RX_DESC_ALIGN, align 8
  %42 = call i32 @IS_ALIGNED(i64 %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HTT_RX_DESC_ALIGN, align 8
  %50 = call i64 @PTR_ALIGN(i64 %48, i64 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = call i32 @skb_pull(%struct.sk_buff* %45, i64 %54)
  br label %56

56:                                               ; preds = %44, %37
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %60, %struct.htt_rx_desc** %5, align 8
  %61 = call i8* @__cpu_to_le32(i32 0)
  %62 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %5, align 8
  %63 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %66 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i64 @skb_tailroom(%struct.sk_buff* %76)
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %80 = call i32 @dma_map_single(i32 %69, i64 %72, i64 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %82 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dma_mapping_error(i32 %85, i32 %86)
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %56
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %145

95:                                               ; preds = %56
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call %struct.ath10k_skb_rxcb* @ATH10K_SKB_RXCB(%struct.sk_buff* %96)
  store %struct.ath10k_skb_rxcb* %97, %struct.ath10k_skb_rxcb** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ath10k_skb_rxcb*, %struct.ath10k_skb_rxcb** %6, align 8
  %100 = getelementptr inbounds %struct.ath10k_skb_rxcb, %struct.ath10k_skb_rxcb* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %103 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load %struct.sk_buff**, %struct.sk_buff*** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %105, i64 %107
  store %struct.sk_buff* %101, %struct.sk_buff** %108, align 8
  %109 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @ath10k_htt_set_paddrs_ring(%struct.ath10k_htt* %109, i32 %110, i32 %111)
  %113 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %114 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %119 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %95
  %124 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %125 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = call %struct.ath10k_skb_rxcb* @ATH10K_SKB_RXCB(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.ath10k_skb_rxcb, %struct.ath10k_skb_rxcb* %129, i32 0, i32 0
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @hash_add(i32 %127, i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %123, %95
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %139 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %24

144:                                              ; preds = %24
  br label %145

145:                                              ; preds = %144, %90, %34
  %146 = call i32 (...) @mb()
  %147 = load i32, i32* %10, align 4
  %148 = call i8* @__cpu_to_le32(i32 %147)
  %149 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %150 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  store i8* %148, i8** %153, align 8
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @__le32_to_cpu(i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @PTR_ALIGN(i64, i64) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ath10k_skb_rxcb* @ATH10K_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_set_paddrs_ring(%struct.ath10k_htt*, i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
