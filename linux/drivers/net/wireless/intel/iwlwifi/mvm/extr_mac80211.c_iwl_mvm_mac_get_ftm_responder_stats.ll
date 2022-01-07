; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_get_ftm_responder_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_get_ftm_responder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_ftm_responder_stats = type { i32 }
%struct.iwl_mvm = type { i32, %struct.cfg80211_ftm_responder_stats }
%struct.iwl_mvm_vif = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_SUCCESS_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_PARTIAL_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_FAILED_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_ASAP_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_NON_ASAP_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_TOTAL_DURATION_MSEC = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_UNKNOWN_TRIGGERS_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_RESCHEDULE_REQUESTS_NUM = common dso_local global i32 0, align 4
@NL80211_FTM_STATS_OUT_OF_WINDOW_TRIGGERS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_ftm_responder_stats*)* @iwl_mvm_mac_get_ftm_responder_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_get_ftm_responder_stats(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_ftm_responder_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_ftm_responder_stats*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_ftm_responder_stats* %2, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %8, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %9, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %24, %18, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %29
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 1
  %45 = bitcast %struct.cfg80211_ftm_responder_stats* %42 to i8*
  %46 = bitcast %struct.cfg80211_ftm_responder_stats* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* @NL80211_FTM_STATS_SUCCESS_NUM, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* @NL80211_FTM_STATS_PARTIAL_NUM, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @NL80211_FTM_STATS_FAILED_NUM, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @NL80211_FTM_STATS_ASAP_NUM, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @NL80211_FTM_STATS_NON_ASAP_NUM, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* @NL80211_FTM_STATS_TOTAL_DURATION_MSEC, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* @NL80211_FTM_STATS_UNKNOWN_TRIGGERS_NUM, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @NL80211_FTM_STATS_RESCHEDULE_REQUESTS_NUM, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @NL80211_FTM_STATS_OUT_OF_WINDOW_TRIGGERS_NUM, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = or i32 %72, %74
  %76 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %77 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %38, %35
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
