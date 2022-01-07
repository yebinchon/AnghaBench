; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_mac_iface_iterator_data = type { i32, i32, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_mac_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_mac_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iwl_mvm_mac_iface_iterator_data*
  store %struct.iwl_mvm_mac_iface_iterator_data* %10, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %17 = icmp eq %struct.ieee80211_vif* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__clear_bit(i32 %24, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = call i32 @iwl_mvm_mac_tsf_id_iter(i8* %29, i32* %30, %struct.ieee80211_vif* %31)
  br label %33

33:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @iwl_mvm_mac_tsf_id_iter(i8*, i32*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
