; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_check_he_obss_narrow_bw_ru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_check_he_obss_narrow_bw_ru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_he_obss_narrow_bw_ru_data = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@__const.iwl_mvm_check_he_obss_narrow_bw_ru.iter_data = private unnamed_addr constant %struct.iwl_mvm_he_obss_narrow_bw_ru_data { i32 1 }, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@iwl_mvm_check_he_obss_narrow_bw_ru_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_check_he_obss_narrow_bw_ru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_check_he_obss_narrow_bw_ru(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_he_obss_narrow_bw_ru_data, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %7)
  store %struct.iwl_mvm_vif* %8, %struct.iwl_mvm_vif** %5, align 8
  %9 = bitcast %struct.iwl_mvm_he_obss_narrow_bw_ru_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.iwl_mvm_he_obss_narrow_bw_ru_data* @__const.iwl_mvm_check_he_obss_narrow_bw_ru.iter_data to i8*), i64 4, i1 false)
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* @iwl_mvm_check_he_obss_narrow_bw_ru_iter, align 4
  %31 = call i32 @cfg80211_bss_iter(i32 %26, %struct.TYPE_6__* %29, i32 %30, %struct.iwl_mvm_he_obss_narrow_bw_ru_data* %6)
  %32 = getelementptr inbounds %struct.iwl_mvm_he_obss_narrow_bw_ru_data, %struct.iwl_mvm_he_obss_narrow_bw_ru_data* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %23, %20
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_bss_iter(i32, %struct.TYPE_6__*, i32, %struct.iwl_mvm_he_obss_narrow_bw_ru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
