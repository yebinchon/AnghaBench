; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_update_rate_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_update_rate_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.iwl_scale_tbl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*)* @rs_update_rate_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_update_rate_tbl(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.iwl_scale_tbl_info* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.iwl_scale_tbl_info*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.iwl_scale_tbl_info* %3, %struct.iwl_scale_tbl_info** %8, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %11 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %12 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %13 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %12, i32 0, i32 0
  %14 = call i32 @rs_fill_lq_cmd(%struct.iwl_mvm* %9, %struct.ieee80211_sta* %10, %struct.iwl_lq_sta* %11, i32* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 0
  %18 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %15, i32* %17)
  ret void
}

declare dso_local i32 @rs_fill_lq_cmd(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, i32*) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
