; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tx_skb(%struct.iwl_mvm* %0, %struct.sk_buff* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_sta*, align 8
  %9 = alloca %struct.ieee80211_tx_info, align 4
  %10 = alloca %struct.sk_buff_head, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %13)
  store %struct.iwl_mvm_sta* %14, %struct.iwl_mvm_sta** %8, align 8
  %15 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %16 = icmp ne %struct.iwl_mvm_sta* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %103

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(%struct.ieee80211_tx_info* %9, i32 %35, i32 4)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_is_gso(%struct.sk_buff* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %44 = call i32 @iwl_mvm_tx_mpdu(%struct.iwl_mvm* %41, %struct.sk_buff* %42, %struct.ieee80211_tx_info* %9, %struct.ieee80211_sta* %43)
  store i32 %44, i32* %4, align 4
  br label %103

45:                                               ; preds = %32
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @skb_tail_pointer(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @skb_transport_header(%struct.sk_buff* %48)
  %50 = sub i32 %47, %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @tcp_hdrlen(%struct.sk_buff* %51)
  %53 = sub i32 %50, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %53, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ule i32 %58, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %68 = call i32 @iwl_mvm_tx_mpdu(%struct.iwl_mvm* %65, %struct.sk_buff* %66, %struct.ieee80211_tx_info* %9, %struct.ieee80211_sta* %67)
  store i32 %68, i32* %4, align 4
  br label %103

69:                                               ; preds = %45
  %70 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %10)
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %74 = call i32 @iwl_mvm_tx_tso(%struct.iwl_mvm* %71, %struct.sk_buff* %72, %struct.ieee80211_tx_info* %9, %struct.ieee80211_sta* %73, %struct.sk_buff_head* %10)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %69
  %80 = call i32 @skb_queue_empty(%struct.sk_buff_head* %10)
  %81 = call i64 @WARN_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %103

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %101, %85
  %87 = call i32 @skb_queue_empty(%struct.sk_buff_head* %10)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %10)
  store %struct.sk_buff* %91, %struct.sk_buff** %6, align 8
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %95 = call i32 @iwl_mvm_tx_mpdu(%struct.iwl_mvm* %92, %struct.sk_buff* %93, %struct.ieee80211_tx_info* %9, %struct.ieee80211_sta* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %10)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %90
  br label %86

102:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %98, %83, %77, %64, %40, %31, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @iwl_mvm_tx_mpdu(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @iwl_mvm_tx_tso(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff_head*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
