; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.iwl_rx_packet = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_tx_resp = type { i32, i32, i32, i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_MVM_DQA_MIN_DATA_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_BSS_CLIENT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_packet*)* @iwl_mvm_rx_tx_cmd_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_tx_cmd_agg(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_mvm_tx_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_mvm_tx_resp*
  store %struct.iwl_mvm_tx_resp* %16, %struct.iwl_mvm_tx_resp** %5, align 8
  %17 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IWL_MVM_TX_RES_GET_RA(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IWL_MVM_TX_RES_GET_TID(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @le16_to_cpu(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @SEQ_TO_QUEUE(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @IWL_MVM_DQA_MIN_DATA_QUEUE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @IWL_MVM_DQA_BSS_CLIENT_QUEUE, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %35, %2
  %40 = phi i1 [ false, %2 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %126

45:                                               ; preds = %39
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %48 = call i32 @iwl_mvm_rx_tx_cmd_agg_dbg(%struct.iwl_mvm* %46, %struct.iwl_rx_packet* %47)
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm* %50, i32 %51)
  store %struct.iwl_mvm_sta* %52, %struct.iwl_mvm_sta** %9, align 8
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.ieee80211_sta* @rcu_dereference(i32 %59)
  store %struct.ieee80211_sta* %60, %struct.ieee80211_sta** %11, align 8
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %62 = icmp ne %struct.ieee80211_sta* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %45
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %45
  %70 = phi i1 [ true, %45 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON_ONCE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (...) @rcu_read_unlock()
  br label %126

76:                                               ; preds = %69
  %77 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %78 = icmp ne %struct.iwl_mvm_sta* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON_ONCE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %124, label %83

83:                                               ; preds = %76
  %84 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %87, i32* %94, align 8
  %95 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le16_to_cpu(i32 %97)
  %99 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %98, i8** %105, align 8
  %106 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @TX_RES_RATE_TABLE_COL_GET(i32 %108)
  %110 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 8
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %118 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %119 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le16_to_cpu(i32 %121)
  %123 = call i32 @iwl_mvm_tx_airtime(%struct.iwl_mvm* %117, %struct.iwl_mvm_sta* %118, i8* %122)
  br label %124

124:                                              ; preds = %83, %76
  %125 = call i32 (...) @rcu_read_unlock()
  br label %126

126:                                              ; preds = %124, %74, %44
  ret void
}

declare dso_local i32 @IWL_MVM_TX_RES_GET_RA(i32) #1

declare dso_local i32 @IWL_MVM_TX_RES_GET_TID(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_rx_tx_cmd_agg_dbg(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm*, i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TX_RES_RATE_TABLE_COL_GET(i32) #1

declare dso_local i32 @iwl_mvm_tx_airtime(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
