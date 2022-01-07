; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i64 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm* %0, %struct.iwl_mvm_phy_ctxt* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.cfg80211_chan_def, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm_phy_ctxt* %1, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %13 = icmp ne %struct.iwl_mvm_phy_ctxt* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %19
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %7, align 8
  %29 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %39, %28
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %32 = icmp ne %struct.ieee80211_supported_band* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %36 = icmp ult i32 %34, %35
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %46, i64 %49
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, align 8
  store %struct.ieee80211_supported_band* %51, %struct.ieee80211_supported_band** %7, align 8
  br label %30

52:                                               ; preds = %37
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %54 = icmp ne %struct.ieee80211_supported_band* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %71

60:                                               ; preds = %52
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %62, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i64 0
  store %struct.ieee80211_channel* %64, %struct.ieee80211_channel** %5, align 8
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %66 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %67 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %6, %struct.ieee80211_channel* %65, i32 %66)
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %69 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %70 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %68, %struct.iwl_mvm_phy_ctxt* %69, %struct.cfg80211_chan_def* %6, i32 1, i32 1)
  br label %71

71:                                               ; preds = %18, %59, %60, %19
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, %struct.cfg80211_chan_def*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
