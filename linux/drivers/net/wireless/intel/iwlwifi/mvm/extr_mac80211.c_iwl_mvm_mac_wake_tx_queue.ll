; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_wake_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_wake_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_txq = type { i64 }
%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_mvm_txq = type { i64, i32 }

@IWL_MVM_INVALID_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_txq*)* @iwl_mvm_mac_wake_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_wake_tx_queue(%struct.ieee80211_hw* %0, %struct.ieee80211_txq* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_txq*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_txq*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %7)
  store %struct.iwl_mvm* %8, %struct.iwl_mvm** %5, align 8
  %9 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %10 = call %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(%struct.ieee80211_txq* %9)
  store %struct.iwl_mvm_txq* %10, %struct.iwl_mvm_txq** %6, align 8
  %11 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15, %2
  %22 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %27, i32 0, i32 1
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i1 [ false, %21 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %57

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %41 = call i32 @iwl_mvm_mac_itxq_xmit(%struct.ieee80211_hw* %39, %struct.ieee80211_txq* %40)
  br label %57

42:                                               ; preds = %15
  %43 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %43, i32 0, i32 1
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %57

48:                                               ; preds = %42
  %49 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %49, i32 0, i32 1
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 1
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 0
  %56 = call i32 @schedule_work(i32* %55)
  br label %57

57:                                               ; preds = %48, %47, %38, %37
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(%struct.ieee80211_txq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iwl_mvm_mac_itxq_xmit(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
