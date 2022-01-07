; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { i32, i32, %struct.sk_buff* }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }

@lbtf_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @lbtf_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.lbtf_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  store %struct.lbtf_private* %10, %struct.lbtf_private** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %13 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %12, i32 0, i32 2
  store %struct.sk_buff* %11, %struct.sk_buff** %13, align 8
  %14 = load i32, i32* @lbtf_wq, align 4
  %15 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %16 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %15, i32 0, i32 1
  %17 = call i32 @queue_work(i32 %14, i32* %16)
  %18 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %19 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ieee80211_stop_queues(i32 %20)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
