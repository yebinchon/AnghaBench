; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_add_rtap_sniffer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_add_rtap_sniffer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_vendor_radiotap = type { i32, i32*, i32, i32, i32, i32, i64 }

@RX_FLAG_RADIOTAP_VENDOR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.sk_buff*)* @iwl_mvm_add_rtap_sniffer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_add_rtap_sniffer_config(%struct.iwl_mvm* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_vendor_radiotap*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %8)
  store %struct.ieee80211_rx_status* %9, %struct.ieee80211_rx_status** %5, align 8
  store i32 44, i32* %7, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %60

15:                                               ; preds = %2
  %16 = call i32 @BUILD_BUG_ON(i32 2)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.ieee80211_vendor_radiotap* @skb_put(%struct.sk_buff* %17, i32 46)
  store %struct.ieee80211_vendor_radiotap* %18, %struct.ieee80211_vendor_radiotap** %6, align 8
  %19 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 246, i32* %24, align 4
  %25 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 84, i32* %28, align 4
  %29 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 37, i32* %32, align 4
  %33 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %37, i32 0, i32 4
  store i32 4, i32* %38, align 8
  %39 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %39, i32 0, i32 5
  store i32 2, i32* %40, align 4
  %41 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 0
  %46 = call i32 @memcpy(i64 %43, i32* %45, i32 4)
  %47 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 4
  %51 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memset(i64 %50, i32 0, i32 %53)
  %55 = load i32, i32* @RX_FLAG_RADIOTAP_VENDOR_DATA, align 4
  %56 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.ieee80211_vendor_radiotap* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
