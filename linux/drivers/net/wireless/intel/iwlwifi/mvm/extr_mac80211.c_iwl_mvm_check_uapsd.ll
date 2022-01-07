; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_check_uapsd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_check_uapsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.iwl_mvm_tcm_mac* }
%struct.iwl_mvm_tcm_mac = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_vif = type { i32, i64 }
%struct.TYPE_14__ = type { i64 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_FLAGS_UAPSD_SUPPORT = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_UAPSD = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@IWL_DISABLE_UAPSD_BSS = common dso_local global i32 0, align 4
@IWL_MVM_UAPSD_NOAGG_LIST_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32*)* @iwl_mvm_check_uapsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_check_uapsd(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm_tcm_mac*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 3
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %3
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %17, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = call %struct.TYPE_14__* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %18, i64 %22
  store %struct.iwl_mvm_tcm_mac* %23, %struct.iwl_mvm_tcm_mac** %8, align 8
  %24 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @ewma_rate_init(i32* %26)
  %28 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %14, %3
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IWL_UCODE_TLV_FLAGS_UAPSD_SUPPORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %108

41:                                               ; preds = %30
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = call i32 @iwl_mvm_is_p2p_scm_uapsd_supported(%struct.iwl_mvm* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %108

57:                                               ; preds = %46, %41
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %64 = load i32, i32* @IWL_DISABLE_UAPSD_BSS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %108

74:                                               ; preds = %62, %57
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %99, %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @IWL_MVM_UAPSD_NOAGG_LIST_LEN, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = call i64 @ether_addr_equal(i32 %87, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %108

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %75

102:                                              ; preds = %75
  %103 = load i32, i32* @IEEE80211_VIF_SUPPORTS_UAPSD, align 4
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %91, %67, %50, %40
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @ewma_rate_init(i32*) #1

declare dso_local i32 @iwl_mvm_is_p2p_scm_uapsd_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
