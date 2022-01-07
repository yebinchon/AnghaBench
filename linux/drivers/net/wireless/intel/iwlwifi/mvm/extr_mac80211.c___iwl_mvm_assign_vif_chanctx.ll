; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_assign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_assign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__*, i32, %struct.iwl_mvm_phy_ctxt* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { i64 }
%struct.iwl_mvm_vif = type { i32, i32, i32, i32, %struct.iwl_mvm_phy_ctxt* }

@EINVAL = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*, i32)* @__iwl_mvm_assign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iwl_mvm_assign_vif_chanctx(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %11 = alloca %struct.iwl_mvm_vif*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %9, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 2
  %20 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %19, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %20, i64 %22
  store %struct.iwl_mvm_phy_ctxt* %23, %struct.iwl_mvm_phy_ctxt** %10, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %24)
  store %struct.iwl_mvm_vif* %25, %struct.iwl_mvm_vif** %11, align 8
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 1
  %28 = call i32 @lockdep_assert_held(i32* %27)
  %29 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %10, align 8
  %30 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %30, i32 0, i32 4
  store %struct.iwl_mvm_phy_ctxt* %29, %struct.iwl_mvm_phy_ctxt** %31, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %49 [
    i32 130, label %35
    i32 131, label %42
    i32 128, label %43
    i32 129, label %46
  ]

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %52

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %4, %41
  store i32 0, i32* %12, align 4
  br label %137

43:                                               ; preds = %4
  %44 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %52

46:                                               ; preds = %4
  %47 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  br label %52

49:                                               ; preds = %4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %137

52:                                               ; preds = %46, %43, %38
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %55 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %53, %struct.ieee80211_vif* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %137

59:                                               ; preds = %52
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %61 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %60)
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %70 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %69, i32 0, i32* null)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %131

74:                                               ; preds = %66
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %77 = call i32 @iwl_mvm_add_snif_sta(%struct.iwl_mvm* %75, %struct.ieee80211_vif* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %131

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %89 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %88, i32 0, i32* null)
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %91 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %92 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %90, %struct.ieee80211_vif* %91, i32 0, i32* null)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %93
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* @IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD, align 4
  %109 = call i32 @fw_has_capa(i32* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %101
  %112 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 3, %115
  store i32 %116, i32* %13, align 4
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 2
  %126 = call i32 @iwl_mvm_protect_session(%struct.iwl_mvm* %117, %struct.ieee80211_vif* %118, i32 %119, i32 %120, i32 %125, i32 1)
  br label %127

127:                                              ; preds = %111, %101
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %129 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %128, i32 0, i32* null)
  br label %130

130:                                              ; preds = %127, %96, %93
  br label %137

131:                                              ; preds = %80, %73
  %132 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %133 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %134 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %132, %struct.ieee80211_vif* %133)
  %135 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %136 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %135)
  br label %137

137:                                              ; preds = %131, %130, %58, %49, %42
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %11, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %141, i32 0, i32 4
  store %struct.iwl_mvm_phy_ctxt* null, %struct.iwl_mvm_phy_ctxt** %142, align 8
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %12, align 4
  ret i32 %144
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_add_snif_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_protect_session(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
