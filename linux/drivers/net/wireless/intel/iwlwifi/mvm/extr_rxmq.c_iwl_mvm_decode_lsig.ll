; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_decode_lsig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_decode_lsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iwl_mvm_rx_phy_data = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_radiotap_lsig = type { i32, i32 }

@IEEE80211_RADIOTAP_LSIG_DATA1_LENGTH_KNOWN = common dso_local global i32 0, align 4
@IWL_RX_PHY_DATA1_LSIG_LEN_MASK = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_LSIG_DATA2_LENGTH = common dso_local global i32 0, align 4
@RX_FLAG_RADIOTAP_LSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.iwl_mvm_rx_phy_data*)* @iwl_mvm_decode_lsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_decode_lsig(%struct.sk_buff* %0, %struct.iwl_mvm_rx_phy_data* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iwl_mvm_rx_phy_data*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_radiotap_lsig*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.iwl_mvm_rx_phy_data* %1, %struct.iwl_mvm_rx_phy_data** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %7)
  store %struct.ieee80211_rx_status* %8, %struct.ieee80211_rx_status** %5, align 8
  %9 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %33 [
    i32 130, label %12
    i32 128, label %12
    i32 129, label %12
    i32 131, label %12
    i32 133, label %12
    i32 135, label %12
    i32 134, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.ieee80211_radiotap_lsig* @skb_put(%struct.sk_buff* %13, i32 8)
  store %struct.ieee80211_radiotap_lsig* %14, %struct.ieee80211_radiotap_lsig** %6, align 8
  %15 = load i32, i32* @IEEE80211_RADIOTAP_LSIG_DATA1_LENGTH_KNOWN, align 4
  %16 = call i32 @cpu_to_le16(i32 %15)
  %17 = load %struct.ieee80211_radiotap_lsig*, %struct.ieee80211_radiotap_lsig** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_radiotap_lsig, %struct.ieee80211_radiotap_lsig* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.iwl_mvm_rx_phy_data*, %struct.iwl_mvm_rx_phy_data** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, %struct.iwl_mvm_rx_phy_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IWL_RX_PHY_DATA1_LSIG_LEN_MASK, align 4
  %23 = call i32 @le32_get_bits(i32 %21, i32 %22)
  %24 = load i32, i32* @IEEE80211_RADIOTAP_LSIG_DATA2_LENGTH, align 4
  %25 = call i32 @le16_encode_bits(i32 %23, i32 %24)
  %26 = load %struct.ieee80211_radiotap_lsig*, %struct.ieee80211_radiotap_lsig** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_radiotap_lsig, %struct.ieee80211_radiotap_lsig* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @RX_FLAG_RADIOTAP_LSIG, align 4
  %29 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %12
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_radiotap_lsig* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_encode_bits(i32, i32) #1

declare dso_local i32 @le32_get_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
