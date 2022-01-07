; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_send_tx_feedback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_send_tx_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32, i32, i32, i32, i32* }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@lbtf_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbtf_send_tx_feedback(%struct.lbtf_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lbtf_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %9 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32* %10)
  store %struct.ieee80211_tx_info* %11, %struct.ieee80211_tx_info** %7, align 8
  %12 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %13 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %12)
  %14 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %20, %3
  %30 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %31 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @skb_pull(i32* %32, i32 4)
  %34 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %35 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %38 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ieee80211_tx_status_irqsafe(i32 %36, i32* %39)
  %41 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %42 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %44 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %29
  %48 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %49 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %48, i32 0, i32 2
  %50 = call i64 @skb_queue_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %54 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_wake_queues(i32 %55)
  br label %62

57:                                               ; preds = %47, %29
  %58 = load i32, i32* @lbtf_wq, align 4
  %59 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %60 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %59, i32 0, i32 0
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @skb_pull(i32*, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
