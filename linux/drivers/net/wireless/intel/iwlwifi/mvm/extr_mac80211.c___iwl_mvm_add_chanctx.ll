; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_add_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_add_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i64 }
%struct.cfg80211_chan_def = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Add channel context\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to add PHY context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_chanctx_conf*)* @__iwl_mvm_add_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iwl_mvm_add_chanctx(%struct.iwl_mvm* %0, %struct.ieee80211_chanctx_conf* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_chanctx_conf* %1, %struct.ieee80211_chanctx_conf** %4, align 8
  %10 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %5, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %16 = call i32 @iwl_mvm_is_ftm_responder_chanctx(%struct.iwl_mvm* %14, %struct.ieee80211_chanctx_conf* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %20, i32 0, i32 3
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %23, i32 0, i32 2
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi %struct.cfg80211_chan_def* [ %21, %19 ], [ %24, %22 ]
  store %struct.cfg80211_chan_def* %26, %struct.cfg80211_chan_def** %8, align 8
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = call i32 @lockdep_assert_held(i32* %28)
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %31 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = call %struct.iwl_mvm_phy_ctxt* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm* %32)
  store %struct.iwl_mvm_phy_ctxt* %33, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %34 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %35 = icmp ne %struct.iwl_mvm_phy_ctxt* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %63

39:                                               ; preds = %25
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %42 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %43 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %40, %struct.iwl_mvm_phy_ctxt* %41, %struct.cfg80211_chan_def* %42, i32 %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %54 = call i32 @IWL_ERR(%struct.iwl_mvm* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %63

55:                                               ; preds = %39
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %57 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %58 = call i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm* %56, %struct.iwl_mvm_phy_ctxt* %57)
  %59 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %52, %36
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @iwl_mvm_is_ftm_responder_chanctx(%struct.iwl_mvm*, %struct.ieee80211_chanctx_conf*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.iwl_mvm_phy_ctxt* @iwl_mvm_get_free_phy_ctxt(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_ref(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
