; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_drv_mac80211_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_drv_mac80211_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.iwl_op_mode = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @rs_drv_mac80211_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_drv_mac80211_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.iwl_op_mode*, align 8
  %13 = alloca %struct.iwl_mvm*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca %struct.iwl_mvm_sta*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.iwl_op_mode*
  store %struct.iwl_op_mode* %21, %struct.iwl_op_mode** %12, align 8
  %22 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %12, align 8
  %23 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %22)
  store %struct.iwl_mvm* %23, %struct.iwl_mvm** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %14, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %27 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %26)
  store %struct.iwl_mvm_sta* %27, %struct.iwl_mvm_sta** %15, align 8
  %28 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %15, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  br label %58

33:                                               ; preds = %5
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ieee80211_is_data(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %33
  br label %58

47:                                               ; preds = %39
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %51 = call i32 @rs_get_tid(%struct.ieee80211_hdr* %50)
  %52 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_is_qos_nullfunc(i32 %55)
  %57 = call i32 @iwl_mvm_rs_tx_status(%struct.iwl_mvm* %48, %struct.ieee80211_sta* %49, i32 %51, %struct.ieee80211_tx_info* %52, i32 %56)
  br label %58

58:                                               ; preds = %47, %46, %32
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @iwl_mvm_rs_tx_status(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @rs_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
