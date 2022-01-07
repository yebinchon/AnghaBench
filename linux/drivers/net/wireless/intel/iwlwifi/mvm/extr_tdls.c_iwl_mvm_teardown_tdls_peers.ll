; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_teardown_tdls_peers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_teardown_tdls_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_sta = type { i32, i32 }
%struct.iwl_mvm_sta = type { i32 }

@NL80211_TDLS_TEARDOWN = common dso_local global i32 0, align 4
@WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.iwl_mvm_sta*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %9
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 0
  %26 = call i32 @lockdep_is_held(i32* %25)
  %27 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %23, i32 %26)
  store %struct.ieee80211_sta* %27, %struct.ieee80211_sta** %3, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %29 = icmp ne %struct.ieee80211_sta* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %16
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %32 = call i64 @IS_ERR(%struct.ieee80211_sta* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %30, %16
  br label %53

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %42 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %41)
  store %struct.iwl_mvm_sta* %42, %struct.iwl_mvm_sta** %4, align 8
  %43 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %4, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NL80211_TDLS_TEARDOWN, align 4
  %50 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @ieee80211_tdls_oper_request(i32 %45, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %40, %39
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %9

56:                                               ; preds = %9
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_tdls_oper_request(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
