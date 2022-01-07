; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c___carl9170_tx_process_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c___carl9170_tx_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@ar9170_qmap = common dso_local global i32* null, align 8
@CARL9170_TX_STATUS_QUEUE = common dso_local global i64 0, align 8
@CARL9170_TX_STATUS_SUCCESS = common dso_local global i64 0, align 8
@CARL9170_TX_STATUS_RIX = common dso_local global i64 0, align 8
@CARL9170_TX_STATUS_RIX_S = common dso_local global i64 0, align 8
@CARL9170_TX_STATUS_TRIES = common dso_local global i64 0, align 8
@CARL9170_TX_STATUS_TRIES_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i64, i64)* @__carl9170_tx_process_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__carl9170_tx_process_status(%struct.ar9170* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** @ar9170_qmap, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CARL9170_TX_STATUS_QUEUE, align 8
  %16 = and i64 %14, %15
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %22 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call %struct.sk_buff* @carl9170_get_queued_skb(%struct.ar9170* %19, i64 %20, i32* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %61

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %32)
  store %struct.ieee80211_tx_info* %33, %struct.ieee80211_tx_info** %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @CARL9170_TX_STATUS_SUCCESS, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @CARL9170_TX_STATUS_RIX, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @CARL9170_TX_STATUS_RIX_S, align 8
  %44 = lshr i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @CARL9170_TX_STATUS_TRIES, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @CARL9170_TX_STATUS_TRIES_S, align 8
  %50 = lshr i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %56 = call i32 @carl9170_tx_fill_rateinfo(%struct.ar9170* %52, i32 %53, i32 %54, %struct.ieee80211_tx_info* %55)
  %57 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @carl9170_tx_status(%struct.ar9170* %57, %struct.sk_buff* %58, i32 %59)
  br label %61

61:                                               ; preds = %39, %30
  ret void
}

declare dso_local %struct.sk_buff* @carl9170_get_queued_skb(%struct.ar9170*, i64, i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_fill_rateinfo(%struct.ar9170*, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @carl9170_tx_status(%struct.ar9170*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
