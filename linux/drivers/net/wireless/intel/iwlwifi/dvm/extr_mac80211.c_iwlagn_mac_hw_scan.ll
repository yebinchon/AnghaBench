; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }
%struct.cfg80211_scan_request = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_priv = type { i64, i32, %struct.ieee80211_vif*, %struct.cfg80211_scan_request* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_SCAN_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"SCAN request during internal scan - defer\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @iwlagn_mac_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.cfg80211_scan_request*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_priv* %12, %struct.iwl_priv** %8, align 8
  %13 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %13, i32 0, i32 0
  store %struct.cfg80211_scan_request* %14, %struct.cfg80211_scan_request** %9, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %16 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %35 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 3
  store %struct.cfg80211_scan_request* %36, %struct.cfg80211_scan_request** %38, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %40, i32 0, i32 2
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %41, align 8
  store i32 0, i32* %10, align 4
  br label %68

42:                                               ; preds = %24
  %43 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 3
  store %struct.cfg80211_scan_request* %43, %struct.cfg80211_scan_request** %45, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 2
  store %struct.ieee80211_vif* %46, %struct.ieee80211_vif** %48, align 8
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %51 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %52 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %53 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iwl_scan_initiate(%struct.iwl_priv* %49, %struct.ieee80211_vif* %50, i64 %51, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %42
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 3
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %64, align 8
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %66 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %65, i32 0, i32 2
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %66, align 8
  br label %67

67:                                               ; preds = %62, %42
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %70 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_scan_initiate(%struct.iwl_priv*, %struct.ieee80211_vif*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
