; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_coex_agg_time_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_coex_agg_time_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm_phy_ctxt* }
%struct.iwl_mvm_phy_ctxt = type { i32 }

@LINK_QUAL_AGG_TIME_LIMIT_DEF = common dso_local global i32 0, align 4
@BT_HIGH_TRAFFIC = common dso_local global i64 0, align 8
@BT_COEX_LOOSE_LUT = common dso_local global i32 0, align 4
@BT_COEX_INVALID_LUT = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_TIME_LIMIT_BT_ACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_coex_agg_time_limit(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %11 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %10)
  store %struct.iwl_mvm_sta* %11, %struct.iwl_mvm_sta** %6, align 8
  %12 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i32 %14)
  store %struct.iwl_mvm_vif* %15, %struct.iwl_mvm_vif** %7, align 8
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 0
  %18 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %17, align 8
  store %struct.iwl_mvm_phy_ctxt* %18, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @LINK_QUAL_AGG_TIME_LIMIT_DEF, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = load i64, i64* @BT_HIGH_TRAFFIC, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @LINK_QUAL_AGG_TIME_LIMIT_DEF, align 4
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %43 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @iwl_get_coex_type(%struct.iwl_mvm* %42, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @BT_COEX_LOOSE_LUT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @BT_COEX_INVALID_LUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %41
  %55 = load i32, i32* @LINK_QUAL_AGG_TIME_LIMIT_DEF, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @LINK_QUAL_AGG_TIME_LIMIT_BT_ACT, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %54, %39, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_get_coex_type(%struct.iwl_mvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
