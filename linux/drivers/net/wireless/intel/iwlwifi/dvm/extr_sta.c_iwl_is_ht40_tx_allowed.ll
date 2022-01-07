; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_is_ht40_tx_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_is_ht40_tx_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64 }
%struct.iwl_rxon_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_sta = type { i64 }

@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_is_ht40_tx_allowed(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %22 = icmp ne %struct.ieee80211_sta* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %31

24:                                               ; preds = %20
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %29 = icmp sge i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %23, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
