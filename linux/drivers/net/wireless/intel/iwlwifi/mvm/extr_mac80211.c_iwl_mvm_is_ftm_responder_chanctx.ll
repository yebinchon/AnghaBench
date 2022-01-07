; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_is_ftm_responder_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_is_ftm_responder_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32 }
%struct.iwl_mvm_ftm_responder_iter_data = type { i32, %struct.ieee80211_chanctx_conf* }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_ftm_responder_chanctx_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_chanctx_conf*)* @iwl_mvm_is_ftm_responder_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_is_ftm_responder_chanctx(%struct.iwl_mvm* %0, %struct.ieee80211_chanctx_conf* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %5 = alloca %struct.iwl_mvm_ftm_responder_iter_data, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_chanctx_conf* %1, %struct.ieee80211_chanctx_conf** %4, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm_ftm_responder_iter_data, %struct.iwl_mvm_ftm_responder_iter_data* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm_ftm_responder_iter_data, %struct.iwl_mvm_ftm_responder_iter_data* %5, i32 0, i32 1
  %8 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  store %struct.ieee80211_chanctx_conf* %8, %struct.ieee80211_chanctx_conf** %7, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %13 = load i32, i32* @iwl_mvm_ftm_responder_chanctx_iter, align 4
  %14 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %11, i32 %12, i32 %13, %struct.iwl_mvm_ftm_responder_iter_data* %5)
  %15 = getelementptr inbounds %struct.iwl_mvm_ftm_responder_iter_data, %struct.iwl_mvm_ftm_responder_iter_data* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  ret i32 %16
}

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_ftm_responder_iter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
