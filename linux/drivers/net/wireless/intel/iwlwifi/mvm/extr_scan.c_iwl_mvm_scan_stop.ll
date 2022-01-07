; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.iwl_mvm = type { i32, i32, i32, i32 }

@IWL_MVM_SCAN_STOPPING_SHIFT = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_REGULAR = common dso_local global i32 0, align 4
@__const.iwl_mvm_scan_stop.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@SCHED_SCAN_PASS_ALL_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = call i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %37

22:                                               ; preds = %17
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @iwl_mvm_scan_stop_wait(%struct.iwl_mvm* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IWL_MVM_SCAN_STOPPING_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %22
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %6, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 3
  %50 = call i32 @cancel_delayed_work(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = bitcast %struct.cfg80211_scan_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.iwl_mvm_scan_stop.info to i8*), i64 4, i1 false)
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ieee80211_scan_completed(i32 %57, %struct.cfg80211_scan_info* %9)
  br label %59

59:                                               ; preds = %53, %47
  br label %72

60:                                               ; preds = %37
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ieee80211_sched_scan_stopped(i32 %66)
  %68 = load i32, i32* @SCHED_SCAN_PASS_ALL_DISABLED, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %60
  br label %72

72:                                               ; preds = %71, %59
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @iwl_mvm_is_radio_killed(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_stop_wait(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @ieee80211_sched_scan_stopped(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
