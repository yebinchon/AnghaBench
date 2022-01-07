; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_restore_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_restore_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ath10k_skb_cb = type { i32 }

@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htc*, %struct.sk_buff*)* @ath10k_htc_restore_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htc_restore_tx_skb(%struct.ath10k_htc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k_htc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k_skb_cb*, align 8
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %6)
  store %struct.ath10k_skb_cb* %7, %struct.ath10k_skb_cb** %5, align 8
  %8 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %21, i32 %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %16, %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @skb_pull(%struct.sk_buff* %31, i32 4)
  ret void
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
