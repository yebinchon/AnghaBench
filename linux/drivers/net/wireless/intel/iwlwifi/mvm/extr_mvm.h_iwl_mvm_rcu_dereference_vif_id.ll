; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_rcu_dereference_vif_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_rcu_dereference_vif_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_vif* (%struct.iwl_mvm*, i64, i32)* @iwl_mvm_rcu_dereference_vif_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @ARRAY_SIZE(i32* %11)
  %13 = icmp uge i64 %8, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %4, align 8
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ieee80211_vif* @rcu_dereference(i32 %27)
  store %struct.ieee80211_vif* %28, %struct.ieee80211_vif** %4, align 8
  br label %40

29:                                               ; preds = %18
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = call i32 @lockdep_is_held(i32* %37)
  %39 = call %struct.ieee80211_vif* @rcu_dereference_protected(i32 %35, i32 %38)
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %4, align 8
  br label %40

40:                                               ; preds = %29, %21, %17
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  ret %struct.ieee80211_vif* %41
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_vif* @rcu_dereference(i32) #1

declare dso_local %struct.ieee80211_vif* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
