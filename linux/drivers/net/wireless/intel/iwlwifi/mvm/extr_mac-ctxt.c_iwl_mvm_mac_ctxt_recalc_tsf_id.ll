; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_recalc_tsf_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_recalc_tsf_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_mvm_mac_iface_iterator_data = type { i64, i32, %struct.ieee80211_vif*, %struct.iwl_mvm* }

@NUM_TSF_IDS = common dso_local global i64 0, align 8
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@iwl_mvm_mac_tsf_id_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_mac_ctxt_recalc_tsf_id(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_mac_iface_iterator_data, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %7)
  store %struct.iwl_mvm_vif* %8, %struct.iwl_mvm_vif** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 0
  %10 = load i64, i64* @NUM_TSF_IDS, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 1
  %12 = load i64, i64* @NUM_TSF_IDS, align 8
  %13 = trunc i64 %12 to i32
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 2
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  store %struct.ieee80211_vif* %17, %struct.ieee80211_vif** %16, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 3
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm* %19, %struct.iwl_mvm** %18, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %24 = load i32, i32* @iwl_mvm_mac_tsf_id_iter, align 4
  %25 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %22, i32 %23, i32 %24, %struct.iwl_mvm_mac_iface_iterator_data* %6)
  %26 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NUM_TSF_IDS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %51

35:                                               ; preds = %2
  %36 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @test_bit(i64 %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @NUM_TSF_IDS, align 8
  %47 = call i64 @find_first_bit(i32 %45, i64 %46)
  %48 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %35
  br label %51

51:                                               ; preds = %50, %30
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_mac_iface_iterator_data*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
