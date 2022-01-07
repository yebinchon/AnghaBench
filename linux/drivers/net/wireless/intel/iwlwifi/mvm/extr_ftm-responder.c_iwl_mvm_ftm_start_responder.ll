; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-responder.c_iwl_mvm_ftm_start_responder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-responder.c_iwl_mvm_ftm_start_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.iwl_mvm_phy_ctxt*, i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_ftm_responder_params* }
%struct.ieee80211_ftm_responder_params = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot start responder, not in AP mode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_ftm_start_responder(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.ieee80211_ftm_responder_params*, align 8
  %8 = alloca %struct.ieee80211_chanctx_conf, align 8
  %9 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %6, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %17, align 8
  store %struct.ieee80211_ftm_responder_params* %18, %struct.ieee80211_ftm_responder_params** %7, align 8
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 1
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %106

34:                                               ; preds = %2
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45, %39, %34
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = call i32 @IWL_ERR(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %45
  %56 = call i32 (...) @rcu_read_lock()
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %59)
  store %struct.ieee80211_chanctx_conf* %60, %struct.ieee80211_chanctx_conf** %9, align 8
  %61 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %62 = bitcast %struct.ieee80211_chanctx_conf* %8 to i8*
  %63 = bitcast %struct.ieee80211_chanctx_conf* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  %64 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64* %67, i64** %10, align 8
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  %71 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %70, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %71, i64 %73
  store %struct.iwl_mvm_phy_ctxt* %74, %struct.iwl_mvm_phy_ctxt** %11, align 8
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %76 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %11, align 8
  %77 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %8, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %8, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %75, %struct.iwl_mvm_phy_ctxt* %76, i32* %77, i32 %79, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %55
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %106

87:                                               ; preds = %55
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %8, i32 0, i32 0
  %91 = call i32 @iwl_mvm_ftm_responder_cmd(%struct.iwl_mvm* %88, %struct.ieee80211_vif* %89, i32* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %87
  %97 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %7, align 8
  %98 = icmp ne %struct.ieee80211_ftm_responder_params* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %102 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %7, align 8
  %103 = call i32 @iwl_mvm_ftm_responder_dyn_cfg_cmd(%struct.iwl_mvm* %100, %struct.ieee80211_vif* %101, %struct.ieee80211_ftm_responder_params* %102)
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %94, %85, %50, %31
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_ftm_responder_cmd(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @iwl_mvm_ftm_responder_dyn_cfg_cmd(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_ftm_responder_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
