; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pop_paddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pop_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.ath10k_htt = type { %struct.ath10k*, %struct.TYPE_2__ }
%struct.ath10k = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath10k_skb_rxcb = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"htt rx netbuf pop: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k_htt*, i32)* @ath10k_htt_rx_pop_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_htt_rx_pop_paddr(%struct.ath10k_htt* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k_htt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_skb_rxcb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %9, i32 0, i32 0
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %6, align 8
  %12 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.sk_buff* @ath10k_htt_rx_find_skb_paddr(%struct.ath10k* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call %struct.ath10k_skb_rxcb* @ATH10K_SKB_RXCB(%struct.sk_buff* %23)
  store %struct.ath10k_skb_rxcb* %24, %struct.ath10k_skb_rxcb** %7, align 8
  %25 = load %struct.ath10k_skb_rxcb*, %struct.ath10k_skb_rxcb** %7, align 8
  %26 = getelementptr inbounds %struct.ath10k_skb_rxcb, %struct.ath10k_skb_rxcb* %25, i32 0, i32 1
  %27 = call i32 @hash_del(i32* %26)
  %28 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %33, i32 0, i32 0
  %35 = load %struct.ath10k*, %struct.ath10k** %34, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ath10k_skb_rxcb*, %struct.ath10k_skb_rxcb** %7, align 8
  %39 = getelementptr inbounds %struct.ath10k_skb_rxcb, %struct.ath10k_skb_rxcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i64 @skb_tailroom(%struct.sk_buff* %44)
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32 %37, i32 %40, i64 %46, i32 %47)
  %49 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %50 = load i32, i32* @ATH10K_DBG_HTT_DUMP, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i64 @skb_tailroom(%struct.sk_buff* %57)
  %59 = add nsw i64 %56, %58
  %60 = call i32 @ath10k_dbg_dump(%struct.ath10k* %49, i32 %50, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %61, %struct.sk_buff** %3, align 8
  br label %62

62:                                               ; preds = %22, %21
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %63
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.sk_buff* @ath10k_htt_rx_find_skb_paddr(%struct.ath10k*, i32) #1

declare dso_local %struct.ath10k_skb_rxcb* @ATH10K_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
