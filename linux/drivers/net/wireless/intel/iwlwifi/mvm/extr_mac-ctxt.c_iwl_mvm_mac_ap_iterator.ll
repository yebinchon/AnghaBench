; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ap_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ap_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.iwl_mvm_mac_ap_iterator_data = type { i32, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_mac_ap_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_ap_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_mac_ap_iterator_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iwl_mvm_mac_ap_iterator_data*
  store %struct.iwl_mvm_mac_ap_iterator_data* %9, %struct.iwl_mvm_mac_ap_iterator_data** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %3
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.iwl_mvm_mac_ap_iterator_data*, %struct.iwl_mvm_mac_ap_iterator_data** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, %struct.iwl_mvm_mac_ap_iterator_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %46

33:                                               ; preds = %27, %22
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iwl_mvm_mac_ap_iterator_data*, %struct.iwl_mvm_mac_ap_iterator_data** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, %struct.iwl_mvm_mac_ap_iterator_data* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iwl_mvm_mac_ap_iterator_data*, %struct.iwl_mvm_mac_ap_iterator_data** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, %struct.iwl_mvm_mac_ap_iterator_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %33, %32, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
