; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_tx_status(%struct.ar9170* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @carl9170_tx_accounting_free(%struct.ar9170* %8, %struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %7, align 8
  %13 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %16 = call i32 @carl9170_tx_bar_status(%struct.ar9170* %13, %struct.sk_buff* %14, %struct.ieee80211_tx_info* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %27 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %41 = call i32 @carl9170_tx_status_process_ampdu(%struct.ar9170* %38, %struct.sk_buff* %39, %struct.ieee80211_tx_info* %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @carl9170_tx_ps_unblock(%struct.ar9170* %43, %struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @carl9170_tx_put_skb(%struct.sk_buff* %46)
  ret void
}

declare dso_local i32 @carl9170_tx_accounting_free(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_bar_status(%struct.ar9170*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @carl9170_tx_status_process_ampdu(%struct.ar9170*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @carl9170_tx_ps_unblock(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_put_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
