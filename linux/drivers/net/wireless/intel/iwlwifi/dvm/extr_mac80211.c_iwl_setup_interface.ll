; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwl_setup_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwl_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_rxon_context = type { i32, i32, i32*, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64, i32, i32* }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwl_setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_setup_interface(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %9 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %9, i32 0, i32 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %6, align 8
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 3
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %23 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %24 = call i32 @iwl_set_mode(%struct.iwl_priv* %22, %struct.iwl_rxon_context* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %2
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 4
  %61 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %62 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %53, %44, %37
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %93 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %101

97:                                               ; preds = %85
  %98 = load i32, i32* @IEEE80211_INVAL_HW_QUEUE, align 4
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_set_mode(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
