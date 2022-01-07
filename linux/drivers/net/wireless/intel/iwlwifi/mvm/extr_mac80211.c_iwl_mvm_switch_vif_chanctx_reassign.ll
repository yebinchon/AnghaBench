; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_switch_vif_chanctx_reassign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_switch_vif_chanctx_reassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif_chanctx_switch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to assign new_ctx during channel switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to reassign old_ctx after failure.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif_chanctx_switch*)* @iwl_mvm_switch_vif_chanctx_reassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_switch_vif_chanctx_reassign(%struct.iwl_mvm* %0, %struct.ieee80211_vif_chanctx_switch* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif_chanctx_switch*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif_chanctx_switch* %1, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %10, i64 0
  %12 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %14, i64 0
  %16 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__iwl_mvm_unassign_vif_chanctx(%struct.iwl_mvm* %9, i32 %13, i32 %17, i32 1)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %20, i64 0
  %22 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %24, i64 0
  %26 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm* %19, i32 %23, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = call i32 @IWL_ERR(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %35

34:                                               ; preds = %2
  br label %54

35:                                               ; preds = %31
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %37, i64 0
  %39 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %41, i64 0
  %43 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm* %36, i32 %40, i32 %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = call i32 @IWL_ERR(%struct.iwl_mvm* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %51

50:                                               ; preds = %35
  br label %54

51:                                               ; preds = %47
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %53 = call i32 @iwl_mvm_nic_restart(%struct.iwl_mvm* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %50, %34
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__iwl_mvm_unassign_vif_chanctx(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_nic_restart(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
