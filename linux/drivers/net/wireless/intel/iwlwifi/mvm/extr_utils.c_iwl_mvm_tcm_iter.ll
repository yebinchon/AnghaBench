; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_tcm_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_tcm_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_tcm_iter_data = type { i32, %struct.iwl_mvm* }
%struct.iwl_mvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.iwl_mvm_vif = type { i32, i64 }

@LOW_LATENCY_TRAFFIC = common dso_local global i32 0, align 4
@NUM_MAC_INDEX_DRIVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_tcm_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_tcm_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_tcm_iter_data*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iwl_mvm_tcm_iter_data*
  store %struct.iwl_mvm_tcm_iter_data* %13, %struct.iwl_mvm_tcm_iter_data** %7, align 8
  %14 = load %struct.iwl_mvm_tcm_iter_data*, %struct.iwl_mvm_tcm_iter_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_tcm_iter_data, %struct.iwl_mvm_tcm_iter_data* %14, i32 0, i32 1
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %15, align 8
  store %struct.iwl_mvm* %16, %struct.iwl_mvm** %8, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %18 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %17)
  store %struct.iwl_mvm_vif* %18, %struct.iwl_mvm_vif** %9, align 8
  %19 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LOW_LATENCY_TRAFFIC, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NUM_MAC_INDEX_DRIVER, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %75

30:                                               ; preds = %3
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %58 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %57, i32 0, i32* null)
  br label %75

59:                                               ; preds = %52, %30
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @LOW_LATENCY_TRAFFIC, align 4
  %68 = call i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm* %64, %struct.ieee80211_vif* %65, i32 %66, i32 %67)
  br label %72

69:                                               ; preds = %59
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %71 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %70, i32 0, i32* null)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.iwl_mvm_tcm_iter_data*, %struct.iwl_mvm_tcm_iter_data** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_tcm_iter_data, %struct.iwl_mvm_tcm_iter_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %56, %29
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_update_low_latency(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
