; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.station_info = type { i32, i64, i64, i64 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.iwl_mvm_sta = type { i64, i64 }

@NL80211_STA_INFO_SIGNAL_AVG = common dso_local global i32 0, align 4
@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@NL80211_STA_INFO_BEACON_RX = common dso_local global i32 0, align 4
@NL80211_STA_INFO_BEACON_SIGNAL_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.station_info*)* @iwl_mvm_mac_sta_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_sta_statistics(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.station_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.station_info*, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.station_info* %3, %struct.station_info** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %12)
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %9, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %14)
  store %struct.iwl_mvm_vif* %15, %struct.iwl_mvm_vif** %10, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %16)
  store %struct.iwl_mvm_sta* %17, %struct.iwl_mvm_sta** %11, align 8
  %18 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.station_info*, %struct.station_info** %8, align 8
  %27 = getelementptr inbounds %struct.station_info, %struct.station_info* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @NL80211_STA_INFO_SIGNAL_AVG, align 4
  %29 = call i32 @BIT_ULL(i32 %28)
  %30 = load %struct.station_info*, %struct.station_info** %8, align 8
  %31 = getelementptr inbounds %struct.station_info, %struct.station_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %22, %4
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %107

42:                                               ; preds = %34
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %107

49:                                               ; preds = %42
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %103

61:                                               ; preds = %49
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %63 = call i64 @iwl_mvm_request_statistics(%struct.iwl_mvm* %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %103

66:                                               ; preds = %61
  %67 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = load %struct.station_info*, %struct.station_info** %8, align 8
  %77 = getelementptr inbounds %struct.station_info, %struct.station_info* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @NL80211_STA_INFO_BEACON_RX, align 4
  %79 = call i32 @BIT_ULL(i32 %78)
  %80 = load %struct.station_info*, %struct.station_info** %8, align 8
  %81 = getelementptr inbounds %struct.station_info, %struct.station_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %66
  %90 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.station_info*, %struct.station_info** %8, align 8
  %95 = getelementptr inbounds %struct.station_info, %struct.station_info* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @NL80211_STA_INFO_BEACON_SIGNAL_AVG, align 4
  %97 = call i32 @BIT_ULL(i32 %96)
  %98 = load %struct.station_info*, %struct.station_info** %8, align 8
  %99 = getelementptr inbounds %struct.station_info, %struct.station_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %89, %66
  br label %103

103:                                              ; preds = %102, %65, %60
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %103, %48, %41
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_mvm_request_statistics(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
