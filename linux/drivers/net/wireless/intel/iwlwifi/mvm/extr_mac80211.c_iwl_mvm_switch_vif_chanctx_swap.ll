; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_switch_vif_chanctx_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_switch_vif_chanctx_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif_chanctx_switch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to add new_ctx during channel switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to assign new_ctx during channel switch\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to add old_ctx back after failure.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to reassign old_ctx after failure.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif_chanctx_switch*)* @iwl_mvm_switch_vif_chanctx_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_switch_vif_chanctx_swap(%struct.iwl_mvm* %0, %struct.ieee80211_vif_chanctx_switch* %1) #0 {
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
  %22 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__iwl_mvm_remove_chanctx(%struct.iwl_mvm* %19, i32 %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %26, i64 0
  %28 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__iwl_mvm_add_chanctx(%struct.iwl_mvm* %25, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = call i32 @IWL_ERR(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %67

36:                                               ; preds = %2
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %38, i64 0
  %40 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %42, i64 0
  %44 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm* %37, i32 %41, i32 %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = call i32 @IWL_ERR(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %60

52:                                               ; preds = %36
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %54 = call i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm* %53)
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %58 = call i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm* %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %97

60:                                               ; preds = %49
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %62 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %62, i64 0
  %64 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__iwl_mvm_remove_chanctx(%struct.iwl_mvm* %61, i32 %65)
  br label %67

67:                                               ; preds = %60, %33
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %69 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %69, i64 0
  %71 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__iwl_mvm_add_chanctx(%struct.iwl_mvm* %68, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %77 = call i32 @IWL_ERR(%struct.iwl_mvm* %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %94

78:                                               ; preds = %67
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %80 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %80, i64 0
  %82 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %84, i64 0
  %86 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm* %79, i32 %83, i32 %87, i32 1)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %92 = call i32 @IWL_ERR(%struct.iwl_mvm* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %94

93:                                               ; preds = %78
  br label %97

94:                                               ; preds = %90, %75
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %96 = call i32 @iwl_mvm_nic_restart(%struct.iwl_mvm* %95, i32 0)
  br label %97

97:                                               ; preds = %94, %93, %59
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__iwl_mvm_unassign_vif_chanctx(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @__iwl_mvm_remove_chanctx(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @__iwl_mvm_add_chanctx(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_nic_restart(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
