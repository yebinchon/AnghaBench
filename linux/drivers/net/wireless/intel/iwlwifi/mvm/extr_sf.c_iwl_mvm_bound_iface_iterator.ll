; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sf.c_iwl_mvm_bound_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sf.c_iwl_mvm_bound_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm_active_iface_iterator_data = type { i32, i32, i32, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { i32, i32 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SF_FULL_ON = common dso_local global i32 0, align 4
@SF_INIT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_bound_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bound_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_active_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iwl_mvm_active_iface_iterator_data*
  store %struct.iwl_mvm_active_iface_iterator_data* %10, %struct.iwl_mvm_active_iface_iterator_data** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = load %struct.iwl_mvm_active_iface_iterator_data*, %struct.iwl_mvm_active_iface_iterator_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %14, i32 0, i32 3
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %17 = icmp eq %struct.ieee80211_vif* %13, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18, %3
  br label %60

30:                                               ; preds = %23
  %31 = load %struct.iwl_mvm_active_iface_iterator_data*, %struct.iwl_mvm_active_iface_iterator_data** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %30
  %41 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwl_mvm_active_iface_iterator_data*, %struct.iwl_mvm_active_iface_iterator_data** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @SF_FULL_ON, align 4
  %53 = load %struct.iwl_mvm_active_iface_iterator_data*, %struct.iwl_mvm_active_iface_iterator_data** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %40
  %56 = load i32, i32* @SF_INIT_OFF, align 4
  %57 = load %struct.iwl_mvm_active_iface_iterator_data*, %struct.iwl_mvm_active_iface_iterator_data** %7, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, %struct.iwl_mvm_active_iface_iterator_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %29, %59, %30
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
