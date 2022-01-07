; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_key_rx_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_key_rx_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.iwl_wowlan_status = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %union.iwl_all_tsc_rsc }
%union.iwl_all_tsc_rsc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_key_conf*, %struct.iwl_wowlan_status*)* @iwl_mvm_set_key_rx_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_key_rx_seq(%struct.iwl_mvm* %0, %struct.ieee80211_key_conf* %1, %struct.iwl_wowlan_status* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca %struct.iwl_wowlan_status*, align 8
  %7 = alloca %union.iwl_all_tsc_rsc*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  store %struct.iwl_wowlan_status* %2, %struct.iwl_wowlan_status** %6, align 8
  %8 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %6, align 8
  %9 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %union.iwl_all_tsc_rsc* %13, %union.iwl_all_tsc_rsc** %7, align 8
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %32 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %3
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = load %union.iwl_all_tsc_rsc*, %union.iwl_all_tsc_rsc** %7, align 8
  %20 = bitcast %union.iwl_all_tsc_rsc* %19 to %struct.TYPE_7__*
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %24 = call i32 @iwl_mvm_set_aes_rx_seq(%struct.iwl_mvm* %18, i32 %22, i32* null, %struct.ieee80211_key_conf* %23)
  br label %34

25:                                               ; preds = %3
  %26 = load %union.iwl_all_tsc_rsc*, %union.iwl_all_tsc_rsc** %7, align 8
  %27 = bitcast %union.iwl_all_tsc_rsc* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %31 = call i32 @iwl_mvm_set_tkip_rx_seq(i32 %29, %struct.ieee80211_key_conf* %30)
  br label %34

32:                                               ; preds = %3
  %33 = call i32 @WARN_ON(i32 1)
  br label %34

34:                                               ; preds = %32, %25, %17
  ret void
}

declare dso_local i32 @iwl_mvm_set_aes_rx_seq(%struct.iwl_mvm*, i32, i32*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @iwl_mvm_set_tkip_rx_seq(i32, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
