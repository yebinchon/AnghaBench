; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_mvm = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @iwl_mvm_mac_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %8, align 8
  %12 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %21, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %17
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %38 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %38, i32 0, i32 1
  %40 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %40, i32 0, i32 0
  %42 = call i32 @iwl_mvm_reg_scan_start(%struct.iwl_mvm* %36, %struct.ieee80211_vif* %37, %struct.TYPE_6__* %39, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_reg_scan_start(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
