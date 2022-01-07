; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_wake_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_wake_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_txq = type { i32 }

@HTT_TX_MODE_SWITCH_PUSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_txq*)* @ath10k_mac_op_wake_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_op_wake_tx_queue(%struct.ieee80211_hw* %0, %struct.ieee80211_txq* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_txq*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %13 = call i32 @ath10k_htt_tx_txq_update(%struct.ieee80211_hw* %11, %struct.ieee80211_txq* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HTT_TX_MODE_SWITCH_PUSH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ieee80211_txq_schedule_start(%struct.ieee80211_hw* %26, i32 %27)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.ieee80211_txq* @ieee80211_next_txq(%struct.ieee80211_hw* %29, i32 %30)
  store %struct.ieee80211_txq* %31, %struct.ieee80211_txq** %4, align 8
  %32 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %33 = icmp ne %struct.ieee80211_txq* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %56

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %48, %35
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %39 = call i64 @ath10k_mac_tx_can_push(%struct.ieee80211_hw* %37, %struct.ieee80211_txq* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %44 = call i32 @ath10k_mac_tx_push_txq(%struct.ieee80211_hw* %42, %struct.ieee80211_txq* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %49

48:                                               ; preds = %41
  br label %36

49:                                               ; preds = %47, %36
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %52 = call i32 @ieee80211_return_txq(%struct.ieee80211_hw* %50, %struct.ieee80211_txq* %51, i32 0)
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %55 = call i32 @ath10k_htt_tx_txq_update(%struct.ieee80211_hw* %53, %struct.ieee80211_txq* %54)
  br label %56

56:                                               ; preds = %49, %34
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ieee80211_txq_schedule_end(%struct.ieee80211_hw* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %21
  ret void
}

declare dso_local i32 @ath10k_htt_tx_txq_update(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ieee80211_txq_schedule_start(%struct.ieee80211_hw*, i32) #1

declare dso_local %struct.ieee80211_txq* @ieee80211_next_txq(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @ath10k_mac_tx_can_push(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ath10k_mac_tx_push_txq(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ieee80211_return_txq(%struct.ieee80211_hw*, %struct.ieee80211_txq*, i32) #1

declare dso_local i32 @ieee80211_txq_schedule_end(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
