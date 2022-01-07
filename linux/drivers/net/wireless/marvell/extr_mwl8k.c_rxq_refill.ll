; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_rxq_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_rxq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { %struct.TYPE_3__*, i32, %struct.mwl8k_rx_queue* }
%struct.TYPE_3__ = type { i32, i32 (i8*, i32, i32)* }
%struct.mwl8k_rx_queue = type { i64, i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@MWL8K_RX_DESCS = common dso_local global i64 0, align 8
@MWL8K_RX_MAXSZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @rxq_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_refill(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwl8k_priv*, align 8
  %8 = alloca %struct.mwl8k_rx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %15, align 8
  store %struct.mwl8k_priv* %16, %struct.mwl8k_priv** %7, align 8
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %18 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %17, i32 0, i32 2
  %19 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %19, i64 %21
  store %struct.mwl8k_rx_queue* %22, %struct.mwl8k_rx_queue** %8, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %68, %3
  %24 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %25 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MWL8K_RX_DESCS, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %30, 0
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i1 [ false, %23 ], [ %32, %29 ]
  br i1 %34, label %35, label %109

35:                                               ; preds = %33
  %36 = load i32, i32* @MWL8K_RX_MAXSZ, align 4
  %37 = call %struct.sk_buff* @dev_alloc_skb(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = icmp eq %struct.sk_buff* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %109

41:                                               ; preds = %35
  %42 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %43 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MWL8K_RX_MAXSZ, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @pci_map_single(i32 %44, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %52 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %56 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = trunc i64 %57 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %61 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MWL8K_RX_DESCS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %67 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %41
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %71 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.sk_buff* %69, %struct.sk_buff** %76, align 8
  %77 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %78 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = load i32, i32* @dma, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @dma_unmap_addr_set(%struct.TYPE_4__* %82, i32 %83, i32 %84)
  %86 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %8, align 8
  %87 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %91 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %89, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %88, i64 %96
  store i8* %97, i8** %13, align 8
  %98 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %99 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %101, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @MWL8K_RX_MAXSZ, align 4
  %106 = call i32 %102(i8* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %23

109:                                              ; preds = %40, %33
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
