; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_4__* }

@FW_CTXT_ACTION_MODIFY = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %0, %struct.iwl_mvm_phy_ctxt* %1, %struct.cfg80211_chan_def* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %9 = alloca %struct.cfg80211_chan_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.iwl_mvm_phy_ctxt* %1, %struct.iwl_mvm_phy_ctxt** %8, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @FW_CTXT_ACTION_MODIFY, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* @IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT, align 4
  %23 = call i64 @fw_has_capa(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %5
  %26 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %25
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %39 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  %44 = call i32 @iwl_mvm_phy_ctxt_apply(%struct.iwl_mvm* %38, %struct.iwl_mvm_phy_ctxt* %39, %struct.cfg80211_chan_def* %40, i32 %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %69

49:                                               ; preds = %37
  %50 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %25, %5
  %52 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %53 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %55, i32 0, i32 1
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %63 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %64 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @iwl_mvm_phy_ctxt_apply(%struct.iwl_mvm* %62, %struct.iwl_mvm_phy_ctxt* %63, %struct.cfg80211_chan_def* %64, i32 %65, i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %51, %47
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_apply(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, %struct.cfg80211_chan_def*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
