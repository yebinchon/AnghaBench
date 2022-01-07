; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_is_dcm_with_go_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_is_dcm_with_go_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_is_dcm_with_go_iterator_data = type { i32, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_is_dcm_with_go_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_is_dcm_with_go_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_is_dcm_with_go_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iwl_is_dcm_with_go_iterator_data*
  store %struct.iwl_is_dcm_with_go_iterator_data* %11, %struct.iwl_is_dcm_with_go_iterator_data** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = load %struct.iwl_is_dcm_with_go_iterator_data*, %struct.iwl_is_dcm_with_go_iterator_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_is_dcm_with_go_iterator_data, %struct.iwl_is_dcm_with_go_iterator_data* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %17 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %16)
  store %struct.iwl_mvm_vif* %17, %struct.iwl_mvm_vif** %9, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = load %struct.iwl_is_dcm_with_go_iterator_data*, %struct.iwl_is_dcm_with_go_iterator_data** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_is_dcm_with_go_iterator_data, %struct.iwl_is_dcm_with_go_iterator_data* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %22 = icmp eq %struct.ieee80211_vif* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.iwl_is_dcm_with_go_iterator_data*, %struct.iwl_is_dcm_with_go_iterator_data** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_is_dcm_with_go_iterator_data, %struct.iwl_is_dcm_with_go_iterator_data* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %23, %57, %45, %40, %35, %30, %24
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
