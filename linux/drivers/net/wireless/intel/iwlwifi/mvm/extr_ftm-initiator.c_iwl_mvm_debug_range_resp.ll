; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_debug_range_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_debug_range_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.cfg80211_pmsr_result = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"entry %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09status: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09BSSID: %pM\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09host time: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09burst index: %hhu\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\09success num: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09rssi: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09rssi spread: %hhu\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\09rtt: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09rtt var: %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09rtt spread: %llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\09distance: %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32, %struct.cfg80211_pmsr_result*)* @iwl_mvm_debug_range_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_debug_range_resp(%struct.iwl_mvm* %0, i32 %1, %struct.cfg80211_pmsr_result* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_pmsr_result*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cfg80211_pmsr_result* %2, %struct.cfg80211_pmsr_result** %6, align 8
  %8 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %9 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 100
  %13 = call i32 @div_s64(i32 %12, i32 6666)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %19 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %23 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %28 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %39 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %45 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %51 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %52 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %57 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %58 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %63 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %64 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %66)
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %69 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %6, align 8
  %70 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %72)
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
