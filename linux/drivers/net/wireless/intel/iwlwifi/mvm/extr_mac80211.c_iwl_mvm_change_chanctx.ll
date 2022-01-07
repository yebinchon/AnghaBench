; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_change_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_change_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i64 }
%struct.cfg80211_chan_def = type { i64 }
%struct.iwl_mvm = type { i32, %struct.iwl_mvm_phy_ctxt* }
%struct.iwl_mvm_phy_ctxt = type { i32, i64 }

@IEEE80211_CHANCTX_CHANGE_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_CHANGE_RX_CHAINS = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_CHANGE_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_CHANGE_MIN_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot change PHY. Ref=%d, changed=0x%X\0A\00", align 1
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_chanctx_conf*, i32)* @iwl_mvm_change_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_change_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_chanctx_conf* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_chanctx_conf* %1, %struct.ieee80211_chanctx_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %12)
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %7, align 8
  %14 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %8, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %19, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %20, i64 %22
  store %struct.iwl_mvm_phy_ctxt* %23, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %25 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %26 = call i32 @iwl_mvm_is_ftm_responder_chanctx(%struct.iwl_mvm* %24, %struct.ieee80211_chanctx_conf* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %30, i32 0, i32 3
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %33, i32 0, i32 2
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi %struct.cfg80211_chan_def* [ %31, %29 ], [ %34, %32 ]
  store %struct.cfg80211_chan_def* %36, %struct.cfg80211_chan_def** %11, align 8
  %37 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_WIDTH, align 4
  %44 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_RX_CHAINS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_RADAR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_MIN_WIDTH, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %42, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %41, %35
  %54 = phi i1 [ false, %35 ], [ %52, %41 ]
  %55 = zext i1 %54 to i32
  %56 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @WARN_ONCE(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %110

63:                                               ; preds = %53
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_MIN_WIDTH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %11, align 8
  %75 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %106

79:                                               ; preds = %70
  %80 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %11, align 8
  %87 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %106

92:                                               ; preds = %85, %79
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %95 = call i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm* %94)
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %97 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %98 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %11, align 8
  %99 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %103 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %96, %struct.iwl_mvm_phy_ctxt* %97, %struct.cfg80211_chan_def* %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %93, %91, %78
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  br label %110

110:                                              ; preds = %106, %62
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_is_ftm_responder_chanctx(%struct.iwl_mvm*, %struct.ieee80211_chanctx_conf*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
