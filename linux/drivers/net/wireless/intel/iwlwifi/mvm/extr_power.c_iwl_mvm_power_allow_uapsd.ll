; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_allow_uapsd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_allow_uapsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_ENABLE_BIT = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_p2p_standalone_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_power_allow_uapsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_power_allow_uapsd(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %8)
  store %struct.iwl_mvm_vif* %9, %struct.iwl_mvm_vif** %6, align 8
  %10 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcmp(i32 %12, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %26, %21
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %38 = call i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm* %37)
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %63

41:                                               ; preds = %36
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = call i32 @iwl_mvm_is_p2p_scm_uapsd_supported(%struct.iwl_mvm* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

51:                                               ; preds = %46
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %56 = load i32, i32* @iwl_mvm_p2p_standalone_iterator, align 4
  %57 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %54, i32 %55, i32 %56, i32* %7)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %63

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %41
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %50, %40, %35, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_is_p2p_scm_uapsd_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
