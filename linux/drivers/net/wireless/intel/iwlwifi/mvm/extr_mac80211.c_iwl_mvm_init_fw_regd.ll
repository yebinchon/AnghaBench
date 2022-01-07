; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_init_fw_regd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_init_fw_regd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_regdomain = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_init_fw_regd(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ieee80211_regdomain* @rtnl_dereference(i32 %15)
  store %struct.ieee80211_regdomain* %16, %struct.ieee80211_regdomain** %8, align 8
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %18 = icmp ne %struct.ieee80211_regdomain* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = call i64 @iwl_mvm_is_wifi_mcc_supported(%struct.iwl_mvm* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %31 = call %struct.ieee80211_regdomain* @iwl_mvm_get_current_regdomain(%struct.iwl_mvm* %30, i32* null)
  store %struct.ieee80211_regdomain* %31, %struct.ieee80211_regdomain** %5, align 8
  %32 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %33 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %37 = call i32 @kfree(%struct.ieee80211_regdomain* %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call %struct.ieee80211_regdomain* @iwl_mvm_get_regdomain(%struct.TYPE_5__* %44, i32 %47, i32 %48, i32* %7)
  store %struct.ieee80211_regdomain* %49, %struct.ieee80211_regdomain** %5, align 8
  %50 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %51 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %72

56:                                               ; preds = %39
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %66 = call i32 @regulatory_set_wiphy_regd_sync_rtnl(%struct.TYPE_5__* %64, %struct.ieee80211_regdomain* %65)
  store i32 %66, i32* %6, align 4
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %70 = call i32 @kfree(%struct.ieee80211_regdomain* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %53, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ieee80211_regdomain* @rtnl_dereference(i32) #1

declare dso_local i64 @iwl_mvm_is_wifi_mcc_supported(%struct.iwl_mvm*) #1

declare dso_local %struct.ieee80211_regdomain* @iwl_mvm_get_current_regdomain(%struct.iwl_mvm*, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @iwl_mvm_get_regdomain(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @regulatory_set_wiphy_regd_sync_rtnl(%struct.TYPE_5__*, %struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
