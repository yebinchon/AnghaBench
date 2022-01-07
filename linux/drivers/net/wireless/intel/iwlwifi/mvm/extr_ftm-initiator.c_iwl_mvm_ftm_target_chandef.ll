; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_target_chandef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_target_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.cfg80211_pmsr_request_peer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IWL_TOF_BW_20_LEGACY = common dso_local global i32 0, align 4
@IWL_TOF_BW_20_HT = common dso_local global i32 0, align 4
@IWL_TOF_BW_40 = common dso_local global i32 0, align 4
@IWL_TOF_BW_80 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unsupported BW in FTM request (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.cfg80211_pmsr_request_peer*, i32*, i32*, i32*)* @iwl_mvm_ftm_target_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_ftm_target_chandef(%struct.iwl_mvm* %0, %struct.cfg80211_pmsr_request_peer* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.cfg80211_pmsr_request_peer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.cfg80211_pmsr_request_peer* %1, %struct.cfg80211_pmsr_request_peer** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %14 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @ieee80211_frequency_to_channel(i32 %19)
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %23 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %38 [
    i32 130, label %26
    i32 131, label %29
    i32 129, label %32
    i32 128, label %35
  ]

26:                                               ; preds = %5
  %27 = load i32, i32* @IWL_TOF_BW_20_LEGACY, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  br label %47

29:                                               ; preds = %5
  %30 = load i32, i32* @IWL_TOF_BW_20_HT, align 4
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  br label %47

32:                                               ; preds = %5
  %33 = load i32, i32* @IWL_TOF_BW_40, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %47

35:                                               ; preds = %5
  %36 = load i32, i32* @IWL_TOF_BW_80, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %47

38:                                               ; preds = %5
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %40 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %41 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IWL_ERR(%struct.iwl_mvm* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %61

47:                                               ; preds = %35, %32, %29, %26
  %48 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %49 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 131
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %55 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %54, i32 0, i32 0
  %56 = call i32 @iwl_mvm_get_ctrl_pos(%struct.TYPE_4__* %55)
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ 0, %57 ]
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %38
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_get_ctrl_pos(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
