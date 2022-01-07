; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_tx_completion_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_tx_completion_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { %struct.ath10k_htc_ep* }
%struct.ath10k_htc_ep = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ath10k_skb_cb = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_htc_tx_completion_handler(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k_htc*, align 8
  %6 = alloca %struct.ath10k_skb_cb*, align 8
  %7 = alloca %struct.ath10k_htc_ep*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  store %struct.ath10k_htc* %9, %struct.ath10k_htc** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %18)
  store %struct.ath10k_skb_cb* %19, %struct.ath10k_skb_cb** %6, align 8
  %20 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %21 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %20, i32 0, i32 0
  %22 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %21, align 8
  %23 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %6, align 8
  %24 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %22, i64 %25
  store %struct.ath10k_htc_ep* %26, %struct.ath10k_htc_ep** %7, align 8
  %27 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @ath10k_htc_notify_tx_completion(%struct.ath10k_htc_ep* %27, %struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_htc_notify_tx_completion(%struct.ath10k_htc_ep*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
