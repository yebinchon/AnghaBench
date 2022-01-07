; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_rx_mpdu_desc = type { i32 }
%struct.iwl_mvm_sta = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@IWL_RX_L3L4_L3_PROTO_MASK = common dso_local global i32 0, align 4
@IWL_RX_L3_PROTO_POS = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IWL_RX_L3L4_TCP_UDP_CSUM_OK = common dso_local global i32 0, align 4
@IWL_RX_L3L4_IP_HDR_CSUM_OK = common dso_local global i32 0, align 4
@IWL_RX_L3_TYPE_IPV6 = common dso_local global i64 0, align 8
@IWL_RX_L3_TYPE_IPV6_FRAG = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta*, %struct.sk_buff*, %struct.iwl_rx_mpdu_desc*)* @iwl_mvm_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_csum(%struct.ieee80211_sta* %0, %struct.sk_buff* %1, %struct.iwl_rx_mpdu_desc* %2) #0 {
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iwl_rx_mpdu_desc*, align 8
  %7 = alloca %struct.iwl_mvm_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.iwl_rx_mpdu_desc* %2, %struct.iwl_rx_mpdu_desc** %6, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %12 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %11)
  store %struct.iwl_mvm_sta* %12, %struct.iwl_mvm_sta** %7, align 8
  %13 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i32 %15)
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %8, align 8
  %17 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IWL_RX_L3L4_L3_PROTO_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @IWL_RX_L3_PROTO_POS, align 4
  %25 = ashr i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IWL_RX_L3L4_TCP_UDP_CSUM_OK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IWL_RX_L3L4_IP_HDR_CSUM_OK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @IWL_RX_L3_TYPE_IPV6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @IWL_RX_L3_TYPE_IPV6_FRAG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43, %38
  %52 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47, %33, %3
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
