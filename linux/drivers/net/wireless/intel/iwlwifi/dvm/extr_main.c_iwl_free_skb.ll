; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_free_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_free_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_priv = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, %struct.sk_buff*)* @iwl_free_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_free_skb(%struct.iwl_op_mode* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.iwl_op_mode*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %3, align 8
  %8 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %7)
  store %struct.iwl_priv* %8, %struct.iwl_priv** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %6, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iwl_trans_free_tx_cmd(i32 %13, i32 %18)
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @ieee80211_free_txskb(i32 %22, %struct.sk_buff* %23)
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, i32) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
