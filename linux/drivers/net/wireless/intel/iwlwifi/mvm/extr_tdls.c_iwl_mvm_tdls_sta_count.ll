; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_sta_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_sta_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { %struct.ieee80211_vif* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %59, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %12
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = call i32 @lockdep_is_held(i32* %28)
  %30 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %26, i32 %29)
  store %struct.ieee80211_sta* %30, %struct.ieee80211_sta** %5, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %32 = icmp ne %struct.ieee80211_sta* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %19
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %35 = call i64 @IS_ERR(%struct.ieee80211_sta* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %33, %19
  br label %59

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %45 = icmp ne %struct.ieee80211_vif* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %48 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %47)
  store %struct.iwl_mvm_sta* %48, %struct.iwl_mvm_sta** %6, align 8
  %49 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %50, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %53 = icmp ne %struct.ieee80211_vif* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %54, %42
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %12

62:                                               ; preds = %12
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
