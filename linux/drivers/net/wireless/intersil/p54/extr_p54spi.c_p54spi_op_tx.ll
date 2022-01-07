; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_op_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54s_priv* }
%struct.p54s_priv = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.p54_tx_info = type { i64 }
%struct.p54s_tx_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @p54spi_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54spi_op_tx(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54s_priv*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.p54_tx_info*, align 8
  %8 = alloca %struct.p54s_tx_info*, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.p54s_priv*, %struct.p54s_priv** %11, align 8
  store %struct.p54s_priv* %12, %struct.p54s_priv** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %6, align 8
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.p54_tx_info*
  store %struct.p54_tx_info* %18, %struct.p54_tx_info** %7, align 8
  %19 = load %struct.p54_tx_info*, %struct.p54_tx_info** %7, align 8
  %20 = getelementptr inbounds %struct.p54_tx_info, %struct.p54_tx_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.p54s_tx_info*
  store %struct.p54s_tx_info* %22, %struct.p54s_tx_info** %8, align 8
  %23 = call i32 @BUILD_BUG_ON(i32 0)
  %24 = load %struct.p54s_priv*, %struct.p54s_priv** %5, align 8
  %25 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.p54s_tx_info*, %struct.p54s_tx_info** %8, align 8
  %29 = getelementptr inbounds %struct.p54s_tx_info, %struct.p54s_tx_info* %28, i32 0, i32 0
  %30 = load %struct.p54s_priv*, %struct.p54s_priv** %5, align 8
  %31 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %30, i32 0, i32 3
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.p54s_priv*, %struct.p54s_priv** %5, align 8
  %34 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %33, i32 0, i32 2
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.p54s_priv*, %struct.p54s_priv** %5, align 8
  %38 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.p54s_priv*, %struct.p54s_priv** %5, align 8
  %41 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %40, i32 0, i32 0
  %42 = call i32 @ieee80211_queue_work(i32 %39, i32* %41)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
