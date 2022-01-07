; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_cancel_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_cancel_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [37 x i8] c"TDLS cancel channel switch with %pM\0A\00", align 1
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"No ch switch peer - %pM\0A\00", align 1
@IWL_MVM_TDLS_SW_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"TDLS ending channel switch with %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_tdls_cancel_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 1
  %46 = call i32 @lockdep_is_held(i32* %45)
  %47 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %43, i32 %46)
  store %struct.ieee80211_sta* %47, %struct.ieee80211_sta** %8, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %50 = icmp ne %struct.ieee80211_sta* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %87

52:                                               ; preds = %33
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %56, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IWL_MVM_TDLS_SW_IDLE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %63, %52
  %72 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @dev_kfree_skb(i32* %81)
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %71, %51, %27
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %97, %101
  %103 = call i32 @TU_TO_MS(i32 %102)
  %104 = call i32 @msleep(i32 %103)
  br label %105

105:                                              ; preds = %93, %87
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = call i32 @flush_delayed_work(i32* %108)
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %111 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @TU_TO_MS(i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
