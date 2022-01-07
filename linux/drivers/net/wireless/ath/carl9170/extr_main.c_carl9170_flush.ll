; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i32)* @carl9170_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_flush(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %47, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %42, %19
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call %struct.sk_buff* @skb_dequeue(i32* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %30)
  store %struct.ieee80211_tx_info* %31, %struct.ieee80211_tx_info** %7, align 8
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %40 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %39, i32 0, i32 2
  %41 = call i32 @atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @carl9170_tx_status(%struct.ar9170* %43, %struct.sk_buff* %44, i32 0)
  br label %20

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %11

50:                                               ; preds = %11
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 1
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %58 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %57, i32 0, i32 0
  %59 = load i32, i32* @HZ, align 4
  %60 = call i64 @wait_for_completion_timeout(i32* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  br label %64

64:                                               ; preds = %56, %51
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @carl9170_tx_status(%struct.ar9170*, %struct.sk_buff*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
