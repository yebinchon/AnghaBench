; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_rx_phyinfo_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_dbgfs_rx_phyinfo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm* }
%struct.iwl_mvm = type { i64, i32, %struct.iwl_mvm_phy_ctxt* }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_vif*, i8*, i64, i32*)* @iwl_dbgfs_rx_phyinfo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbgfs_rx_phyinfo_write(%struct.ieee80211_vif* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm*, align 8
  %12 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %13 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %16)
  store %struct.iwl_mvm_vif* %17, %struct.iwl_mvm_vif** %10, align 8
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 0
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %19, align 8
  store %struct.iwl_mvm* %20, %struct.iwl_mvm** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @kstrtou16(i8* %21, i32 0, i64* %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %5, align 4
  br label %82

27:                                               ; preds = %4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %34)
  store %struct.ieee80211_chanctx_conf* %35, %struct.ieee80211_chanctx_conf** %12, align 8
  %36 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %37 = icmp ne %struct.ieee80211_chanctx_conf* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %27
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %82

45:                                               ; preds = %27
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 2
  %48 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %47, align 8
  %49 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %48, i64 %53
  store %struct.iwl_mvm_phy_ctxt* %54, %struct.iwl_mvm_phy_ctxt** %13, align 8
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %60 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %13, align 8
  %61 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %62 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %61, i32 0, i32 2
  %63 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %64 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %67 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %59, %struct.iwl_mvm_phy_ctxt* %60, i32* %62, i32 %65, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %45
  %76 = sext i32 %73 to i64
  br label %79

77:                                               ; preds = %45
  %78 = load i64, i64* %8, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %38, %25
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
