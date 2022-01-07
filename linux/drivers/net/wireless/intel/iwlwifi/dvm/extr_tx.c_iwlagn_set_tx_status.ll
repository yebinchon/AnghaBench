; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_set_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_set_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iwlagn_tx_resp = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.ieee80211_tx_info*, %struct.iwlagn_tx_resp*)* @iwlagn_set_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_set_tx_status(%struct.iwl_priv* %0, %struct.ieee80211_tx_info* %1, %struct.iwlagn_tx_resp* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.iwlagn_tx_resp*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %5, align 8
  store %struct.iwlagn_tx_resp* %2, %struct.iwlagn_tx_resp** %6, align 8
  %8 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %6, align 8
  %9 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %6, align 8
  %20 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @iwl_tx_status_to_mac80211(i32 %29)
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %36 = load %struct.iwlagn_tx_resp*, %struct.iwlagn_tx_resp** %6, align 8
  %37 = getelementptr inbounds %struct.iwlagn_tx_resp, %struct.iwlagn_tx_resp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %41 = call i32 @iwlagn_hwrate_to_tx_control(%struct.iwl_priv* %35, i32 %39, %struct.ieee80211_tx_info* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @iwl_is_tx_success(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %3
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @iwlagn_count_tx_err_status(%struct.iwl_priv* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %3
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iwl_tx_status_to_mac80211(i32) #1

declare dso_local i32 @iwlagn_hwrate_to_tx_control(%struct.iwl_priv*, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_is_tx_success(i32) #1

declare dso_local i32 @iwlagn_count_tx_err_status(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
