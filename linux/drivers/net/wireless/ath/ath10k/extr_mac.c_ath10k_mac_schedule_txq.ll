; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_schedule_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_schedule_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_txq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath10k_mac_schedule_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_schedule_txq(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_txq*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ieee80211_txq_schedule_start(%struct.ieee80211_hw* %7, i32 %8)
  br label %10

10:                                               ; preds = %41, %2
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ieee80211_txq* @ieee80211_next_txq(%struct.ieee80211_hw* %11, i32 %12)
  store %struct.ieee80211_txq* %13, %struct.ieee80211_txq** %5, align 8
  %14 = icmp ne %struct.ieee80211_txq* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %28, %15
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %19 = call i64 @ath10k_mac_tx_can_push(%struct.ieee80211_hw* %17, %struct.ieee80211_txq* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %24 = call i32 @ath10k_mac_tx_push_txq(%struct.ieee80211_hw* %22, %struct.ieee80211_txq* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  br label %16

29:                                               ; preds = %27, %16
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %32 = call i32 @ieee80211_return_txq(%struct.ieee80211_hw* %30, %struct.ieee80211_txq* %31, i32 0)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %35 = call i32 @ath10k_htt_tx_txq_update(%struct.ieee80211_hw* %33, %struct.ieee80211_txq* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %42

41:                                               ; preds = %29
  br label %10

42:                                               ; preds = %40, %10
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ieee80211_txq_schedule_end(%struct.ieee80211_hw* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @ieee80211_txq_schedule_start(%struct.ieee80211_hw*, i32) #1

declare dso_local %struct.ieee80211_txq* @ieee80211_next_txq(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @ath10k_mac_tx_can_push(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ath10k_mac_tx_push_txq(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ieee80211_return_txq(%struct.ieee80211_hw*, %struct.ieee80211_txq*, i32) #1

declare dso_local i32 @ath10k_htt_tx_txq_update(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @ieee80211_txq_schedule_end(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
