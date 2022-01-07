; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_itxq_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_itxq_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_txq = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_mvm_txq = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IWL_PLAT_PM_MODE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"TXQ of sta %pM tid %d is now empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_mac_itxq_xmit(%struct.ieee80211_hw* %0, %struct.ieee80211_txq* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_txq*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_txq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %11 = call %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(%struct.ieee80211_txq* %10)
  store %struct.iwl_mvm_txq* %11, %struct.iwl_mvm_txq** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %12 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %12, i32 0, i32 1
  %14 = call i64 @atomic_fetch_add_unless(i32* %13, i32 1, i32 2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %86

17:                                               ; preds = %2
  %18 = call i32 (...) @rcu_read_lock()
  br label %19

19:                                               ; preds = %79, %17
  br label %20

20:                                               ; preds = %77, %19
  %21 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_PLAT_PM_MODE_DISABLED, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %25, %20
  %34 = phi i1 [ false, %20 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %41 = call %struct.sk_buff* @ieee80211_tx_dequeue(%struct.ieee80211_hw* %39, %struct.ieee80211_txq* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %51 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @IWL_DEBUG_TX(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %44
  br label %78

61:                                               ; preds = %38
  %62 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm* %67, %struct.sk_buff* %68)
  br label %77

70:                                               ; preds = %61
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @iwl_mvm_tx_skb(%struct.iwl_mvm* %71, %struct.sk_buff* %72, %struct.TYPE_4__* %75)
  br label %77

77:                                               ; preds = %70, %66
  br label %20

78:                                               ; preds = %60, %33
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %6, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %80, i32 0, i32 1
  %82 = call i64 @atomic_dec_return(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %19, label %84

84:                                               ; preds = %79
  %85 = call i32 (...) @rcu_read_unlock()
  br label %86

86:                                               ; preds = %84, %16
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(%struct.ieee80211_txq*) #1

declare dso_local i64 @atomic_fetch_add_unless(i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_tx_dequeue(%struct.ieee80211_hw*, %struct.ieee80211_txq*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i32 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm*, %struct.sk_buff*) #1

declare dso_local i32 @iwl_mvm_tx_skb(%struct.iwl_mvm*, %struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
